module ImageUtils

  def fit_in_size(w, h)
    target_ratio = w.to_f/h

    manipulate! do |img|
      original_ratio = img[:width].to_f/img[:height]

      if original_ratio > target_ratio
        new_width = (img[:height].to_f * target_ratio).to_i
        diff = (img[:width] - new_width)/2
        img.crop "#{new_width}x#{img[:height]}+#{diff}+0"
      elsif original_ratio < target_ratio
        new_height = (img[:width].to_f / target_ratio).to_i
        diff = (img[:height] - new_height)/2
        img.crop "#{img[:width]}x#{new_height}+0+#{diff}"
      end

      img.resize "#{w}x#{h}"
      img = yield(img) if block_given?
      img
    end
  end

end
