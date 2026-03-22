package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.base.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseSplashSignalCommunicationImpl.java */
/* loaded from: classes6.dex */
public class a implements com.mbridge.msdk.mbsignalcommon.mraid.b {

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Context> f29304b;

    /* renamed from: c  reason: collision with root package name */
    private List<CampaignEx> f29305c;

    /* renamed from: d  reason: collision with root package name */
    private String f29306d;

    /* renamed from: e  reason: collision with root package name */
    private String f29307e;

    /* renamed from: f  reason: collision with root package name */
    private int f29308f;

    /* renamed from: g  reason: collision with root package name */
    private int f29309g;

    /* renamed from: i  reason: collision with root package name */
    private int f29311i;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.splash.middle.a f29312j;

    /* renamed from: k  reason: collision with root package name */
    private SplashExpandDialog f29313k;

    /* renamed from: a  reason: collision with root package name */
    protected String f29303a = "SplashSignalCommunicationImpl";

    /* renamed from: h  reason: collision with root package name */
    private int f29310h = 5;

    /* compiled from: BaseSplashSignalCommunicationImpl.java */
    /* renamed from: com.mbridge.msdk.splash.signal.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class RunnableC0428a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f29314a;

        RunnableC0428a(ArrayList arrayList) {
            this.f29314a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f29314a.iterator();
                while (it.hasNext()) {
                    a10.b((String) it.next());
                }
            } catch (Exception unused) {
                p0.b(a.this.f29303a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f29307e = str;
        this.f29306d = str2;
        this.f29304b = new WeakReference<>(context);
    }

    public void a(Context context) {
        this.f29304b = new WeakReference<>(context);
    }

    public void b(int i10) {
        this.f29310h = i10;
    }

    public void c(int i10) {
        this.f29311i = i10;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        p0.b(this.f29303a, "close");
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "close", th2);
        }
    }

    public void d(Object obj, String str) {
        String str2 = this.f29303a;
        p0.a(str2, "sendImpressions:" + str);
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    String string = jSONArray.getString(i10);
                    for (CampaignEx campaignEx : this.f29305c) {
                        if (campaignEx.getId().equals(string)) {
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.f29306d, campaignEx, AdmobPreloadConfig.APP_OPEN);
                            arrayList.add(string);
                        }
                    }
                }
                new Thread(new RunnableC0428a(arrayList)).start();
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "sendImpressions", th2);
        }
    }

    public void e(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Module.ResponseKey.Code, 0);
            jSONObject.put("message", "Call pause count down success.");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("countdown", this.f29311i);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.b(this.f29303a, e10.getMessage());
        }
        com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
        if (aVar != null) {
            aVar.a(1, -1);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f29304b;
            if (weakReference != null && weakReference.get() != null) {
                SplashExpandDialog splashExpandDialog = this.f29313k;
                if (splashExpandDialog != null && splashExpandDialog.isShowing()) {
                    return;
                }
                SplashExpandDialog splashExpandDialog2 = new SplashExpandDialog(this.f29304b.get(), bundle, this.f29312j);
                this.f29313k = splashExpandDialog2;
                splashExpandDialog2.setCampaignList(this.f29306d, this.f29305c);
                this.f29313k.show();
                com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.splash.report.a.a(this.f29306d, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "expand", th2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(java.lang.Object r3, java.lang.String r4) {
        /*
            r2 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 != 0) goto L2c
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Exception -> L22
            r0.<init>(r4)     // Catch: java.lang.Exception -> L22
            java.lang.String r4 = "countdown"
            int r4 = r0.optInt(r4)     // Catch: java.lang.Exception -> L22
            com.mbridge.msdk.mbsignalcommon.windvane.f r0 = com.mbridge.msdk.mbsignalcommon.windvane.f.a()     // Catch: java.lang.Exception -> L1f
            java.lang.String r1 = com.mbridge.msdk.splash.signal.c.a(r1)     // Catch: java.lang.Exception -> L1f
            r0.b(r3, r1)     // Catch: java.lang.Exception -> L1f
            r1 = r4
            goto L2c
        L1f:
            r3 = move-exception
            r1 = r4
            goto L23
        L22:
            r3 = move-exception
        L23:
            java.lang.String r4 = r2.f29303a
            java.lang.String r3 = r3.getMessage()
            com.mbridge.msdk.foundation.tools.p0.b(r4, r3)
        L2c:
            com.mbridge.msdk.splash.middle.a r3 = r2.f29312j
            if (r3 == 0) goto L34
            r4 = 2
            r3.a(r4, r1)
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.signal.a.f(java.lang.Object, java.lang.String):void");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f29305c;
        if (list != null && list.size() > 0) {
            return this.f29305c.get(0);
        }
        return null;
    }

    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.splash.common.b bVar = new com.mbridge.msdk.splash.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f29308f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f29305c));
            l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f29306d);
            if (e10 == null) {
                e10 = l.i(this.f29306d);
            }
            if (!TextUtils.isEmpty(this.f29307e)) {
                e10.d(this.f29307e);
            }
            e10.e(this.f29306d);
            e10.j(this.f29310h);
            e10.a(this.f29309g);
            jSONObject.put("unitSetting", e10.M());
            String e11 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e11)) {
                jSONObject.put("appSetting", new JSONObject(e11));
            }
            jSONObject.put("sdk_info", d.f28129a);
            String str2 = this.f29303a;
            p0.b(str2, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            p0.b(this.f29303a, "init", th2);
        }
    }

    public void install(Object obj, String str) {
        CampaignEx campaignEx;
        p0.b(this.f29303a, "install");
        try {
            List<CampaignEx> list = this.f29305c;
            if (list == null) {
                return;
            }
            if (list.size() > 0) {
                campaignEx = this.f29305c.get(0);
            } else {
                campaignEx = null;
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONObject campaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                    JSONObject jSONObject = new JSONObject(str);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        campaignToJsonObject.put(next, jSONObject.getString(next));
                    }
                    CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(campaignToJsonObject);
                    String optString = campaignToJsonObject.optString("unitId");
                    if (!TextUtils.isEmpty(optString)) {
                        parseCampaignWithBackData.setCampaignUnitId(optString);
                    }
                    campaignEx = parseCampaignWithBackData;
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
                if (aVar != null) {
                    aVar.a(campaignEx);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        String str2 = this.f29303a;
        p0.b(str2, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d10 == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                        d10 = windVaneWebView.getContext();
                    }
                } catch (Exception e10) {
                    p0.b(this.f29303a, e10.getMessage());
                }
            }
            if (d10 == null) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("url");
                int optInt = jSONObject.optInt("type");
                if (optInt == 1) {
                    com.mbridge.msdk.click.c.c(d10, optString);
                } else if (optInt == 2) {
                    com.mbridge.msdk.click.c.e(d10, optString);
                }
            } catch (JSONException e11) {
                p0.b(this.f29303a, e11.getMessage());
            } catch (Throwable th2) {
                p0.b(this.f29303a, th2.getMessage());
            }
        }
    }

    public void reportUrls(Object obj, String str) {
        boolean z10;
        boolean z11;
        p0.a(this.f29303a, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    int optInt = jSONObject.optInt("type");
                    String a10 = u0.a(jSONObject.optString("url"), "&tun=", l0.y() + "");
                    int optInt2 = jSONObject.optInt("report");
                    CampaignEx campaignEx = null;
                    if (optInt2 == 0) {
                        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list = this.f29305c;
                        if (list != null) {
                            campaignEx = list.get(0);
                        }
                        CampaignEx campaignEx2 = campaignEx;
                        if (optInt != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        com.mbridge.msdk.click.a.a(d10, campaignEx2, "", a10, false, z11);
                    } else {
                        Context d11 = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list2 = this.f29305c;
                        if (list2 != null) {
                            campaignEx = list2.get(0);
                        }
                        CampaignEx campaignEx3 = campaignEx;
                        if (optInt != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        com.mbridge.msdk.click.a.a(d11, campaignEx3, "", a10, false, z10, optInt2);
                    }
                }
                f.a().b(obj, c.a(0));
            } catch (Throwable th2) {
                p0.b(this.f29303a, "reportUrls", th2);
            }
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(optInt);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "toggleCloseBtn", th2);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
        if (aVar != null) {
            aVar.triggerCloseBtn(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        int i10;
        if (z10) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
            if (aVar != null) {
                aVar.toggleCloseBtn(i10);
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "useCustomClose", th2);
        }
    }

    public void a(int i10) {
        this.f29309g = i10;
    }

    public List<CampaignEx> b() {
        return this.f29305c;
    }

    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b);
            }
        } catch (Throwable th2) {
            p0.b(this.f29303a, "onJSBridgeConnect", th2);
        }
    }

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.f29312j = aVar;
        }
    }

    public com.mbridge.msdk.splash.middle.a a() {
        return this.f29312j;
    }

    public void a(List<CampaignEx> list) {
        this.f29305c = list;
    }

    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i10 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.splash.middle.a aVar = this.f29312j;
            if (aVar != null) {
                aVar.a(i10);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }
}
