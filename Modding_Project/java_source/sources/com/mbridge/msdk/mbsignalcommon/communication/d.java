package com.mbridge.msdk.mbsignalcommon.communication;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;
/* compiled from: CommonSignalCommunicatioImpUtils.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f28193a = "d";

    /* renamed from: b  reason: collision with root package name */
    public static int f28194b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static int f28195c = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonSignalCommunicatioImpUtils.java */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28196a;

        a(CampaignEx campaignEx) {
            this.f28196a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (a10 != null) {
                    if (!a10.a(this.f28196a.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f28196a.getId());
                        gVar.b(this.f28196a.getFca());
                        gVar.c(this.f28196a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        a10.b(gVar);
                    } else {
                        a10.b(this.f28196a.getId());
                    }
                }
                d.b(this.f28196a.getCampaignUnitId(), this.f28196a);
            } catch (Throwable th2) {
                p0.b(d.f28193a, th2.getMessage(), th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f27052c == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, "banner");
    }

    public static void a(Object obj, JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject);
            if (parseCampaignWithBackData == null) {
                a(obj, "data camapign is empty");
                return;
            }
            a(parseCampaignWithBackData);
            b(obj, "");
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f28194b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(obj, e10.getMessage());
            p0.a(f28193a, e10.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static String a(float f10, float f11) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27026h, u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), f10));
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27027i, u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), f11));
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27031m, 0);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27029k, com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(com.mbridge.msdk.foundation.controller.c.m().d()));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, jSONObject2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String a(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            String jSONObject2 = jSONObject.toString();
            if (!TextUtils.isEmpty(jSONObject2)) {
                return Base64.encodeToString(jSONObject2.getBytes(), 2);
            }
        } catch (Throwable unused) {
            p0.b(f28193a, "code to string is error");
        }
        return "";
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f28195c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a(f28193a, e10.getMessage());
        }
    }
}
