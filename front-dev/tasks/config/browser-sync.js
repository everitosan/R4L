module.exports = function (grunt) {
  grunt.config.set('browserSync',  {
    bsFiles: {
        src : [
          'app/views/**/*.html.erb',
          'app/assets/components/**/*.*'
        ]
    },
    options: {
        proxy : "localhost:3000",
        watchTask: true
    }
  });

  grunt.loadNpmTasks('grunt-browser-sync');

};
