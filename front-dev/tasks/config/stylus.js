module.exports = function(grunt){
  grunt.config.set('stylus', {
    dev: {
      files: [{
        expand: true,
        cwd: './front-dev/app/components',
        src: ['**/*.styl'],
        dest: 'app/assets/components',
        ext: '.css'
      }]
    },
    prod: {

    }
  });

  grunt.loadNpmTasks('grunt-contrib-stylus');

};
