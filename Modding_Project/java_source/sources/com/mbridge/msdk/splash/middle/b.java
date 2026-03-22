package com.mbridge.msdk.splash.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;
/* compiled from: SplashLoadListenerImpl.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private MBSplashLoadListener f29230a;

    /* renamed from: b  reason: collision with root package name */
    private c f29231b;

    /* renamed from: c  reason: collision with root package name */
    private String f29232c;

    /* renamed from: d  reason: collision with root package name */
    private String f29233d;

    /* renamed from: e  reason: collision with root package name */
    private MBridgeIds f29234e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f29231b = cVar;
        this.f29234e = mBridgeIds;
        if (mBridgeIds != null) {
            this.f29232c = mBridgeIds.getUnitId();
        }
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        this.f29230a = mBSplashLoadListener;
    }

    public void a(String str) {
        this.f29233d = str;
    }

    public void a(CampaignEx campaignEx, int i10) {
        c cVar;
        c cVar2 = this.f29231b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        MBSplashLoadListener mBSplashLoadListener = this.f29230a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadSuccessed(this.f29234e, i10);
            this.f29230a.isSupportZoomOut(this.f29234e, campaignEx.getFlb() == 1);
        }
        this.f29231b.b(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f29232c, campaignEx.isBidCampaign());
        if (i10 != 2 || (cVar = this.f29231b) == null) {
            return;
        }
        cVar.b(campaignEx, 0, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i10) {
        c cVar = this.f29231b;
        if (cVar == null || !cVar.g()) {
            return;
        }
        String str = "";
        if (bVar != null) {
            String g10 = bVar.g();
            if (!TextUtils.isEmpty(g10)) {
                str = g10;
            }
        }
        MBSplashLoadListener mBSplashLoadListener = this.f29230a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadFailed(this.f29234e, str, i10);
        }
        this.f29231b.b(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f29232c, !TextUtils.isEmpty(this.f29233d), bVar != null ? bVar.a() : null);
    }
}
