Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EBA1949D9
	for <lists+linux-i3c@lfdr.de>; Thu, 26 Mar 2020 22:10:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1yiIIAHiQ+SqxCYz0W7tlbxVl6giYQeN979YYWESKV0=; b=CNhaA32NZritjp
	/kpfjDh5GeM39ZUfA0+OCJpjQYmMab1WP1075Mx3C8rgyZQrE9e/s5p727KbgS4rv3gZiCRvrujue
	webc09uJnL3buXS+nVOFlVJiQqnWupAEJe0ceSglL2W/sl8sCHR5HihMwZhf5nTbTjpwtRysmQqqp
	kBscFUTybnmNU5gjs7UPDI4uGR3FSar641ZZ9hCWMp3LaAjWODRs5OPWKM6OssvwBwBA/SUvgr79u
	iyKn6kxRyZtkFSTM5ZwNNi/DEJv1SNPqVzqGa4dceClSDKgCwLq2oF3Cp9/kEQJK4mt61h7V+jGUj
	O9b/7aHRkmV/ZMlV6SXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZlT-0000j5-2Z
	for lists+linux-i3c@lfdr.de; Thu, 26 Mar 2020 21:10:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZlQ-0008Bd-BT
 for linux-i3c@lists.infradead.org; Thu, 26 Mar 2020 21:10:10 +0000
Received: from localhost (p54B3331F.dip0.t-ipconnect.de [84.179.51.31])
 by pokefinder.org (Postfix) with ESMTPSA id 198502C1F8B;
 Thu, 26 Mar 2020 22:10:03 +0100 (CET)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 0/1] i3c: convert to use new I2C API
Date: Thu, 26 Mar 2020 22:10:01 +0100
Message-Id: <20200326211002.13241-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_141008_545500_CAC66F07 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

We are deprecating calls which return NULL in favor of new variants which
return an ERR_PTR. Only build tested.


Wolfram Sang (1):
  i3c: convert to use i2c_new_client_device()

 drivers/i3c/master.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
