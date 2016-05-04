find /var/lib/puppet/clientbucket -cmin -60 -type f -name path|xargs grep -l /etc/apache2/ssl/mysite.com/chain.crt


puppet filebucket restore /etc/apache2/ssl/mysite.com/chain.crt d9f5cfff33cbfe87728b8e4a2869e7d9

puppet filebucket -l diff d9f5cfff33cbfe87728b8e4a2869e7d9 ed4eb114ab11b2985393138ee086454f

find /var/lib/puppet -name ff3ed62d4d59c1bbad3892b2bfaada6b -ls



info: FileBucket adding {md5}f9ba9c6c682bc72ee2b78155ef531c12
info: /File[/etc/apache2/ssl/mysite.com/site.key]: Filebucketed /etc/apache2/ssl/mysite.com/site.key to puppet with sum f9ba9c6c682bc72ee2b78155ef531c12
notice: /File[/etc/apache2/ssl/mysite.com/site.key]/content: content changed '{md5}f9ba9c6c682bc72ee2b78155ef531c12' to '{md5}003c28002f84363f18d0adabcb981a77'



info: FileBucket adding {md5}d9f5cfff33cbfe87728b8e4a2869e7d9
info: /File[/etc/apache2/ssl/mysite.com/chain.crt]: Filebucketed /etc/apache2/ssl/mysite.com/chain.crt to puppet with sum d9f5cfff33cbfe87728b8e4a2869e7d9
notice: /File[/etc/apache2/ssl/mysite.com/chain.crt]/content: content changed '{md5}d9f5cfff33cbfe87728b8e4a2869e7d9' to '{md5}ed4eb114ab11b2985393138ee086454f'


info: /File[/etc/apache2/ssl/mysite.com/site.crt]: Filebucketed /etc/apache2/ssl/mysite.com/site.crt to puppet with sum ff3ed62d4d59c1bbad3892b2bfaada6b
notice: /File[/etc/apache2/ssl/mysite.com/site.crt]/content: content changed '{md5}ff3ed62d4d59c1bbad3892b2bfaada6b' to '{md5}a25f95a0f7e7925cdf1933577b15958c'
info: FileBucket adding {md5}97a1328eb7258f59a9933ff932efe37c
