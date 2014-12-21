
var exec = require('child_process').exec,
    path = require('path');
var should = require('chai').should();


describe('the cli', function() {
  it('should take piped input', function (done) {
    var cmd = [
      'cat', path.join(__dirname,'/cases/resize.css'),
      '| node', path.join(__dirname, '../cli.js')
    ].join(' ')
    exec(cmd,function(error, stdout, stderr) {
      var expected = '<input css 1>:2:3: CSS resize property not supported by: IE (8,9,10,11), Opera (12.1), iOS Safari (8,7.1,8.1), Opera Mini (8.0), Android Browser (4.1,4.3,4.4), IE Mobile (10,11), UC Browser for Android (9.9)';
      
      (''+stdout).should.be.equal(expected);
      done()
    });
  })
  
  it('should take filename as input', function (done) {
    var cmd = [
      'node', path.join(__dirname, '../cli.js'),
      path.join(__dirname,'/cases/resize.css')
    ].join(' ')
    exec(cmd,function(error, stdout, stderr) {
      stdout.should.be.equal('<input css 1>:2:3: CSS resize property not supported by: IE (8,9,10,11), Opera (12.1), iOS Safari (8,7.1,8.1), Opera Mini (8.0), Android Browser (4.1,4.3,4.4), IE Mobile (10,11), UC Browser for Android (9.9)')
      done()
    });
  })
  
  it('--json option should work', function (done) {
    var cmd = [
    'node', path.join(__dirname, '../cli.js'), '--json',
    path.join(__dirname,'/cases/resize.css')
    ].join(' ')
    exec(cmd,function(error, stdout, stderr) {
      console.log('CLI output:', stdout);
      JSON.parse(stdout).feature.should.be.equal('css-resize')
      done()
    });
  })
  
  it('--list-only should work', function (done) {
    var cmd = [
    'node', path.join(__dirname, '../cli.js'),
    '--list-only',
    '-b', '"IE >= 9"'
    ].join(' ')
    exec(cmd,function(error, stdout, stderr) {
      stdout.trim().should.be.equal('[doiuse] Browsers: IE 9, IE 11, IE 10');
      done()
    });
  })
  
})
