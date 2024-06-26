# frozen_string_literal: true

require 'csp-resolver'
require 'forwardable'
require 'ostruct'
require_relative 'sports_manager/version'
require_relative 'sports_manager/helper'
require_relative 'sports_manager/team'
require_relative 'sports_manager/single_team'
require_relative 'sports_manager/double_team'
require_relative 'sports_manager/json_helper'
require_relative 'sports_manager/matches/algorithms/single_elimination_algorithm'
require_relative 'sports_manager/algorithms/ordering/multiple_matches_participant'
require_relative 'sports_manager/algorithms/filtering/no_overlap'
require_relative 'sports_manager/constraints/all_different_constraint'
require_relative 'sports_manager/constraints/no_overlapping_constraint'
require_relative 'sports_manager/constraints/match_constraint'
require_relative 'sports_manager/constraints/multi_category_constraint'
require_relative 'sports_manager/constraints/next_round_constraint'
require_relative 'sports_manager/tournament_problem_builder'
require_relative 'sports_manager/tournament_solution'
require_relative 'sports_manager/participant'
require_relative 'sports_manager/solution_drawer'
require_relative 'sports_manager/matches_generator'
require_relative 'sports_manager/tournament_builder'
require_relative 'sports_manager/constraint_builder'
require_relative 'sports_manager/tournament_solution/bye_fixture'
require_relative 'sports_manager/tournament_solution/fixture'
require_relative 'sports_manager/tournament_solution/solution'
require_relative 'sports_manager/tournament_solution/serializer'
require_relative 'sports_manager/solution_drawer/cli'
require_relative 'sports_manager/tournament'
require_relative 'sports_manager/tournament_day'
require_relative 'sports_manager/tournament/setting'
require_relative 'sports_manager/group_builder'
require_relative 'sports_manager/match'
require_relative 'sports_manager/matches/next_round'
require_relative 'sports_manager/group'
require_relative 'sports_manager/solution_drawer/cli/solution_table'
require_relative 'sports_manager/tournament_day/validator'
require_relative 'sports_manager/timeslot_builder'
require_relative 'sports_manager/timeslot'
require_relative 'sports_manager/bye_match'
require_relative 'sports_manager/nil_team'
require_relative 'sports_manager/match_builder'
require_relative 'sports_manager/team_builder'
require_relative 'sports_manager/solution_drawer/cli/table'
require_relative 'sports_manager/tournament_generator'
require_relative 'sports_manager/solution_drawer/mermaid/gantt'
require_relative 'sports_manager/solution_drawer/mermaid/graph'
require_relative 'sports_manager/solution_drawer/mermaid/node'
require_relative 'sports_manager/solution_drawer/mermaid/node_style'
require_relative 'sports_manager/solution_drawer/mermaid/bye_node'
require_relative 'sports_manager/solution_drawer/mermaid/solution_graph'
require_relative 'sports_manager/solution_drawer/mermaid/solution_gantt'
require_relative 'sports_manager/solution_drawer/mermaid'

module SportsManager
end
