Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911E3108D52
	for <lists+linux-i3c@lfdr.de>; Mon, 25 Nov 2019 12:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNtFq4i9r/KAVs8RyJb8oyoOcSe5lkv5UUpgH558JSo=; b=jVEcZM5reH5tIg
	jc2T+Uxo6NJNPm2fXL4ZsnpUpH4ImNqYwZIjhkceRUntf17RqdbjpvHSShcG5LsweM+y7J2pNL2uJ
	+nctM/aopPdgsnd/OugUlJFOCZk45yQ1HN8xBv35PM1f16gM5rxHjq8wrlec05lFwKk9cD01xd9xx
	kRc50FLwlRlJ/ecAC07CKNdB5U08K7XJzvO7uglYaFJiYa6pKtn2U57oRuoM5oivcsKhhSmfypMT3
	cxNQ/4S1TntZ/eXFRUKm/0RqvD1hOafRy6oEskdhYAHz/3ZRWlFDDQqJjCnsmuGNbnh2wI5RtMODU
	UUshAylLARZqyMqT3RGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCxv-0006J2-Cv
	for lists+linux-i3c@lfdr.de; Mon, 25 Nov 2019 11:55:39 +0000
Received: from mx0a-0014ca01.pphosted.com ([208.84.65.235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCxr-0006Ia-EE
 for linux-i3c@lists.infradead.org; Mon, 25 Nov 2019 11:55:38 +0000
Received: from pps.filterd (m0042385.ppops.net [127.0.0.1])
 by mx0a-0014ca01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAPBptwq016211; Mon, 25 Nov 2019 03:55:32 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=proofpoint;
 bh=jRDicx31ussQXX/dcDoE9uvuKTv4OZkn0JOKTgwGjLo=;
 b=FimKml5M3x3hl9KAJ+Jm667Pqp/BTqP+9W0EgfMLbz154jlnvqh5JoKc4DlpGtO30KiI
 Hjw6ek9MT7haW16ZlbEO7xg2O9E7sqXaGBB+MAMRiN8ScHAEbUfzQp/LYW+3T0NtA2zO
 wbdDmuQXfJc40h9DfUhPBdEy5LzHXIi+nluC4zRuo9VxtKn4J9YJFB1aTKNKp1u2lEN+
 cuqJMQWbWHKDKxVg5ClLLHwh279vrYGD2G+rip5BS5vE9K3DicOdypxcqnUhi5buz3t/
 05wshnKzNkYGVpif7csfxNDnr161KidNMTgtv36rrA3mVB4iGkozU6/ZofrY/TZ+ABmN pQ== 
Received: from nam03-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2056.outbound.protection.outlook.com [104.47.41.56])
 by mx0a-0014ca01.pphosted.com with ESMTP id 2wf26xxkdf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 03:55:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VLx46jIA35npbOJA34Ch30SWKAHKfvwMl3NuejX4AGubufxo8HRJtuG0MzfycoeXuwGLXhOZsR8ZmbJsQSvHQ4AUKQUfOLwpMmyyq1Vdv4Xgy0ELKIr4JorgciSovtxntzDioIGs3L07RuiSdgWOEZXR3LPZ8RLIdMerLdTzeI5aSmLi8E/4qKldgk52ak9v83cGJ/lIipKX9T+zCBjiKTUwHwG3TKkObBYj5HRp/gN3H3DlsQNr2wcRu7uLt7RxmTrYEU7dZydThYEmDGM8blV8Z+sOP6AbNzXpCaTtQVMx+B1RluZzxYmm8U8tKNPIlvRKwz82vvyHwct12DV8nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jRDicx31ussQXX/dcDoE9uvuKTv4OZkn0JOKTgwGjLo=;
 b=AyKAtH83XoMyeamQ+ZtCE6xEh2fRSWrtoIevRlQ4tFmE1bNqtCs5fZ6U9+fN/OrJKkT78t3hr59imvuQtSPa/sJEAzW2oMTCzhWma1gTXUhZ8NNzjActXIH1VqIaAzR7Bj1rWMyMN8vSnnY216nnfngodwWU0Oj/nhdYbtcFJfPSeIVltwcb8HovLmIzBwe91bm5dUB6ixxS92gSKOr1Vjc1NfUAzCBrDrXgBDnOmVxoTz2FAiac4bUOzhCnYdrkkQeYu5lSSxGSWCxYiB6+hlsXADvbw1cIEY9RSe07+gNS9CpYDBj3pCaOCL6lqLLzTug6PXf+kqg2gLcUotOezQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 64.207.220.243) smtp.rcpttodomain=collabora.com smtp.mailfrom=cadence.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=cadence.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cadence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jRDicx31ussQXX/dcDoE9uvuKTv4OZkn0JOKTgwGjLo=;
 b=LWQPeP0cIgKOCjqRre1dh3h5OIg4nTibjGkOPqeDWkHgsuDgK7+953UAUkbnNKswI8WHh7vEbkWQLTgayrXz1oiySxq2OKxL3v/i7qGAALcoZVPVSzJKWxJ8IJXgEQetzQ0Ux4+bl8vLLlRHXUNrMDQ/252eeyqH8xQ2emgyj6A=
