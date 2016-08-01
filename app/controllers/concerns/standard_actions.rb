module StandardActions
  extend ActiveSupport::Concern

  PAGINATE_PER_PAGE = 30

  private
  def standard_index
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{objects_name}", klass.index)
  end

  def standard_show
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", klass.find(params[:id]))
  end

  def standard_new
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", klass.new)
  end

  def standard_create
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", obj = current_user.send("#{objects_name}").build(permit_params))
    if instance_variable_get(:"@#{object_name}").save
      redirect_to [ :admin, instance_variable_get(:"@#{object_name}") ]
    else
      render :new
    end
  end

  def standard_edit
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", klass.find(params[:id]))
  end

  def standard_update
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", obj = klass.find(params[:id]))
    if instance_variable_get(:"@#{object_name}").update_attributes(permit_params)
      redirect_to [ :admin, instance_variable_get(:"@#{object_name}") ]
    else
      render :edit
    end
  end

  def standard_destroy
    klass, object_name, objects_name = preparation
    instance_variable_set(:"@#{object_name}", klass.find(params[:id]))
    if instance_variable_get(:"@#{object_name}").destroy
      redirect_to action: :index
    else
      redirect_to :back
    end
  end

  private
  def preparation
    klass = controller_name.classify.constantize
    object_name = ActiveModel::Naming.singular(klass)
    objects_name = ActiveModel::Naming.plural(klass)
    return klass, object_name, objects_name
  end
end
