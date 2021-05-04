import PropTypes from 'prop-types';
import { requireNativeComponent, ViewPropTypes } from 'react-native';
var viewProps = {
  name: 'BanubaTryOnView',
  propTypes: {
    productName: PropTypes.string,
    ...ViewPropTypes,
  },
};
module.exports = requireNativeComponent('BanubaTryOnView', viewProps);