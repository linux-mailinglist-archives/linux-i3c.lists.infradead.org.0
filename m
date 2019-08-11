Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F9E89862
	for <lists+linux-i3c@lfdr.de>; Mon, 12 Aug 2019 10:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mJJFfaPWUXZ5n5Bbki61+Ji/ztoLC+xfv+6PTXe8I4U=; b=JWV
	OWzQYRVYq3qyozlKFofe08OmaPg8sQgHm6qlEKkU9sOImAN9fj0UTQVFcGP01IcX5xn63WVFe5BP0
	m1peQt3nWecVVUI5v+3wsLuy0azSzgCOxbEhLZz+aBiwj1ZE9/C2rtuRVz1FSiOKta3rbJC1aAbdC
	sX1YNiPSi12IUM4RAHcVg/Me5edLIRBIlzMU+Cr3b4PInqJipFyYbe1pSFURGi14RF+Pv9R268YdG
	6/10pxsmVtDOG2ckegSstgGL9WsQCTfaexQxjGSNpDKk5xPdjbGwPgbYmJSmmBghYbkOk9ec8T/fQ
	K2aGOERtRdZulkNTTm87V2Uu+8A/ClQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5JT-0000Yi-1s
	for lists+linux-i3c@lfdr.de; Mon, 12 Aug 2019 08:04:19 +0000
Received: from mail-yb1-f193.google.com ([209.85.219.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwsed-0003eA-29
 for linux-i3c@lists.infradead.org; Sun, 11 Aug 2019 18:33:20 +0000
Received: by mail-yb1-f193.google.com with SMTP id x10so388028ybs.13
 for <linux-i3c@lists.infradead.org>; Sun, 11 Aug 2019 11:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ch+rXpu4FEjXRcLVZJZ1wzxNcCLlNLjg4OF4veGTZaE=;
 b=J6rokrs2ZVbAvsVfT77R6jObftTTVC9c7f2wimW1+WdZONe7Vyn0iDqL7B6d9q3PJq
 QG0y8mGYcrdlOkhOfrph7nbfmn0qyJ5VdDuj06FfDI2z+lyVt1mLZ32H20FLVChWUoCM
 uOdV1TmA4JyEo9iVkWsX2w6iuxwrJhKOf1VWAwoIKkRnR41RzsOcukOtq47FPFC1UYSq
 9RioNlmy9m0jbd5hb4B8QOiGDDJ0PSL8kLb3C9QYPSUOUm8qQkWrX9xGD/b8Ykd/nhBg
 6ZF/GISSJF2ro5T24kF4cya/SJXZtwCKlvgEfEfQ2/yTl+Ngbgqz/4drrSIBeEmOR4cr
 rY5A==
X-Gm-Message-State: APjAAAWLpFQhkrV8UG7STfgkB9Sf6J67CgOKwKbfnElaPsQGGj08X/eg
 BxGahW2p6/+m3SzEh5wxsUE=
X-Google-Smtp-Source: APXvYqyn//AFRNoWF1IJQh7tPm29GkwK4Jn+wbaWQaVwzSix5jqDcgDb8XYCLTcrCCIrsw3gqBsyMw==
X-Received: by 2002:a25:9d09:: with SMTP id i9mr21373793ybp.103.1565548394282; 
 Sun, 11 Aug 2019 11:33:14 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id v203sm23315484ywa.99.2019.08.11.11.33.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 11 Aug 2019 11:33:13 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] i3c: master: fix a memory leak bug
Date: Sun, 11 Aug 2019 13:33:06 -0500
Message-Id: <1565548386-4485-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_113319_104557_8C5467C4 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Mailman-Approved-At: Mon, 12 Aug 2019 01:04:18 -0700
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
Cc: "open list:I3C SUBSYSTEM" <linux-i3c@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 Boris Brezillon <bbrezillon@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

In i3c_master_getmwl_locked(), the buffer used for the dest payload data is
allocated using kzalloc() in i3c_ccc_cmd_dest_init(). Later on, the length
of the dest payload data is checked against 'sizeof(*mwl)'. If they are not
equal, -EIO is returned to indicate the error. However, the allocated
buffer is not deallocated on this path, leading to a memory leak.

To fix the above issue, free the buffer before returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/i3c/master.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index d6f8b03..562f69f 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -1084,8 +1084,10 @@ static int i3c_master_getmwl_locked(struct i3c_master_controller *master,
 	if (ret)
 		goto out;
 
-	if (dest.payload.len != sizeof(*mwl))
-		return -EIO;
+	if (dest.payload.len != sizeof(*mwl)) {
+		ret = -EIO;
+		goto out;
+	}
 
 	info->max_write_len = be16_to_cpu(mwl->len);
 
-- 
2.7.4


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
