module.exports = function(grunt) {
  grunt.registerTask('compileAssets',[
    'clean:dev',
    'browserify:dev',
    'copy'
  ]);
};
