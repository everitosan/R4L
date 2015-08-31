module.exports = function (grunt) {
  grunt.config.set('copy', {
      images: {
        expand: true,
        cwd: 'front-dev/app/images',
        src: ['**/*.png', '**/*.gif', '**/*.jpg', '**/*.ico'],
        dest: 'app/assets/images'
      }
  });

  grunt.loadNpmTasks('grunt-contrib-copy');

};
