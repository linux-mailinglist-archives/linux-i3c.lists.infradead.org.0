Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F071BF1AE
	for <lists+linux-i3c@lfdr.de>; Thu, 30 Apr 2020 09:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwC3Mq3fbgjNobvps8NxTBVrYYn+iKrMG/glbWHI42U=; b=e1Bo3nOY973unW
	pIvmVRsPer8ZI/u2SU+Ef2LQS5kLje9VTKXaKBcSibbRwN8Dn3JwpyZXTxfoj+7tTJUcNZGeSbLT2
	X71adzNUDaenrix86yBrpUYf0PDEu6mF9+aJfz9WYxhHvqCUYwbdtQuty0LAJa/YFLDbFEBJ1dmc7
	jUoR+JJ0FU77JTHqQOkBjYC2O4qJOviADijShD6hLAKKiU/nJfuxUsB8b1FLBOk6lltKLf49H88Uj
	Vdt99T0t09TzaMz89jfPCVuHEfx1Y4/6SeDiYGZguN7npvFrQkKZ1xNzZh7zAloYpbpPOQiLFyHth
	HQ+6tP2HNvS43ylmoqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3oT-0008Su-I7
	for lists+linux-i3c@lfdr.de; Thu, 30 Apr 2020 07:40:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3oQ-0008Rz-Iw
 for linux-i3c@lists.infradead.org; Thu, 30 Apr 2020 07:40:52 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B8C552A2310;
 Thu, 30 Apr 2020 08:40:48 +0100 (BST)
Date: Thu, 30 Apr 2020 09:40:45 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Parshuram Thombare <pthombar@cadence.com>
Subject: Re: [PATCH v6 1/8] i3c: master: mastership handover document
Message-ID: <20200430094045.2938e228@collabora.com>
In-Reply-To: <1587140442-29932-1-git-send-email-pthombar@cadence.com>
References: <1587140398-29473-1-git-send-email-pthombar@cadence.com>
 <1587140442-29932-1-git-send-email-pthombar@cadence.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_004050_889558_7DE5F80E 
X-CRM114-Status: GOOD (  22.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mparab@cadence.com, bbrezillon@kernel.org, praneeth@ti.com,
 linux-kernel@vger.kernel.org, vitor.soares@synopsys.com, pgaj@cadence.com,
 linux-i3c@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 18:20:42 +0200
Parshuram Thombare <pthombar@cadence.com> wrote:

> Flow diagram for I3C mastership handover, DEFSLVS
> processing and secondary master initialization.
> 

Thanks for doing that, that's really appreciated, but the document
doesn't seem to be formatted properly. Would you mind fixing that (you
can build the docs with 'make htmldocs').

