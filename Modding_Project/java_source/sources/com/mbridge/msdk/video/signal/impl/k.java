package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import com.mbridge.msdk.video.signal.a;
import com.mbridge.msdk.video.signal.impl.a;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: JSCommon.java */
/* loaded from: classes6.dex */
public class k extends l {

    /* renamed from: t  reason: collision with root package name */
    private Activity f31538t;

    /* renamed from: u  reason: collision with root package name */
    private String f31539u;

    /* renamed from: v  reason: collision with root package name */
    private String f31540v;

    /* renamed from: x  reason: collision with root package name */
    private CampaignEx f31542x;

    /* renamed from: y  reason: collision with root package name */
    private List<CampaignEx> f31543y;

    /* renamed from: z  reason: collision with root package name */
    private int f31544z;

    /* renamed from: w  reason: collision with root package name */
    private int f31541w = 0;
    private String A = "";
    private String B = "";
    private boolean C = false;
    private boolean D = false;

    /* compiled from: JSCommon.java */
    /* loaded from: classes6.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31545a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f31546b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f31547c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f31548d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f31549e;

        a(String str, String str2, String str3, String str4, int i10) {
            this.f31545a = str;
            this.f31546b = str2;
            this.f31547c = str3;
            this.f31548d = str4;
            this.f31549e = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(k.this.f31538t.getApplication())).a(new com.mbridge.msdk.foundation.entity.n("2000039", this.f31545a, this.f31546b, this.f31547c, this.f31548d, k.this.f31542x.getId(), this.f31549e, l0.a(k.this.f31538t.getApplication(), this.f31549e)));
        }
    }

    public k(Activity activity, CampaignEx campaignEx) {
        this.f31538t = activity;
        this.f31542x = campaignEx;
    }

    private String A() {
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f31522j);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("instanceId", this.A);
            jSONObject2.put("rootViewInstanceId", this.B);
            jSONObject2.put("isRootTemplateWebView", this.C);
            jSONObject.put("sdk_info", "MAL_16.9.91,3.0.1");
            jSONObject2.put("playVideoMute", this.f31526n);
            jSONObject.put("sdkSetting", jSONObject2);
            a(jSONObject);
            JSONArray jSONArray = new JSONArray();
            List<CampaignEx> list = this.f31543y;
            if (list != null && list.size() > 0) {
                for (CampaignEx campaignEx : this.f31543y) {
                    jSONArray.put(CampaignEx.campaignToJsonObject(campaignEx, campaignEx.isReady(), b(campaignEx)));
                }
            } else {
                jSONArray.put(CampaignEx.campaignToJsonObject(this.f31542x));
            }
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", x());
            String e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e10)) {
                JSONObject jSONObject3 = new JSONObject(e10);
                c(jSONObject3);
                String c10 = com.mbridge.msdk.setting.h.b().c(this.f31522j);
                if (!TextUtils.isEmpty(c10)) {
                    jSONObject3.put("ivreward", new JSONObject(c10));
                }
                jSONObject.put("appSetting", jSONObject3);
            }
            jSONObject.put("rewardSetting", w());
            if (!TextUtils.isEmpty(this.f31522j)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f31522j);
            }
            if (this.D) {
                obj = "1";
            } else {
                obj = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            jSONObject.put("rw_plus", obj);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private JSONObject B() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f31522j)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f31522j);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject C() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.mbridge.msdk.videocommon.setting.c cVar = this.f31523k;
            if (cVar != null) {
                jSONObject.put("unitSetting", cVar.H());
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            String e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e10)) {
                jSONObject.put("appSetting", new JSONObject(e10));
            }
        } catch (JSONException e11) {
            e11.printStackTrace();
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        a(jSONObject);
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.f31526n);
            jSONObject.put("sdkSetting", jSONObject2);
            a(jSONObject);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(CampaignEx.campaignToJsonObject(this.f31542x));
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", x());
            String e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e10)) {
                JSONObject jSONObject3 = new JSONObject(e10);
                c(jSONObject3);
                String c10 = com.mbridge.msdk.setting.h.b().c(this.f31522j);
                if (!TextUtils.isEmpty(c10)) {
                    jSONObject3.put("ivreward", c10);
                }
                jSONObject.put("appSetting", jSONObject3.toString());
            }
            jSONObject.put("rewardSetting", w());
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject u() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
        if (c10 != null) {
            return c10.k();
        }
        return jSONObject;
    }

    private JSONObject x() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.setting.c cVar = this.f31523k;
        if (cVar != null) {
            return cVar.H();
        }
        return jSONObject;
    }

    private JSONObject y() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_info", "MAL_16.9.91,3.0.1");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject z() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.f31526n);
            jSONObject2.put("instanceId", this.A);
            jSONObject.put("sdkSetting", jSONObject2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public void c(CampaignEx campaignEx) {
        this.f31542x = campaignEx;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.e
    public void click(int i10, String str) {
        AppletsModel appletsModel;
        List<CampaignEx> list;
        int i11;
        super.click(i10, str);
        CampaignEx campaignEx = this.f31542x;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
            b(str);
        }
        try {
            if (i10 != 1) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        this.f31525m.a(true);
                        return;
                    }
                    return;
                }
                CampaignEx campaignEx2 = this.f31542x;
                if (campaignEx2 != null && campaignEx2.getCbd() > -2) {
                    i11 = this.f31542x.getCbd();
                } else {
                    com.mbridge.msdk.videocommon.setting.c cVar = this.f31523k;
                    if (cVar != null) {
                        i11 = cVar.i();
                    } else {
                        i11 = 1;
                    }
                }
                if (i11 == -1) {
                    a(new a.b(this, this.f31525m));
                }
                this.f31541w = i10;
                click(1, str);
                return;
            }
            if (this.f31542x == null && (list = this.f31543y) != null && list.size() > 0) {
                this.f31542x = this.f31543y.get(0);
            }
            CampaignEx campaignEx3 = this.f31542x;
            if (campaignEx3 == null) {
                return;
            }
            CampaignEx a10 = a(str, campaignEx3);
            if (this.f31541w != 3) {
                this.f31541w = i10;
            }
            a(a10);
            if (a10 != null && (appletsModel = AppletModelManager.getInstance().get(a10)) != null) {
                appletsModel.setUserClick(true);
                AppletModelManager.getInstance().replace(appletsModel, a10);
            }
            a(a10, this.f31538t);
        } catch (Throwable th2) {
            p0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    public void d(String str) {
        this.B = str;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String e() {
        p0.a("DefaultJSCommon", "getNotchArea");
        return this.f31540v;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void f() {
        super.f();
        try {
            Activity activity = this.f31538t;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            p0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String g() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playVideoMute", this.f31526n);
            jSONObject.put("userVideoMute", this.f31527o);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }

    public void h(int i10) {
        this.f31544z = i10;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.e
    public void handlerH5Exception(int i10, String str) {
        super.handlerH5Exception(i10, str);
        try {
            this.f31525m.a(i10, str);
        } catch (Throwable th2) {
            p0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    public void r() {
        this.f31539u = "";
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void setActivity(Activity activity) {
        this.f31538t = activity;
    }

    public int v() {
        return this.f31544z;
    }

    private void b(String str) {
        List<CampaignEx> list;
        if (this.f31542x == null || (list = this.f31543y) == null || list.size() == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("camp_position")) {
                this.f31542x = this.f31543y.get(jSONObject.getInt("camp_position"));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public void a(List<CampaignEx> list) {
        this.f31543y = list;
    }

    public void c(boolean z10) {
        this.C = z10;
    }

    public void d(boolean z10) {
        this.D = z10;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void h() {
        super.h();
        a.InterfaceC0453a interfaceC0453a = this.f31525m;
        if (interfaceC0453a != null) {
            interfaceC0453a.a();
        }
    }

    private CampaignEx a(String str, CampaignEx campaignEx) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return campaignEx;
        }
        if (TextUtils.isEmpty(str) && campaignEx == null) {
            return null;
        }
        if (!str.contains("notice")) {
            try {
                JSONObject campaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(campaignToJsonObject);
                if (parseCampaignWithBackData == null) {
                    parseCampaignWithBackData = campaignEx;
                }
                if (!TextUtils.isEmpty(str)) {
                    a(campaignToJsonObject, parseCampaignWithBackData);
                    JSONObject optJSONObject = new JSONObject(str).optJSONObject(com.mbridge.msdk.foundation.same.a.f27028j);
                    if (optJSONObject != null) {
                        str2 = String.valueOf(u0.a(this.f31538t, Integer.valueOf(optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27026h)).intValue()));
                        str3 = String.valueOf(u0.a(this.f31538t, Integer.valueOf(optJSONObject.getString(com.mbridge.msdk.foundation.same.a.f27027i)).intValue()));
                    } else {
                        str2 = "-999";
                        str3 = "-999";
                    }
                    parseCampaignWithBackData.setClickURL(com.mbridge.msdk.click.c.a(parseCampaignWithBackData.getClickURL(), str2, str3));
                    String noticeUrl = parseCampaignWithBackData.getNoticeUrl();
                    if (optJSONObject != null) {
                        Iterator<String> keys = optJSONObject.keys();
                        StringBuilder sb2 = new StringBuilder();
                        while (keys.hasNext()) {
                            sb2.append(ContainerUtils.FIELD_DELIMITER);
                            String next = keys.next();
                            String optString = optJSONObject.optString(next);
                            if (com.mbridge.msdk.foundation.same.a.f27026h.equals(next) || com.mbridge.msdk.foundation.same.a.f27027i.equals(next)) {
                                optString = String.valueOf(u0.a(this.f31538t, Integer.valueOf(optString).intValue()));
                            }
                            sb2.append(next);
                            sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                            sb2.append(optString);
                        }
                        parseCampaignWithBackData.setNoticeUrl(noticeUrl + ((Object) sb2));
                    }
                }
                return parseCampaignWithBackData;
            } catch (JSONException e10) {
                e10.printStackTrace();
                return campaignEx;
            } catch (Throwable th2) {
                th2.printStackTrace();
                return campaignEx;
            }
        }
        try {
            JSONObject campaignToJsonObject2 = CampaignEx.campaignToJsonObject(campaignEx);
            JSONObject jSONObject = new JSONObject(str);
            b(jSONObject);
            try {
                if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                    campaignToJsonObject2.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                }
            } catch (Exception unused) {
            }
            Iterator<String> keys2 = jSONObject.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                campaignToJsonObject2.put(next2, jSONObject.getString(next2));
            }
            CampaignEx parseCampaignWithBackData2 = CampaignEx.parseCampaignWithBackData(campaignToJsonObject2);
            a(campaignToJsonObject2, parseCampaignWithBackData2);
            return parseCampaignWithBackData2;
        } catch (JSONException e11) {
            e11.printStackTrace();
            return campaignEx;
        }
    }

    public void c(String str) {
        this.A = str;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String c() {
        this.f31525m.onInitSuccess();
        this.f31513a = true;
        if (TextUtils.isEmpty(this.f31539u)) {
            this.f31539u = A();
        } else {
            String str = this.f31539u;
            this.f31539u = u0.b(str, "tun", l0.y() + "");
        }
        return this.f31539u;
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public String f(int i10) {
        switch (i10) {
            case 1:
                return y().toString();
            case 2:
                return B().toString();
            case 3:
                return s().toString();
            case 4:
                return C().toString();
            case 5:
                return u().toString();
            case 6:
                return z().toString();
            default:
                return t().toString();
        }
    }

    public k(Activity activity, CampaignEx campaignEx, List<CampaignEx> list) {
        this.f31538t = activity;
        this.f31542x = campaignEx;
        this.f31543y = list;
    }

    private boolean b(CampaignEx campaignEx) {
        com.mbridge.msdk.setting.g d10;
        try {
            String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
            long a02 = (TextUtils.isEmpty(b10) || (d10 = com.mbridge.msdk.setting.h.b().d(b10)) == null) ? 0L : d10.a0() * 1000;
            com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
            long e10 = c10 != null ? c10.e() : 0L;
            if (campaignEx != null) {
                return campaignEx.isSpareOffer(e10, a02);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private void c(JSONObject jSONObject) {
        try {
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            String obj = x0.a(d10, "MBridge_ConfirmTitle" + this.f31522j, "").toString();
            String obj2 = x0.a(d10, "MBridge_ConfirmContent" + this.f31522j, "").toString();
            String obj3 = x0.a(d10, "MBridge_CancelText" + this.f31522j, "").toString();
            String obj4 = x0.a(d10, "MBridge_ConfirmText" + this.f31522j, "").toString();
            if (!TextUtils.isEmpty(obj)) {
                jSONObject.put("confirm_title", obj);
            }
            if (!TextUtils.isEmpty(obj2)) {
                jSONObject.put("confirm_description", obj2);
            }
            if (!TextUtils.isEmpty(obj3)) {
                jSONObject.put("confirm_t", obj3);
            }
            if (!TextUtils.isEmpty(obj4)) {
                jSONObject.put("confirm_c_play", obj4);
            }
            if (TextUtils.isEmpty(obj4)) {
                return;
            }
            jSONObject.put("confirm_c_rv", obj4);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(JSONObject jSONObject, CampaignEx campaignEx) {
        try {
            String optString = jSONObject.optString("unitId");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            campaignEx.setCampaignUnitId(optString);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void a(int i10, String str) {
        super.a(i10, str);
        if (i10 != 2) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            a aVar = new a(jSONObject.optString(NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT), jSONObject.optString("template", "-1"), jSONObject.optString(TtmlNode.TAG_LAYOUT, "-1"), jSONObject.optString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f31522j), l0.s(this.f31538t.getApplication()));
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        } catch (Throwable th2) {
            p0.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    private void a(CampaignEx campaignEx) {
        try {
            int i10 = this.f31541w;
            if (i10 == 3) {
                campaignEx.setClickTempSource(2);
                if (campaignEx.getTriggerClickSource() == 0) {
                    campaignEx.setTriggerClickSource(2);
                }
            } else if (i10 != 1 || campaignEx.getClickTempSource() == 2) {
            } else {
                campaignEx.setClickTempSource(1);
            }
        } catch (Exception e10) {
            p0.b("DefaultJSCommon", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.a, com.mbridge.msdk.video.signal.a
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f31540v = str;
    }
}
