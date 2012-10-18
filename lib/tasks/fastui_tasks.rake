# encoding: utf-8
#desc "Explaining what the task does"
namespace :fastui do
  namespace :init do
    desc "the window data."
    task :load_window => :environment do
      w = Fastui::MWindow.create(:title => 'FastUI')

      t1 = w.m_tabs.create(:title => '窗口')
      t1.m_fields.create(:title => '标题')

      t2 = w.m_tabs.create(:title => '标签')
      t2.m_fields.create(:title => '标题')

      t3 = w.m_tabs.create(:title => '字段')
    end
  end
end
