Return-Path: <linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-i3c@lfdr.de
Delivered-To: lists+linux-i3c@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF771F3813
	for <lists+linux-i3c@lfdr.de>; Tue,  9 Jun 2020 12:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=030C6abobuxrmLVAvF2oAZ/384DKnLPLk/E1XQA5BeY=; b=WvME0J6/H5SUQd
	UgF7WPsp2Yo0FrIj1Nv1R1UZ7RYVH6py4Rac1ojgNcfqvI2cL30aC3qVO2HLQiTHnSeTiccUP176L
	JoZgbEsHbTmFEs/++QbT/mdF33Xe7ypPXBu64j4NeBpx/yS0xxqL0HPZ+rM2+iq9ZAXInQtutJd4F
	bBfohEGMhnpI6/Y3BBOEUNfgK4mgBkjmVY3laBvBHiik376Q7WAjejMirgW53Pjr4doLM6gfhyB/E
	ixRzOZ2fWDJNJPmCHBAvoXtu9PeIh35H2gEwXhdVD/ItMnr7WU+dvJvtch0ULqUko+bzUz0Q4FiFc
	KalnEqwVJP29E4pl2qDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibTi-0006R7-HK
	for lists+linux-i3c@lfdr.de; Tue, 09 Jun 2020 10:27:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpLK-0001Fr-1r
 for linux-i3c@lists.infradead.org; Mon, 01 Jun 2020 18:39:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id m18so9422946ljo.5
 for <linux-i3c@lists.infradead.org>; Mon, 01 Jun 2020 11:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OQI83XnTUpCYBOZaAbAv+Cb5Uoct40fY5tumECPOkoE=;
 b=G4XxvEfJ3uyBljRWLUv6ciQWBngwkPYJSSnhCt/HrGYHq8cB1vfKRYnv5BXMA/f8x7
 V9tX6tl4Nspup5rVZvhh1MWLoYUj0/kFkWHvUZWbPzedpCF6S1GUQRBOYo5GS7ag3l7h
 tSSv3TGgEIr8C3cowP2U/R/z2d9p+uPonS3LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OQI83XnTUpCYBOZaAbAv+Cb5Uoct40fY5tumECPOkoE=;
 b=VNVKIY2JoFdlQbfe77Voyz1IrF4JmQSxBYs/qft+99WGyINXdIJR4oUPRxHS0ROZ1H
 gtWqPu64r0CawIl8LnFgA6odRx0A0LVgJb0RmwkJPxE6g6+53C1zlmHQSbyqSTMjh9T9
 3ne0fKxOsJS0OxeovsHoK7XgcSjDDQ+k/Tv0/xd80zRubhK5X/hkUIGiKA6P0Gif6GNi
 fvM2cTm75P5LZHpozuSlaNIXe6COf3pfcEKIQ7IxNExntzZO2z2qCyDCtMzUUJtT0Yis
 gOuxUfoNnCDCOOPlwjWFA2MSqSvKg0jMI/16TOXUWek30XpLN7RUt7Lc8wsuT/YYJ3Ue
 yJzA==
X-Gm-Message-State: AOAM530AfeNWadpzgKxUoksudxpjIDUsPsiDvGHbuGIecAWf3krGP9cu
 uLf0rVThIapHqtfa9nHziUmmnNqwVXA=
X-Google-Smtp-Source: ABdhPJzIbNDaeMnR1XKBrQBdbdwulz4ge2Si15WrVD6qsLi53zeWC3un3BO6nRzkZ0DnBfo/4ud8FQ==
X-Received: by 2002:a2e:b4e7:: with SMTP id s7mr5855334ljm.336.1591036762967; 
 Mon, 01 Jun 2020 11:39:22 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id k27sm86295lfe.88.2020.06.01.11.39.21
 for <linux-i3c@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 11:39:22 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id e125so4544065lfd.1
 for <linux-i3c@lists.infradead.org>; Mon, 01 Jun 2020 11:39:21 -0700 (PDT)
X-Received: by 2002:a05:6512:62:: with SMTP id
 i2mr11740327lfo.152.1591036761565; 
 Mon, 01 Jun 2020 11:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200601095423.00ffb5e1@collabora.com>
In-Reply-To: <20200601095423.00ffb5e1@collabora.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 1 Jun 2020 11:39:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=whW82ewxKJjaFq=96eEpCMN0=DtaZxX9ZGBH7BTgTkEfQ@mail.gmail.com>
Message-ID: <CAHk-=whW82ewxKJjaFq=96eEpCMN0=DtaZxX9ZGBH7BTgTkEfQ@mail.gmail.com>
Subject: Re: [GIT PULL] i3c: Changes for 5.8
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_113926_098338_9A9DEFDB 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Mailman-Approved-At: Tue, 09 Jun 2020 03:27:33 -0700
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
Cc: linux-i3c <linux-i3c@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-i3c" <linux-i3c-bounces@lists.infradead.org>
Errors-To: linux-i3c-bounces+lists+linux-i3c=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 12:54 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/i3c/linux.git i3c/for-5.8

Hmm. No such ref..

I see the "i3c/next" branch that has that top commit, but I don't see
the signed tag.

Forgot to push? "git request-pull" _should_ have warned about the
remote side missing..

              Linus

_______________________________________________
linux-i3c mailing list
linux-i3c@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-i3c
