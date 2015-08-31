module.exports = function (grunt) {
  grunt.config.set('clean', {
    dev: ['front-dev/dev',
          'app/assets/javascripts/dev',
          'app/assets/images/**/*.jpg',
          'app/assets/images/**/*.png',
          'app/assets/images/**/*.gif',
          'app/assets/images/**/*.ico',
        ],
    prod : ['front-dev/prod', 'app/assets/javascripts/prod']
  });

  grunt.loadNpmTasks('grunt-contrib-clean');

};
