package com.mbridge.msdk.foundation.same.report.campaignreport;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.h;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.tracker.e;
import org.json.JSONObject;
/* compiled from: BaseCampaignRequestTimeUtil.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected Context f27212a;

    /* renamed from: b  reason: collision with root package name */
    protected h f27213b;

    public a(h hVar) {
        this.f27213b = hVar;
        Context d10 = c.m().d();
        this.f27212a = d10;
        if (this.f27213b != null && d10 != null) {
            int s10 = l0.s(d10);
            this.f27213b.c(s10);
            this.f27213b.a(l0.a(this.f27212a, s10));
        }
    }

    public void a() {
        if (this.f27213b != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CrashHianalyticsData.TIME, this.f27213b.f());
                jSONObject.put(CampaignEx.JSON_KEY_HB, this.f27213b.i());
                jSONObject.put("fb", this.f27213b.b());
                jSONObject.put("num", this.f27213b.e());
                jSONObject.put(CampaignEx.JSON_KEY_AD_SOURCE_ID, this.f27213b.a());
                jSONObject.put("timeout", this.f27213b.g());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f27213b.h());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", this.f27213b.d());
                    jSONObject.put("network_str", this.f27213b.c());
                }
                e eVar = new e("2000006");
                eVar.a(0);
                eVar.b(0);
                eVar.a(jSONObject);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                d.b().d().d(eVar);
            } catch (Throwable unused) {
            }
        }
    }

    public void b(int i10) {
        h hVar = this.f27213b;
        if (hVar != null) {
            hVar.a(i10);
        }
    }

    public void c(int i10) {
        h hVar = this.f27213b;
        if (hVar != null) {
            hVar.b(i10);
        }
    }

    public void b(String str) {
        h hVar = this.f27213b;
        if (hVar != null) {
            hVar.c(str);
        }
    }

    public void a(int i10) {
        h hVar = this.f27213b;
        if (hVar != null) {
            hVar.d(i10);
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f27213b.b(str);
    }
}
