package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
/* compiled from: DomainSameTool.java */
/* loaded from: classes5.dex */
public class x extends e {
    public static void a(List<CampaignEx> list) {
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.db.j a10 = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(context));
        if (campaignEx == null || a10 == null || a10.a(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
        gVar.a(campaignEx.getId());
        gVar.b(campaignEx.getFca());
        gVar.c(campaignEx.getFcb());
        gVar.a(0);
        gVar.d(0);
        gVar.a(System.currentTimeMillis());
        a10.b(gVar);
    }
}
