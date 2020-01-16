class ElasticsearchWorker
  include Sidekiq::Worker

  def perform(id, klass)
    begin
      object = klass.constantize.find(id.to_s).reindex
    rescue => e
      Rails.logger '-------------Exception---------------------'
      Rails.logger "-------------#{e.message}------------------"
      Rails.logger '-------------------------------------------'
    end
  end
end