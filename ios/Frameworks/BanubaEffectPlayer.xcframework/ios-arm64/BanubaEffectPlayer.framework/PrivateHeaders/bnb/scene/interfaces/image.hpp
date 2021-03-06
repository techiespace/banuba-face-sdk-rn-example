/// \file
/// \addtogroup Scene
/// @{
///
// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from scene.djinni

#pragma once

#include <bnb/utils/defs.hpp>
#include <memory>
#include <string>

namespace bnb { namespace interfaces {

class attachment;
class cubemap;
class segmentation_mask;
class texture;
class video;
class weighted_lut;
enum class image_type;

class BNB_EXPORT image {
public:
    virtual ~image() {}

    virtual std::string get_name() const = 0;

    virtual image_type get_type() const = 0;

    virtual std::shared_ptr<attachment> as_attachment() = 0;

    virtual std::shared_ptr<cubemap> as_cubemap() = 0;

    virtual std::shared_ptr<segmentation_mask> as_segmentation_mask() = 0;

    virtual std::shared_ptr<texture> as_texture() = 0;

    virtual std::shared_ptr<video> as_video() = 0;

    virtual std::shared_ptr<weighted_lut> as_weighted_lut() = 0;

    virtual void reload() = 0;
};

} }  // namespace bnb::interfaces
/// @}

