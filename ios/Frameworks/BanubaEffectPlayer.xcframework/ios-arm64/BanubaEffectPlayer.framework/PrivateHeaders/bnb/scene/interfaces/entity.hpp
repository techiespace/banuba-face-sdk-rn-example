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
#include <vector>

namespace bnb { namespace interfaces {

class component;
class layer;
enum class component_type;

/**
 * A structure element of the scene.
 *
 * To construct a scene, you should form a hierarchy of entities to create its
 * structure, then add different components such as lights, cameras, and
 * geometry to entities to create visible content.
 *
 * Each entity has a name which could be used for finding the entity in a hierarchy.
 *
 * Entities in the scene form a tree hierarchy between parents and children.
 *
 * Each entity could be in an enabled or disabled state. The disabling of the entity
 * is equivalent to removing the entity and all its children from the hierarchy.
 *
 * An entity is a container for components. Each entity could contain several components,
 * but only one component of each component type. The Transform component is mandatory
 * and it implicitly placed in each entity.
 *
 */
class BNB_EXPORT entity {
public:
    virtual ~entity() {}

    static std::shared_ptr<entity> create(const std::string & name);

    /** Set a new name to the entity. Name could be empty. */
    virtual void set_name(const std::string & name) = 0;

    virtual std::string get_name() const = 0;

    virtual void add_child(const std::shared_ptr<entity> & child) = 0;

    virtual void remove_child(const std::shared_ptr<entity> & child) = 0;

    virtual std::vector<std::shared_ptr<entity>> get_children() const = 0;

    virtual void clear_children() = 0;

    /**
     * Perform depth-first traverse of entity tree.
     * Return first found child with name `entity_name` or NULL if such an entity doesn't exist.
     */
    virtual std::shared_ptr<entity> find_child_by_name(const std::string & entity_name) = 0;

    virtual std::shared_ptr<entity> get_parent() const = 0;

    virtual void set_active(bool active) = 0;

    virtual bool is_active() const = 0;

    virtual void add_into_layer(const std::shared_ptr<layer> & layer) = 0;

    virtual void remove_from_layer() = 0;

    virtual std::shared_ptr<layer> get_layer() const = 0;

    virtual void add_component(const std::shared_ptr<component> & component) = 0;

    virtual bool has_component(component_type type) = 0;

    virtual std::shared_ptr<component> get_component(component_type type) = 0;

    virtual void remove_component(const std::shared_ptr<component> & component) = 0;
};

} }  // namespace bnb::interfaces
/// @}

