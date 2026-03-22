package com.mbridge.msdk.reward.adapter;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: RewardVideoCampaignState.java */
/* loaded from: classes6.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f28746a;

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f28747b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28748c = false;

    /* renamed from: d  reason: collision with root package name */
    private int f28749d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f28750e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f28751f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f28752g = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f28753h = 0;

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f28746a = copyOnWriteArrayList;
    }

    public CopyOnWriteArrayList<CampaignEx> b() {
        return this.f28746a;
    }

    public int c() {
        return this.f28752g;
    }

    public int d() {
        return this.f28751f;
    }

    public boolean e() {
        return this.f28748c;
    }

    public void a(boolean z10) {
        this.f28748c = z10;
    }

    public void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f28747b = campaignEx;
            this.f28749d = campaignEx.getSecondRequestIndex();
            this.f28750e = campaignEx.getSecondShowIndex();
            this.f28751f = campaignEx.getFilterCallBackState();
            this.f28753h = campaignEx.getFilterAdsShowCallState();
            this.f28752g = campaignEx.getFilterAdsVideoCallState();
        }
    }

    public boolean a() {
        return this.f28749d == 1 && this.f28748c;
    }
}
