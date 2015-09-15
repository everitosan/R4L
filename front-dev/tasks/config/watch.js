module.exports = function (grunt) {
  grunt.config.set('watch', {
    assets: {
      files: ['front-dev/app/**/**/*.styl'],
      tasks: ['stylus:dev']
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
};
