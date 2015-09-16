module.exports = function (grunt) {
  grunt.config.set('watch', {
    styles: {
      files: ['front-dev/app/**/**/*.styl'],
      tasks: ['stylus:dev']
    },
    html: {
      files: ['front-dev/app/**/**/*.jade'],
      tasks: ['jade']
    },
    js: {
      files: ['front-dev/app/**/**/*.js'],
      tasks: ['browserify:dev']
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
};
