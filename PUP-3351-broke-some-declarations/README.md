PUP-3351-broke-some-declarations
================================

See https://tickets.puppetlabs.com/browse/PUP-3622

I noticed a problem that has been caused by a change in 3.7.2, and I think it is PUP-3351.

What is in my environment:
 - Class one is a application, using Class two by include
 - Class two is the puppetlabs-apache
 - Class three is configuring defaults for two

The ENC is setting:

  classes:
    one:
    three:

Result is an error while compiling the catalog:

  Error: Duplicate declaration: Class[Two] is already declared; cannot redeclare at /.../three/manifests/init.pp:8 on node ceronia.lazyfrosch.de

You can find a ready to use test here:
https://github.com/lazyfrosch/puppet-tests/tree/master/PUP-3351-broke-some-declarations

Just invoke (noop, and just notices)
  ./apply.sh

