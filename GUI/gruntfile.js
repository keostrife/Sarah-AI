module.exports = function(grunt) {
  require("load-grunt-tasks")(grunt);

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        compress: {
          //drop_console: true
        }
      },
      js: {
        files: [{
          src: 'site/assets/js/main.min.js',
          dest: 'site/assets/js/main.min.js'
        }]
      }
    },
    concat: {
      options: {
        // define a string to put between each file in the concatenated output
        separator: ';'
      },
      dist: {
        // the files to concatenate
        src: ['site/assets/js_import/**/*.js'],
        // the location of the resulting JS file
        dest: 'site/assets/js/main.min.js'
      }
    },
    less: {
      development: {
        options: {
          compress: true,
          yuicompress: true,
          optimization: 2
        },
        files: {
          "site/assets/css/main.css": "site/assets/less/main.less"
        }
      }
    },
    babel: {
      options: {
        sourceMap: true,
        presets: ['es2015']
      },
      dist: {
        files: {
          "site/assets/js/main.min.js": "site/assets/js/main.min.js"
        }
      }
    },
    watch: {
      js: {
        files: ['site/assets/js_import/**/*.js'],
        tasks: ['concat', 'babel', 'uglify'],
        options: {
          spawn: false,
        }
      },
      less: {
        files: ['site/assets/less/**/*.less'], // which files to watch
        tasks: ['less'],
        options: {
          spawn: false,
        }
      }
    },
  });

  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-concat');

  // Default task(s).
  grunt.registerTask('default', ['concat', 'babel', 'uglify', 'less', 'watch']);

};