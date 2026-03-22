package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.provider.Settings;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
/* compiled from: CheckUtils.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27436a = "com.mbridge.msdk.foundation.tools.g";

    /* renamed from: b  reason: collision with root package name */
    public static int f27437b;

    private static boolean a(Context context) {
        return context != null && Settings.canDrawOverlays(context);
    }

    public static int b(Context context) {
        if (f27437b == 0) {
            f27437b = a(context) ? 1 : -1;
        }
        return f27437b;
    }

    public static boolean a(CampaignEx campaignEx, Context context, View view, int i10) {
        com.mbridge.msdk.foundation.entity.l a10 = a(view, i10);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        a(arrayList, a10);
        return a(a10, arrayList);
    }

    public static boolean b(CampaignEx campaignEx, Context context, View view, int i10) {
        com.mbridge.msdk.foundation.entity.l a10 = a(view, i10);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        return a(a10, arrayList);
    }

    public static boolean a(List<CampaignEx> list, Context context, View view, int i10) {
        com.mbridge.msdk.foundation.entity.l a10 = a(view, i10);
        a(list, a10);
        return a(a10, list);
    }

    private static boolean a(com.mbridge.msdk.foundation.entity.l lVar, List<CampaignEx> list) {
        return lVar.a() || list == null || list.isEmpty() || list.get(0).getLocalCheckShow() == 0;
    }

    public static void a(List<CampaignEx> list, com.mbridge.msdk.foundation.entity.l lVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("per", Integer.valueOf(b(com.mbridge.msdk.foundation.controller.c.m().d())));
            eVar.a("viewStatus", Integer.valueOf(lVar.b()));
            eVar.a("showe", Integer.valueOf(!lVar.a()));
            com.mbridge.msdk.foundation.same.report.metrics.c cVar3 = null;
            try {
                cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(list.get(0).getCurrentLocalRid());
                if (cVar2 == null) {
                    try {
                        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    } catch (Exception e10) {
                        e = e10;
                        cVar3 = cVar2;
                        cVar = cVar3;
                        p0.b(f27436a, e.getMessage());
                        cVar2 = cVar;
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_show_env", cVar2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000130", eVar);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000131", eVar);
                    }
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(list.get(0).getCurrentLocalRid(), cVar);
                        cVar2 = cVar;
                    } catch (Exception e11) {
                        e = e11;
                        p0.b(f27436a, e.getMessage());
                        cVar2 = cVar;
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_show_env", cVar2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000130", eVar);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000131", eVar);
                    }
                }
                cVar2.a((CampaignEx) null);
                cVar2.b(list);
                cVar2.a("m_show_env", eVar);
            } catch (Exception e12) {
                e = e12;
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_show_env", cVar2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000130", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000131", eVar);
        } catch (Throwable th2) {
            p0.b(f27436a, th2.getMessage());
        }
    }

    public static com.mbridge.msdk.foundation.entity.l a(View view, int i10) {
        com.mbridge.msdk.foundation.entity.l lVar = new com.mbridge.msdk.foundation.entity.l();
        if (view != null) {
            lVar.a(d1.a(view, i10) ? 1 : 0);
        }
        return lVar;
    }
}
