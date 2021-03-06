# frozen_string_literal: true

class JsonbInput < Formtastic::Inputs::StringInput
end

class InetInput < Formtastic::Inputs::StringInput
end

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
      span class: 'blank_slate' do
      end
    end
  end
end
