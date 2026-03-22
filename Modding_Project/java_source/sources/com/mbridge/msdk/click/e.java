package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.bean.subs.SubsSku;
/* compiled from: CommonJumpLoader.java */
/* loaded from: classes4.dex */
public class e extends f {

    /* renamed from: e  reason: collision with root package name */
    private int f25993e;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f25996h;

    /* renamed from: i  reason: collision with root package name */
    private p f25997i;

    /* renamed from: b  reason: collision with root package name */
    JumpLoaderResult f25990b = null;

    /* renamed from: c  reason: collision with root package name */
    private int f25991c = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f25992d = null;

    /* renamed from: f  reason: collision with root package name */
    private g f25994f = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25995g = true;

    /* renamed from: j  reason: collision with root package name */
    private Handler f25998j = new Handler(Looper.getMainLooper());

    public e(Context context) {
        this.f25996h = new com.mbridge.msdk.foundation.same.task.b(context);
        this.f25997i = new p(context);
    }

    public void a(String str, CampaignEx campaignEx, g gVar, String str2, boolean z10, boolean z11, int i10) {
        String str3;
        this.f25992d = str2;
        this.f25994f = gVar;
        this.f25990b = null;
        this.f25993e = i10;
        boolean z12 = false;
        if (campaignEx != null) {
            z12 = ("5".equals(campaignEx.getClick_mode()) || SubsSku.SCENE_AD_2_PAY.equals(campaignEx.getClick_mode())) ? true : true;
            str3 = campaignEx.getId();
        } else {
            str3 = "";
        }
        this.f25997i.a(str2, gVar, z12, str3, str, campaignEx, z10, z11, i10);
    }

    public void a(String str, CampaignEx campaignEx, g gVar) {
        this.f25992d = new String(campaignEx.getClickURL());
        this.f25994f = gVar;
        this.f25990b = null;
        this.f25997i.a(campaignEx.getClickURL(), gVar, "5".equals(campaignEx.getClick_mode()) || SubsSku.SCENE_AD_2_PAY.equals(campaignEx.getClick_mode()), campaignEx.getId(), str, campaignEx, true, false, com.mbridge.msdk.click.retry.a.f26109p);
    }

    public void a() {
        this.f25995g = false;
    }
}
