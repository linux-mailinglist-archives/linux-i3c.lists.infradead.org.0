Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3CC10905B
	for <lists+linux-i3c@lfdr.de>; Mon, 25 Nov 2019 15:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO0ojtUwkSFbwUPqyYpAGMyo64csdMIDP1taCQLiAGo=; b=hnHdVtdpfp162O
	62p9KdE40kBh9WkM/gRyQ3p0s0AsygDWua9WeNegmGZKVVHZWb7kjvbAFc1Umgt/iplI/zpksjfl9
	fo5y82nj32n4QR4xBRMIqyNAfsLkCB8PDVl3F0jxVfUe5aUUMbLlfXv7p3mZEROHtwBR+auiGNLCv
	y0HEpujuW1lUqrtWl4xp6Jdtpb/3yL+s0dJofeZ6Wq+pp0g1LWIYXupCRYERuyjirugw2LJyMHAa0
	vB2UlBmc6m50mYY+gIArDDftCL0SgToIARpgbmieoRgfmeSagSM1ip37NOMso1n9aTehtx3Za05e6
	IrDrZd+U9EvSK477npcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFhG-0000GG-5D
	for lists+linux-i3c@lfdr.de; Mon, 25 Nov 2019 14:50:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFhD-0000Fa-8N
 for linux-i3c@lists.infradead.org; Mon, 25 Nov 2019 14:50:37 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7CF2D260D64;
 Mon, 25 Nov 2019 14:50:32 +0000 (GMT)
Date: Mon, 25 Nov 2019 15:50:25 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: I3C Mastership RFC
Message-ID: <20191125155025.33b76933@collabora.com>
In-Reply-To: <CH2PR12MB4216F1775A4F133EF845EC01AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
References: <CH2PR12MB4216A050B76E53194759822AAE740@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191114061011.GA25288@global.cadence.com>
 <CH2PR12MB42168DCBB3495AD92E8231D1AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191114133214.0b6ecc0a@collabora.com>
 <CH2PR12MB4216E136A2EBB0A2777C6212AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125080220.GA30630@global.cadence.com>
 <CH2PR12MB4216552AAF9BFDCE498837D7AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125123452.7c2549dd@collabora.com>
 <CH2PR12MB42168C76A833F1401A597E65AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125115502.GA5777@global.cadence.com>
 <CH2PR12MB421667CED7F6A5FF0299E732AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125132219.2e45d084@collabora.com>
 <CH2PR12MB421644B0CAB1DEF50675995EAE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125140936.47f3d479@collabora.com>
 <CH2PR12MB4216F1775A4F133EF845EC01AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_065035_561171_54D22723 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Przemyslaw Gaj <pgaj@cadence.com>,
 "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 14:27:18 +0000
Vitor Soares <Vitor.Soares@synopsys.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Mon, Nov 25, 2019 at 13:09:36
> 
> > On Mon, 25 Nov 2019 13:00:17 +0000
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> >   
> > > > > > > > I'm pretty sure we solved that already (that's what
> > > > > > > > i3c_master_acquire_bus_ownership() calls are supposed to take care of).
> > > > > > > > Can you be a bit more specific? What makes you think the master might
> > > > > > > > not be in control of the bus when i3c_dev_do_priv_xfers_locked() is
> > > > > > > > called?      
> > > > > > > 
> > > > > > > You are assuming that after i3c_master_acquire_bus_ownership() return, 
> > > > > > > secondary master already owns the bus. Main master can ack the MR request 
> > > > > > > and not send the CETACCMST immediately.
> > > > > > >      
> > > > > > 
> > > > > > In Cadence HC driver, I'm waiting for GETACCMST longer, polling the
> > > > > > status and after I exit from ->request_mastership(), I'm the bus owner.
> > > > > > If not, error exit code is returned and we can't make the transfers.
> > > > > > Are you able to implement the same behavior?      
> > > > > 
> > > > > You can assume everyone will do in that way. What happen if you receive a 
> > > > > request or an information from current master?    
> > > > 
> > > > We have this ->request_mastership() method so controllers that have
> > > > this logic (MR+wait(GETACCMST) automated can still interface with the
> > > > subsystem.     
> > > 
> > > I can also poll the GETACCMST but we are assuming nothing will happen 
> > > between MR and GETACCMST.  
> > 
> > Nothing coming from the master that tries to acquire the bus, yes.
> > Nothing coming from the current master, no, and that shouldn't be a
> > problem as long as those operations don't involve acquiring bus->lock.
> > And if some of those operation involve acquiring the lock (I'd still
> > need to understand which operation that would be) they'll just be
> > delayed/rejected.  
> 
> You are assuming this is straight forward which is not the case. Between 
> MR and GETACCMST may happen everything as in a Master-Slave topology.

Like what? Be more specific, I want real examples that don't work
because of the way mastership handover is done in Przemek's proposal.

> For me, poll the controller to check when GETACCMST arrive and lock 
> everything is not a solution.

We don't lock everything: other devs can still communicate until we've
acquired the bus, and the slave end of your master should also work
(since the master is still not acting as a master yet).
We do prevent new MR request once we've acquired the bus to avoid
situations where another master requests bus ownership before we could
send the messages we were asked to send (device driver request). But
that's a completely orthogonal thing, and has nothing to do with the
polling solution you seem to complain about.
BTW, you don't have to poll the reg value, using interrupt-based
waiting is fine too. My point is, if we want to keep the code simple,
we have to make this operation synchronous from the caller PoV.

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
