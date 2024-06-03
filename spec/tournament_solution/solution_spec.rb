# frozen_string_literal: true

require 'spec_helper'

RSpec.describe SportsManager::TournamentSolution::Solution do
  describe '#courts' do
    it 'returns all unique courts' do
      fixtures = [
        instance_double(SportsManager::TournamentSolution::Fixture, court: 0),
        instance_double(SportsManager::TournamentSolution::Fixture, court: 0),
        instance_double(SportsManager::TournamentSolution::Fixture, court: 1),
        instance_double(SportsManager::TournamentSolution::Fixture, court: 2)
      ]

      solution = described_class.new(fixtures)

      expect(solution.courts).to eq [0, 1, 2]
    end
  end

  describe '#categories' do
    it 'returns all unique categories' do
      fixtures = [
        instance_double(SportsManager::TournamentSolution::Fixture, category: :abc),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :abc),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :def),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :ghi)
      ]

      solution = described_class.new(fixtures)

      expect(solution.categories).to eq %i[abc def ghi]
    end
  end

  describe '#fixtures_dependencies_by_category' do
    it 'returns all fixtures and byes ordered by match_id' do
      fixture_class = SportsManager::TournamentSolution::Fixture
      bye_fixture_class = SportsManager::TournamentSolution::ByeFixture
      category = :mixed_single

      dependencies2, dependencies3, *dependencies4 = dependencies = [
        instance_double(bye_fixture_class, category: category, match_id: 1),
        instance_double(bye_fixture_class, category: category, match_id: 2),
        instance_double(bye_fixture_class, category: category, match_id: 3),
        instance_double(bye_fixture_class, category: category, match_id: 4)
      ]

      fixtures = [
        instance_double(fixture_class, category: category, match_id: 8, bye_dependencies: []),
        instance_double(fixture_class, category: category, match_id: 7, bye_dependencies: dependencies2),
        instance_double(fixture_class, category: category, match_id: 6, bye_dependencies: dependencies3),
        instance_double(fixture_class, category: category, match_id: 5, bye_dependencies: dependencies4)
      ]

      solution = described_class.new(fixtures)

      expect(solution.fixtures_dependencies_by_category).to eq({
        category => (dependencies | fixtures.reverse)
      })
    end
  end

  describe '#acronyms' do
    it 'returns categories acronyms' do
      fixtures = [
        instance_double(SportsManager::TournamentSolution::Fixture, category: :mixed_single),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :mixed_single),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :men_single),
        instance_double(SportsManager::TournamentSolution::Fixture, category: :women_double)
      ]

      solution = described_class.new(fixtures)

      expect(solution.acronyms).to eq({
        mixed_single: 'ms',
        men_single: 'mesi',
        women_double: 'wd'
      })
    end
  end
end