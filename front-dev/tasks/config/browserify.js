module.exports = function (grunt){
  grunt.config.set('browserify', {
    dev: {
     options: {
       transform: [["babelify", { "stage": 0 }]]
     },
     files: [{
       expand: true,
       cwd: 'front-dev/app/scripts/',
       src: '**/*.js',
       dest:'front-dev/dev/scripts/' ,
       ext: '.js'
     }]
    },
    prod : {
      options: {
        transform: ["debowerify"]
      },
      files: [{
        expand: true,
        cwd: 'front-dev/dev/scripts/',
        src: '**/*.js',
        dest:'front-dev/prod/scripts/' ,
        ext: '.js'
      }]
    }
  });

  grunt.loadNpmTasks('grunt-browserify');

};
