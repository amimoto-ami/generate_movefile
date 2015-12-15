# Generate Movefile

It generates [Wordmove's Movefile](https://github.com/welaika/wordmove) for AMIMOTO.

## What's AMIMOTO

[AMIMOTO is a High Performance WordPress Cloud Hosting on Amazon Web Services.](http://amimoto-ami.com/)

## How to use

SSH into your AMIMOTO.

```
$ ssh ec2-user@<ip-address>
```

Then run following and copy output.

```
$ curl -L https://raw.githubusercontent.com/amimoto-ami/generate_movefile/master/run.sh | bash
```

Finally, paste the output to the Movefile.
