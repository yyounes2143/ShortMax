package com.mbridge.msdk.advanced.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import java.util.ArrayList;
/* compiled from: NativeAdvancedLoadListenerImpl.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private NativeAdvancedAdListener f25856a;

    /* renamed from: b  reason: collision with root package name */
    private c f25857b;

    /* renamed from: c  reason: collision with root package name */
    private MBridgeIds f25858c;

    /* renamed from: d  reason: collision with root package name */
    private String f25859d;

    /* renamed from: e  reason: collision with root package name */
    private String f25860e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f25857b = cVar;
        this.f25858c = mBridgeIds;
        this.f25859d = mBridgeIds.getUnitId();
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f25856a = nativeAdvancedAdListener;
    }

    public void a(String str) {
        this.f25860e = str;
    }

    public void a(CampaignEx campaignEx, int i10) {
        c cVar;
        p0.b("NativeAdvancedLoadManager", "onLoadSuccessed: " + i10);
        c cVar2 = this.f25857b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f25856a;
        if (nativeAdvancedAdListener != null && this.f25857b != null) {
            nativeAdvancedAdListener.onLoadSuccessed(this.f25858c);
        }
        this.f25857b.a(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f25859d, campaignEx.isBidCampaign());
        if (i10 != 2 || (cVar = this.f25857b) == null) {
            return;
        }
        cVar.a(campaignEx, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i10) {
        c cVar = this.f25857b;
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
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f25856a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLoadFailed(this.f25858c, str);
        }
        this.f25857b.a(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f25859d, !TextUtils.isEmpty(this.f25860e), bVar != null ? bVar.a() : null);
    }
}
