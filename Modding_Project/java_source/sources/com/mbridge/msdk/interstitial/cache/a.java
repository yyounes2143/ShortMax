package com.mbridge.msdk.interstitial.cache;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.ArrayList;
import java.util.List;
/* compiled from: InterstitialCamapignCache.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f27612b = "com.mbridge.msdk.interstitial.cache.a";

    /* renamed from: c  reason: collision with root package name */
    private static a f27613c;

    /* renamed from: a  reason: collision with root package name */
    private e f27614a;

    private a() {
        try {
            Context d10 = c.m().d();
            if (d10 != null) {
                this.f27614a = e.a(g.a(d10));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            try {
                if (f27613c == null) {
                    f27613c = new a();
                }
                aVar = f27613c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    public void b(CampaignEx campaignEx, String str) {
        try {
            if (this.f27614a != null && campaignEx != null && !TextUtils.isEmpty(str)) {
                this.f27614a.a(campaignEx, str, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<CampaignEx> a(String str, int i10) {
        List<CampaignEx> a10;
        ArrayList arrayList = null;
        try {
            if (TextUtils.isEmpty(str) || (a10 = this.f27614a.a(str, i10, 0, 1)) == null) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (CampaignEx campaignEx : a10) {
                    arrayList2.add(campaignEx);
                }
                return arrayList2;
            } catch (Exception e10) {
                e = e10;
                arrayList = arrayList2;
                e.printStackTrace();
                return arrayList;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                this.f27614a.e(campaignEx.getId(), str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(List<CampaignEx> list, String str) {
        if (list == null || list.size() <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        for (CampaignEx campaignEx : list) {
            a(campaignEx, str);
        }
    }

    public void a(String str, List<CampaignEx> list) {
        try {
            if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : list) {
                b(campaignEx, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void a(long j10, String str) {
        try {
            if (this.f27614a != null && j10 != 0 && !TextUtils.isEmpty(str)) {
                this.f27614a.a(j10, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            p0.b(f27612b, e10.getMessage());
        }
    }
}