Received: from SN4PR0701CA0044.namprd07.prod.outlook.com
 (2603:10b6:803:2d::17) by MN2PR07MB6287.namprd07.prod.outlook.com
 (2603:10b6:208:115::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19; Mon, 25 Nov
 2019 11:55:28 +0000
Received: from MW2NAM12FT032.eop-nam12.prod.protection.outlook.com
 (2a01:111:f400:fe5a::207) by SN4PR0701CA0044.outlook.office365.com
 (2603:10b6:803:2d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.18 via Frontend
 Transport; Mon, 25 Nov 2019 11:55:28 +0000
Received-SPF: Pass (protection.outlook.com: domain of cadence.com designates
 64.207.220.243 as permitted sender) receiver=protection.outlook.com;
 client-ip=64.207.220.243; helo=wcmailrelayl01.cadence.com;
Received: from wcmailrelayl01.cadence.com (64.207.220.243) by
 MW2NAM12FT032.mail.protection.outlook.com (10.13.180.225) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.18 via Frontend Transport; Mon, 25 Nov 2019 11:55:26 +0000
Received: from mailsj6.global.cadence.com (mailsj6.cadence.com
 [158.140.32.112])
 by wcmailrelayl01.cadence.com (8.14.7/8.14.4) with ESMTP id xAPBtNjq177793
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
 Mon, 25 Nov 2019 03:55:23 -0800
X-CrossPremisesHeadersFilteredBySendConnector: mailsj6.global.cadence.com
Received: from global.cadence.com (158.140.32.37) by
 mailsj6.global.cadence.com (158.140.32.112) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 25 Nov 2019 03:55:22 -0800
Date: Mon, 25 Nov 2019 12:55:16 +0100
From: Przemyslaw Gaj <pgaj@cadence.com>
To: Vitor Soares <Vitor.Soares@synopsys.com>
Subject: Re: I3C Mastership RFC
Message-ID: <20191125115502.GA5777@global.cadence.com>
References: <CH2PR12MB4216A050B76E53194759822AAE740@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191112084127.6efc6fac@collabora.com>
 <20191114061011.GA25288@global.cadence.com>
 <CH2PR12MB42168DCBB3495AD92E8231D1AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191114133214.0b6ecc0a@collabora.com>
 <CH2PR12MB4216E136A2EBB0A2777C6212AE710@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125080220.GA30630@global.cadence.com>
 <CH2PR12MB4216552AAF9BFDCE498837D7AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
 <20191125123452.7c2549dd@collabora.com>
 <CH2PR12MB42168C76A833F1401A597E65AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR12MB42168C76A833F1401A597E65AE4A0@CH2PR12MB4216.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.20 (2009-12-10)
X-Originating-IP: [158.140.32.37]
X-ClientProxiedBy: mailsj7.global.cadence.com (158.140.32.114) To
 mailsj6.global.cadence.com (158.140.32.112)
X-OrganizationHeadersPreserved: mailsj6.global.cadence.com
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:64.207.220.243; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(189003)(199004)(36092001)(43544003)(14444005)(54906003)(16586007)(36906005)(16526019)(7736002)(316002)(6246003)(6286002)(7696005)(50466002)(386003)(186003)(5660300002)(26005)(11346002)(956004)(70586007)(1076003)(446003)(106002)(86362001)(2486003)(23676004)(76176011)(58126008)(305945005)(7116003)(426003)(336012)(478600001)(229853002)(8676002)(55016002)(2906002)(8936002)(70206006)(6916009)(356004)(6666004)(3846002)(47776003)(4326008)(6116002)(66066001)(561944003)(33656002)(81156014)(81166006)(53416004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR07MB6287; H:wcmailrelayl01.cadence.com;
 FPR:; SPF:Pass; LANG:en; PTR:ErrorRetry; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44372e2c-6039-4da1-827f-08d7719e5c60
X-MS-TrafficTypeDiagnostic: MN2PR07MB6287:
X-Microsoft-Antispam-PRVS: <MN2PR07MB62872BE9F80336382595A394C24A0@MN2PR07MB6287.namprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0232B30BBC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: frCghxTqfxMtqgP6vhoRbzQCzCfRaJDPWF0rvJ4RTJW8698HrZMqHuozbujGGG6PTKhTHAVgo72VxhDQhpKDBfS8BljPxkGekkzS3D+a6VG/aaFsxNKaRFupXkn72ci47rfvHdmixjy0H3Vwm6GnQx/70n7GHhXMbKrO99ZSoK28ny7oPJq8v5oeCzTWb6+njV2Dhm2z+YBsIEGeh0CiBJjJlknCz4Q5qLFBcvuY01JDZCB3U1KJJpYM4RFf1697PxkWpETW2NIKsq2EkPpn4lJg9zNkbhW8vTOya4zvw1E4j8cb9biF5gkO0VW1fLN9TkwyZJd8YDollB788lB6yCQ6et0DvajKVsb93RUd3JZ32BcrvGeUkwgArogbVgqGhaumAHQuKsfpG29Y6FicjjZ+YzQFSmwUdvpTwIyfmRm2JFsOiWH8KhiuJwwqjQoFJ/F7xqGVgAhSLxTQ7SGz+A==
X-OriginatorOrg: cadence.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2019 11:55:26.3022 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 44372e2c-6039-4da1-827f-08d7719e5c60
X-MS-Exchange-CrossTenant-Id: d36035c5-6ce6-4662-a3dc-e762e61ae4c9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d36035c5-6ce6-4662-a3dc-e762e61ae4c9; Ip=[64.207.220.243];
 Helo=[wcmailrelayl01.cadence.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR07MB6287
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_03:2019-11-21,2019-11-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_check_notspam policy=outbound_check
 score=0 mlxscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-1911250111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035536_032251_15737092 
X-CRM114-Status: GOOD (  37.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [208.84.65.235 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-i3c@lists.infradead.org" <linux-i3c@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

The 11/25/2019 11:42, Vitor Soares wrote:
> 
> Hi Boris,
> 
> From: Boris Brezillon <boris.brezillon@collabora.com>
> Date: Mon, Nov 25, 2019 at 11:34:52
> 
> > On Mon, 25 Nov 2019 11:19:44 +0000
> > Vitor Soares <Vitor.Soares@synopsys.com> wrote:
> > 
> > > > > > > 
> > > > > > > I based in all version and tried to pass everything to master.c file.  
> > > > > > 
> > > > > > I'm not sure what that means, but okay.
> > > > > >   
> > > > > > > Right now my challenge it to trigger mastership request when a device 
> > > > > > > driver want to access to the bus but I believe we can discuss that after.  
> > > > > > 
> > > > > > That's kind of a basic feature when talking about mastership handover,
> > > > > > but sure, we can discuss it after your RFC has been posted.  
> > > > > 
> > > > > I need to test if the time that device.c request the mastership and the 
> > > > > controller has effectively the ownership of the bus is short enough to 
> > > > > call i3c_dev_do_priv_xfers_locked(dev->desc, xfers, nxfers) before of all 
> > > > > housekeeping of bus takeover.
> > > > >   
> > > > > > 
> > > > > > Note that I'm not super happy to have to go back to square 1 and throw
> > > > > > away all of the work done by Przemek, especially since Przemek was the
> > > > > > first one to post a patchset and he never really said he didn't
> > > > > > want or didn't have time to continue working on this task (not even
> > > > > > mentioning the time I spent reviewing those patches...).
> > > > > > 
> > > > > > If Przemek is fine with this situation I'm okay making an exception,
> > > > > > but be aware that it's not how we usually do: the person that posts a
> > > > > > patchset first leads the thing (of course, it's even better if there's
> > > > > > some kind of coordination before the patch is posted).  
> > > > > 
> > > > > Honestly it looks like I'm competing on this which is not the case.
> > > > > I just pointed out my concerns about this adoption because I see several 
> > > > > issues on it. The point is, at the end you can pick some parts of my sec 
> > > > > master code and integrate in your solution.
> > > > >   
> > > > 
> > > > Can you point me to the version of the patch your changes are based on?
> > > > And also, can you tell me what issues you faced? I would like to check
> > > > if they are already adressed in my code.  
> > > 
> > > I used v3 and v4. From v5, I found useful the switch case (request, 
> > > deliver, handoff, takeover) in hc side.
> > > 
> > > I didn't hardly test how device.c request mastership but I suspect it 
> > > won't work properly. When you do i3c_dev_do_priv_xfers_locked() you might 
> > > not be the master yet.
> > 
> > I'm pretty sure we solved that already (that's what
> > i3c_master_acquire_bus_ownership() calls are supposed to take care of).
> > Can you be a bit more specific? What makes you think the master might
> > not be in control of the bus when i3c_dev_do_priv_xfers_locked() is
> > called?
> 
> You are assuming that after i3c_master_acquire_bus_ownership() return, 
> secondary master already owns the bus. Main master can ack the MR request 
> and not send the CETACCMST immediately.
>

In Cadence HC driver, I'm waiting for GETACCMST longer, polling the
status and after I exit from ->request_mastership(), I'm the bus owner.
If not, error exit code is returned and we can't make the transfers.
Are you able to implement the same behavior?
 
> I was thinking to delay i3c_dev_do_priv_xfers_locked() with a work delay 
> or so. Do you have any idea?
> 
> > 
> > > 
> > > >   
> > > > > As I said previous for I3C spec 1.1 secondary master received a big 
> > > > > improvement due the misunderstanding published in 1.0 spec. I don't know 
> > > > > any other protocol that implement such kind of feature and for this is 
> > > > > from far the most complex feature to implement in SO based systems from 
> > > > > i3c spec.
> > > > >   
> > > > > > 
> > > > > > BTW, you mentioned working on a lot of different topics, but most of
> > > > > > them were left unfinished (userspace i3cdev interface, I3C slave
> > > > > > framework/API, ...).  
> > > > > 
> > > > > The i3cdev does what we discuss during the proposal of i3c subsystem and 
> > > > > only expose i3c device without device driver yet I'm not happy with 
> > > > > transfer struct.
> > > > > For the tools I have for hdr and sdr transfers, for now I didn't feel the 
> > > > > need of a tool for ccc (but for testing purposes it would help a lot).
> > > > >   
> > > > > > Any plans to post RFCs on those aspects anytime
> > > > > > soon? I mean, there's plenty of topics to work on, and I'd really prefer
> > > > > > that each developer work on a different topic instead of duplicating the
> > > > > > effort...
> > > > > > 
> > > > > > Regards,
> > > > > > 
> > > > > > Boris  
> > > > > 
> > > > > Best regards,
> > > > > Vitor Soares
> > > > > 
> > > > >   
> > > > 
> > > > -- 
> > > > -- 
> > > > Regards,
> > > > Przemyslaw Gaj  
> > > 
> > > Again sorry for the delay. I will try to send this soon.
> > 
> > Can you please share what you have now (even if it's not finished) so
> > Przemek can start looking at it?
> 
> I will try today.
> 
> Best regads,
> Vitor Soares
> 

-- 
-- 
Przemyslaw Gaj

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
