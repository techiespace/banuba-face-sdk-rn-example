/// \file
/// \addtogroup EffectPlayer
/// @{
///
// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from effect_player.djinni

#pragma once

#include "bnb/spal/interfaces/frames_provider.hpp"
#include <bnb/utils/defs.hpp>
#include <memory>
#include <string>

namespace bnb { namespace interfaces {

class effect_player;

/** This class will mock data from default source to data from file. Used for testing and debug. */
class BNB_EXPORT push_frame_mocker {
public:
    virtual ~push_frame_mocker() {}

    /**
     * @param player effect player to which attach this provider.
     * @param provider provider to fetch frames from
     */
    static std::shared_ptr<push_frame_mocker> create(const std::shared_ptr<effect_player> & player, const std::shared_ptr<::bnb::interfaces::frames_provider> & provider);

    /**
     * Parse file and start pushing frame to Effect player.
     * @param outputFile path to file to write processed data in internal format.
     */
    virtual void process(const std::string & output_file) = 0;
};

} }  // namespace bnb::interfaces
/// @}