> Signed-off-by: Parshuram Thombare <pthombar@cadence.com>
> ---
>  Documentation/driver-api/i3c/index.rst        |   1 +
>  .../i3c/mastership-handover-flow-diagram.rst  | 209 ++++++++++++++++++
>  2 files changed, 210 insertions(+)
>  create mode 100644 Documentation/driver-api/i3c/mastership-handover-flow-diagram.rst
> 
> diff --git a/Documentation/driver-api/i3c/index.rst b/Documentation/driver-api/i3c/index.rst
> index 783d6dad054b..9a38c5ba87cb 100644
> --- a/Documentation/driver-api/i3c/index.rst
> +++ b/Documentation/driver-api/i3c/index.rst
> @@ -9,3 +9,4 @@ I3C subsystem
>     protocol
>     device-driver-api
>     master-driver-api
> +   mastership-handover-flow-diagram
> diff --git a/Documentation/driver-api/i3c/mastership-handover-flow-diagram.rst b/Documentation/driver-api/i3c/mastership-handover-flow-diagram.rst
> new file mode 100644
> index 000000000000..04cd9f1283e0
> --- /dev/null
> +++ b/Documentation/driver-api/i3c/mastership-handover-flow-diagram.rst
> @@ -0,0 +1,209 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +============================
> +I3C mastership handover flow
> +============================
> +
> +Main master		Sec Master1		Sec Master 2
> +
> +1. Initialize I3C	1. Initialize I3C	1. Initialize I3C
> +   bus in Pure mode	   bus in Pure mode	   bus in Pure mode
> +
> +defslvs_done flag	defslvs_done flag	defslvs_done flag
> +    = true			= false		= false
> +
> +2. Do DAA + SETDASA	2. Spawn init. thread	2. Spawn init. thread
> +			Initialization thread	Initialization thread
> +			Wait for DEFSLVS	Wait for DEFSLVS
> +			processing		processing
> +			Wait for		Wait for
> +			defslvs_done flag	defslvs_done flag
> +				= true		= true
> +
> +3. Send DEFSLVS		DEFSLVS ISR		DEFSLVS ISR
> +			Set flag to indicate	Set flag to indicate
> +			DEFSLVS	processing is	DEFSLVS	processing is
> +			pending			pending
> +			defslvs_done flag	defslvs_done flag
> +				= false			= false
> +
> +			Defer DEFSLVS		Defer DEFSLVS
> +			processing to bottom	processing to bottom
> +			half			half
> +
> +
> +			DEFSLVS bottom half	DEFSLVS bottom half
> +			Try to acquire bus	Try to acquire bus
> +			i3c_master_acquire_bus	i3c_master_acquire_bus
> +
> +
> +			i3c_sec_mst_acquire_bus i3c_sec_mst_acquire_bus
> +			state machine
> +			1. Wait until DA is
> +			   assigned
> +
> +4. Register all
> +   slaves and
> +   master devive
> +
> +5. Program bus mode
> +   as per board
> +   info (DTS)
> +
> +6. Send ENEC MR,
> +   HJ, SIR CCC
> +   Initialization
> +   complete
> +
> +			2. Check if DISEC MR	2. Check if DISEC MR
> +			   is received		   is received
> +			   If not, initiate	   If not, initiate
> +			   MR request		   MR request
> +
> +
> +		Sec master with highest priority (lowest address) get
> +		mastership. Some controllers may not have way of knowing
> +		if mastership is granted and can keep waiting for
> +		GETACCMST.To avoid this, on reception of MR request
> +		from highest priority secondary master, current master
> +		send DISEC MR, HJ events to remaining master devices.
> +
> +MR request ISR
> +1. Disable IBI
> +   in controller
> +
> +MR request
> +bottom half
> +1. Send DISEC
> +   MR, HJ
> +   to all but
> +   master device
> +   to which MR
> +   is granted
> +						3. Received DISEC MR
> +						   Go back to WAIT
> +						   DA state
> +
> +						1. Wait until DA
> +						   is assigned
> +						2. Check if DISEC MR
> +						   is received
> +						   Wait until ENEC MR
> +						   is received before
> +						   sending next MR request
> +
> +2. Send GETACCMST
> +   to secondary		3. Wait for MR DONE
> +   master to which
> +   mastership is to
> +   be granted
> +			4. MR granted
> +			5. Update
> +			   current_master
> +
> +
> +			DEFSLVS bottom half
> +			continue...
> +			Controller driver read
> +			out DEFSLVS data in
> +			defslvs_data structure
> +
> +			Call
> +			i3c_master_process_defslvs
> +			until it is processed
> +			successfully. And set
> +			defslvs_done flag = true.
> +
> +			i3c_master_process_defslvs
> +			1. Bus init to correct
> +			   mode based on
> +			   defslvs data
> +			2. Register I2C devices
> +			   from defslvs_data
> +			   Since I3C devices are not
> +			   hot pluggable this is
> +			   done only once
> +			3. Register all I3C devices
> +			   from defslvs_data, make
> +			   sure if device is already
> +			   registered, i3cdev and
> +			   IBI data is retained
> +			   i3cdev is the link between
> +			   I3C driver and I3C subsystem
> +			4. Delete I3C device from
> +			   older device list which are
> +			   not found in defslvs_data
> +			   (Unplugged ?)
> +
> +			Initialization thread
> +			continue...
> +			3. Register master device,
> +			   and I3C/I2C device created
> +			   based on defslvs_data
> +			4. Enable controller IBI
> +			5. Send ENEC MR, HJ
> +			   Initialization complete
> +							3. Initiate MR request
> +
> +
> +			MR request ISR
> +			Disable IBI in controller
> +
> +			MR request bottom half
> +			Send DISEC MR, HJ to
> +			other master devices
> +
> +			Send GETACCMST to secondary	4. Wait for MR DONE
> +			master to which mastership
> +			is to be granted
> +
> +							5. MR granted
> +							6. Update
> +							   current_master
> +
> +
> +							DEFSLVS bottom half
> +							continue...
> +							Controller driver read
> +							out DEFSLVS data in
> +							defslvs_data structure
> +
> +							Call
> +							i3c_master_process_defslvs
> +							until it is processed
> +							successfully. And set
> +							defslvs_done flag = true
> +
> +							i3c_master_process_defslvs
> +							1. Bus init to correct
> +							   mode based on
> +							   defslvs data
> +							2. Register I2C devices
> +							   from defslvs_data
> +							   Since I3C devices are
> +							   not hot pluggable
> +							   this is done only once
> +							3. Register all I3C devices
> +							   from defslvs_data, make
> +							   sure if device is
> +							   already registered,
> +							   i3cdev and IBI data is
> +							   retained
> +							   i3cdev is the link
> +							   between I3C driver and
> +							   I3C subsystem
> +							4. Delete I3C device from
> +							   older device list which
> +							   are not found in
> +							   defslvs_data
> +							   (Unplugged ?)
> +
> +							Initialization thread
> +							continue...
> +							3. Register master
> +							   device, and I3C/I2C
> +							   device created
> +							   based on defslvs_data
> +							4. Enable controller IBI
> +							5. Send ENEC MR, HJ
> +							   Initialization complete


_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
