module.exports = function(grunt) {
  grunt.registerTask('compileAssets',[
    'clean:dev',
    'copy',
    'stylus:dev',
    'browserify:dev',
    'jade'
  ]);
};
