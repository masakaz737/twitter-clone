module StatesHelper
  def choose_new_or_failure
    if action_name == 'new' || action_name == 'confirm'
      confirm_states_path
    elsif action_name == 'edit'
      state_path
    end
  end
end
