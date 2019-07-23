Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB4A719BB
	for <lists+linux-i3c@lfdr.de>; Tue, 23 Jul 2019 15:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MCK6JZ3beT0/DshTRpt/MSOwvgyrbcXD6l+cZOvaPAA=; b=Tk+AV660OMw0Ep
	UqergBQpxupGZ1cNpahNoRw8rwC3ukwXOAC3CmGcPlMeLJKuIF5vRPspC3WUSZnoa9fsYwlE5LhMx
	S76AC2wutQRl4gbARlIcGx5cTe6tHhS0XXdaRKi0XO2U9ISK5iyGAl1UnOfJY/Ghk+u7X23FzdrMH
	1Audl2lqUjMOMdGx8EfMrkrTeJS3qNLlt7PJbmGP6LrWJR8ooyaHnn5k3fGVdWwchG3YhA7JwKne+
	uEVtispczM8KBfpgL5Bw8+ER93lRZr2W3GcA26JEt2l1f3Qm49tBH2Nq6xYe7AEnxYOA/Qz2Wne7r
	7BjCPzQlPuuNmp+p8L3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvCK-0003qS-FT
	for lists+linux-i3c@lfdr.de; Tue, 23 Jul 2019 13:51:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsAt-0005SK-Ov
 for linux-i3c@lists.infradead.org; Tue, 23 Jul 2019 10:37:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id i70so8484815pgd.4
 for <linux-i3c@lists.infradead.org>; Tue, 23 Jul 2019 03:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SmW++vi8XbmrvP4W5K45wzSOWLvhV3eF5rCrZbGA+OA=;
 b=DgpKbTgrwfjdT1ASYKLRWomCdZVCTKs5wSoiMxKaaj0Ufl/3UrPZPBv7XM6lMIqGT7
 Pgm9XsGMgPknIOAPNfIeKWdwiFHgDKt4gZL5PdYt0KckNpNpzdLlKeNYoQdJM5zoJ1bQ
 Bs9l9lXwCzl3AY5io88BzW/4p9L6Iivhu+j09W5Sw5F6XZfo4qEgJcbv+cIMl8XiG2nz
 tY4jJClyuOXtWpBq1VtufcQha2pYxbOWgWQxZ5uDumirfSHiz4XShl+i2bwNQtG9DOxf
 2jG4zY7ArPRSJUqJ8fDq/E1qHkrOUOYpuVW9X4nNzNNW+t1bNx/aNSaaOg8Gu9BiZRi6
 Zo5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SmW++vi8XbmrvP4W5K45wzSOWLvhV3eF5rCrZbGA+OA=;
 b=i842VLcrtauMmXOCddm8PQCuwSO2kJaqH3qngYQuB/zjbBvsBYiehMgATkXU+j0jRO
 nu1lmRrRstcI1OVDTD56FI/jU6jF/EiQc9PjkPw0o6SO9cSxwAvJFp1KXmgcr5ycMj/+
 JYbkjvANbAP/KjZbX4+zNTlpn4n4bAj16IeF9u5/C1Z5+4YEF/KxYOoGNNsfKVB4bHBn
 sS91iWJwqHz5bv/nWLzDMTgtxaJ0jv67b5mMIL7NGwXuUtZZgjdNDadG48CFIYRbnbKt
 MQ0PmwJ7+gn6aW8gEAP9/idwTLZJMnUmscu1Dclof+TygGO8ImLNTAoURB9V9sAAKLHD
 PUAg==
X-Gm-Message-State: APjAAAUp5dCx1DjZTCYWET5oNQub9d2C4cmDm+pe+mqcrKD768woePio
 QRUENlSmA3gylmGMjVgX8L80glNf
X-Google-Smtp-Source: APXvYqwooksmQVTumjwWz5BIYK3vA928M2yJteuvuXMntyZJUvdIoecExu7OkH7n24Hp2IPTuQ7KNg==
X-Received: by 2002:a62:1bca:: with SMTP id b193mr4956770pfb.57.1563878259141; 
 Tue, 23 Jul 2019 03:37:39 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id b16sm66796576pfo.54.2019.07.23.03.37.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 03:37:38 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: bbrezillon@kernel.org,
	linux-i3c@lists.infradead.org
Subject: [PATCH] i3c: master: Add of_node_put() before return
Date: Tue, 23 Jul 2019 16:07:25 +0530
Message-Id: <20190723103725.7950-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_033739_813684_84C785BD 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Mailman-Approved-At: Tue, 23 Jul 2019 06:51:18 -0700
X-BeenThere: linux-i3c@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux I3C <linux-i3c.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-i3c/>
List-Post: <mailto:linux-i3c@lists.infradead.org>
List-Help: <mailto:linux-i3c-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-i3c>,
 <mailto:linux-i3c-request@lists.infradead.org?subject=subscribe>
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Each iteration of for_each_available_childe_of_node puts the previous
node, but in the case of a return from the middle of the loop, there
is no put, thus causing a memory leak. Add an of_node_put before the
return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/i3c/master.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index d6f8b038a896..116d4e7ef25c 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -2093,8 +2093,10 @@ static int of_populate_i3c_bus(struct i3c_master_controller *master)
 
 	for_each_available_child_of_node(i3cbus_np, node) {
 		ret = of_i3c_master_add_dev(master, node);
-		if (ret)
+		if (ret) {
+			of_node_put(node);
 			return ret;
+		}
 	}
 
 	/*
-- 
2.19.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
