package com.mbridge.msdk.splash.request;

import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
/* compiled from: SplashLoadResponseHandler.java */
/* loaded from: classes6.dex */
public abstract class b extends d {

    /* renamed from: d  reason: collision with root package name */
    private int f29268d;

    public b(int i10) {
        this.f29268d = i10;
    }

    public abstract void a(CampaignUnit campaignUnit, int i10);

    @Override // com.mbridge.msdk.splash.request.d
    public void a(List<Frame> list) {
    }

    public abstract void b(int i10, String str);

    @Override // com.mbridge.msdk.splash.request.d
    public void a(List<g> list, CampaignUnit campaignUnit) {
        a(campaignUnit, this.f29268d);
    }

    @Override // com.mbridge.msdk.splash.request.d
    public void a(int i10, String str) {
        b(i10, str);
    }
}
