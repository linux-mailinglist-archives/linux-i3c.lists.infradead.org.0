Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB35412E60C
	for <lists+linux-i3c@lfdr.de>; Thu,  2 Jan 2020 13:26:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ANpZ2N/Zzv8SD/E3Cee+xCYvWfXQwMaUyqGY6NdZQtY=; b=hb1
	Z2CywAV9eR/ZqTn0a8b3uFBo/KNrV26IiNQA9SDDjXkc/J6LFd48EUWfFdyxT69ycpSpOFkJKp7pE
	ZK09CDO1tPMXW2l280zR9DykOGxlhQPBHENIF/tnyFrfJWznNfD2H3Us2f/0AmyKGtvk7WahOgkQB
	uSu8DveyA4qx2SpzzWh5zR6INeyrnOFUQgB8dkkTJuHi5PX2WGQhalblunxgeg4V+08oAOu+wci/d
	K6ldn3UqQM5WWszuhOksnrsJamYNHOYKQ2MurCJtd4E431MxEW5M1KwMz+813XGRHQVX2mzbBLyeE
	jZ7Tg+hsl1rmcXfGbdITz4/DOMAHTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imzYN-0001LP-L4
	for lists+linux-i3c@lfdr.de; Thu, 02 Jan 2020 12:26:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilHE5-00054r-44
 for linux-i3c@lists.infradead.org; Sat, 28 Dec 2019 18:54:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id 6so16076299pgk.0
 for <linux-i3c@lists.infradead.org>; Sat, 28 Dec 2019 10:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=588nZdPWSQouHjrbTQFmmqqGhpH/jdEr/402TOJdIJc=;
 b=KzU+fMIscpUWow82dmtcE1NqW4BtUv9qlJ/V66IIlkZOW1slFsk8PIok3Yt6Y1Xohd
 O7rBugj37TUVCItVg94RKD7rHZNospOTzMhKAcuEKkwZetrwVTxS1TAf4zTj9ec0wxZ4
 hn2kYpoHyoLA3YvCETC8a3ghKsA4SWv5bCq3lU1ZggIf1PKZVO9iMqZP2XXMa6rxemHB
 lRUsNUPtrn4bWrL3RwTAev+KCtNaKRPR7RriLMkRIJqs1AGBj5ZWhveSLBPCT2k28NKF
 60vsaswEps2QEApSLKcau8AyvC6kp4uWs1QxSu8j370Fz0BlLRes/qnOZC4QIxN6k1r0
 05Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=588nZdPWSQouHjrbTQFmmqqGhpH/jdEr/402TOJdIJc=;
 b=JdkkGknob8pYjB9p25Uihvk14gY7g9kTC6pXHp0bXDOT41e2JKO1iIzNZ2Dm2TMk5L
 /I4TWj/nmNcL1Dye2/s7JN6EtzZIQf/kkUf5OsMSwSwJ1GJ+eBNEaFeHHyO2EI0LfhAv
 ZBKWH7yyHTZxpWz5Ts5XBBO7A1plbELVSITUMu3dxQSRkCwIWJtYap7KkxRcU6Ak2zFt
 FYXGt0DCIAoFpy3/sUP1HR7ZjpuJK+IWYShJy1fe1imT/EBj28tn3YJnG4yVCO1560KR
 5v/p3mtraZN/PbB4vjjOR5gJOMpByixyTFVJyX8dscwIg3wyYS26Oud0dmhrqjp4LY2b
 a46Q==
X-Gm-Message-State: APjAAAXH3zgpQCLaG3wc0NuxQ93dTHdMXZ/9dK6A5DXTm5u5oOLkAElj
 VuNySibRZkopMLtwEIb5wyk=
X-Google-Smtp-Source: APXvYqyMHrB05SJ3/Gp0VgA5qfEvy9nXYHMD8qUa30Vtq3e4UjI6m5ninFt+t5uVVWIN4TnGLFJqyQ==
X-Received: by 2002:a62:4d87:: with SMTP id
 a129mr61018157pfb.116.1577559251648; 
 Sat, 28 Dec 2019 10:54:11 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id j125sm44497385pfg.160.2019.12.28.10.54.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 10:54:11 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: vitor.soares@synopsys.com,
	bbrezillon@kernel.org,
	pgaj@cadence.com
Subject: [PATCH 1/2] i3c: dw: convert to devm_platform_ioremap_resource
Date: Sat, 28 Dec 2019 18:54:05 +0000
Message-Id: <20191228185406.26551-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_105413_157252_9180FB13 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Mailman-Approved-At: Thu, 02 Jan 2020 04:26:14 -0800
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-i3c@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify code.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/i3c/master/dw-i3c-master.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/i3c/master/dw-i3c-master.c b/drivers/i3c/master/dw-i3c-master.c
index b0ff0e12d84c..7b941e93337f 100644
--- a/drivers/i3c/master/dw-i3c-master.c
+++ b/drivers/i3c/master/dw-i3c-master.c
@@ -1100,15 +1100,13 @@ static const struct i3c_master_controller_ops dw_mipi_i3c_ops = {
 static int dw_i3c_probe(struct platform_device *pdev)
 {
 	struct dw_i3c_master *master;
-	struct resource *res;
 	int ret, irq;
 
 	master = devm_kzalloc(&pdev->dev, sizeof(*master), GFP_KERNEL);
 	if (!master)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	master->regs = devm_ioremap_resource(&pdev->dev, res);
+	master->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(master->regs))
 		return PTR_ERR(master->regs);
 
-- 
2.17.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
