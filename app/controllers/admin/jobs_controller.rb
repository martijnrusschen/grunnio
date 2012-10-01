class Admin::JobsController < Admin::ResourceController
  authorize_actions_for Job
end
