module.exports = function (grunt) {
  grunt.config.set('copy', {
      dev: {
        files: [{ //images
            expand: true,
            cwd: 'front-dev/app/images',
            src: ['**/*.png', '**/*.gif', '**/*.jpg', '**/*.ico'],
            dest: 'app/assets/images'
          }, { //Polymer
            expand: true,
            cwd: 'front-dev/app/components',
            src: ['*'],
            dest: 'app/assets/components'
          }
        ]
      }

  });

  grunt.loadNpmTasks('grunt-contrib-copy');

};
