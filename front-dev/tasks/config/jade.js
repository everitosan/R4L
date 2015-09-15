module.exports = function (grunt) {

  grunt.config.set('jade', {
      compile: {
        files: [{
          expand: true,
  				cwd: './front-dev/app/components',
  				src: ['**/*.jade'],
  				dest: 'app/assets/components',
  				ext: '.html'
        }]
      }
  });

  grunt.loadNpmTasks('grunt-contrib-jade');
};
