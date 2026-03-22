package com.mbridge.msdk.reward.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.videocommon.setting.b;
import java.util.List;
/* compiled from: MetricsRewardReport.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f28890a;

    private a() {
    }

    public static a a() {
        if (f28890a == null) {
            synchronized (a.class) {
                try {
                    if (f28890a == null) {
                        f28890a = new a();
                    }
                } finally {
                }
            }
        }
        return f28890a;
    }

    private void b(c cVar) {
        List<CampaignEx> j10;
        if (cVar == null) {
            return;
        }
        try {
            int a10 = cVar.a();
            String w10 = cVar.w();
            boolean z10 = false;
            if (TextUtils.isEmpty(w10) && (j10 = cVar.j()) != null && j10.size() > 0 && j10.get(0) != null) {
                w10 = j10.get(0).getCampaignUnitId();
                a10 = j10.get(0).getAdType();
                cVar.a(a10);
                cVar.n(w10);
            }
            if (a10 == 287) {
                z10 = true;
            }
            com.mbridge.msdk.videocommon.setting.c a11 = b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), w10, z10);
            if (a11 != null) {
                cVar.m(a11.x());
                cVar.o(a11.a());
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, c cVar) {
        try {
            a(cVar);
            b(cVar);
            d.b().b(cVar);
            d.b().b(str, cVar, null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(c cVar) {
        if (cVar == null) {
            try {
                cVar = new c();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.a c10 = b.b().c();
        if (c10 != null) {
            cVar.l(c10.a());
            cVar.k(c10.f());
        }
    }
}
