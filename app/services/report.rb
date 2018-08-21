
class Report

  attr_reader :report

  def initialize
    @report = "Report"
  end

  def todo_tasks
    report << " \n Tasks not started "
    Task.where(status:'Not started').each do |task|
      report << " \n ID: #{task.id} Name: #{task.name} "
    end
  end

  def pending_tasks
    report << " \n Tasks in progress"
    Task.where(status:'In proggress').each do |task|
      report << " \n ID: #{task.id} Name: #{task.name} "
    end 
  end

  def done_tasks
    report << "\n Done Tasks"
    Task.where(status:'Ended').each do |task|
      report << " \nID: #{task.id} Name: #{task.name} "
    end
  end

  def create_report
    todo_tasks
    pending_tasks
    done_tasks
  end

  def send_notification
    notifier = Slack::Notifier.new 'https://hooks.slack.com/services/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'do 
    defaults channel: '@darius.otelea', username: 'Darius Otelea'
    end
    notifier.ping report
  end

  def notify_on_slack  
    create_report
    send_notification
  end
end