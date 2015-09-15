module.exports = function (grunt) {
  grunt.config.set('copy', {
      dev: {
        files: [{ //images
            expand: true,
            cwd: 'front-dev/app/images',
            src: ['**/*.png', '**/*.gif', '**/*.jpg', '**/*.ico'],
            dest: 'app/assets/images'
          }, { //Javascripts
            expand: true,
            cwd: 'front-dev/app/dev',
            src: ['*'],
            dest: 'app/assets/javascripts'
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
