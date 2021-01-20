class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :full_name

  def full_name
  	"#{object.name} samules"
  end
end

# # class CategorySerializer < ActiveModel::Serializer
#   def attributes(*args)
#     data = super
#     data[:id] = object.id
#     data[:name] = object.name
#     #data[:parent_name] = object.parent.name
#     data[:products] =  ActiveModel::Serializer::CollectionSerializer.new(object.products.where(business: self.instance_options[:serializer_options][:business]), each_serializer: ProductSerializer)
#     data
#   end
# # end