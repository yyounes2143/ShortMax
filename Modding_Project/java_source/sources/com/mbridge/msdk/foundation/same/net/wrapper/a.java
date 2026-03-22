package com.mbridge.msdk.foundation.same.net.wrapper;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
/* compiled from: BaseCampaignRequest.java */
/* loaded from: classes5.dex */
public class a extends c {
    public a(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.foundation.same.net.wrapper.c
    public void addExtraParams(String str, e eVar) {
        try {
            int a10 = u0.a();
            String c10 = u0.c();
            if (eVar != null) {
                eVar.a("misk_spt", String.valueOf(a10));
                if (!TextUtils.isEmpty(c10)) {
                    eVar.a("misk_spt_det", c10);
                }
            }
        } catch (Exception e10) {
            p0.a("CampaignRequest", e10.getMessage());
        } finally {
            super.addExtraParams(str, eVar);
        }
    }
}
