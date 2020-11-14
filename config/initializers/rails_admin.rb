RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  config.excluded_models = [Admin]

  config.model 'ActiveStorage::Attachments' do
    visible false
  end

  config.model 'ActiveStorage::Blob' do
    visible false
  end

  config.model 'Product' do
    create do
      configure :slug do
        visible false
      end
      configure :image do
        visible false
      end
      configure :image_url do
        visible false
      end
    end

    edit do
      configure :slug do
        visible false
      end
      configure :image_url do
        visible false
      end
    end
  end

  config.model 'Category' do
    create do
      configure :slug do
        visible false
      end
      configure :image do
        visible false
      end
    end

    edit do
      configure :slug do
        visible false
      end
      configure :image do
        visible false
      end
    end
  end
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
