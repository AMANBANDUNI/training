class ImageValidator < ActiveModel::Validator
  def validate(record)
    if record.image_url == "evil.jpg"
      # record.errors.add :image_url, "image name cant be evil.jpg"
      record.errors.add(:base, 'image name cant be evil.jpg')
    end
  end
end




