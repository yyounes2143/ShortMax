package com.mbridge.msdk.advanced.signal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.communication.c;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NativeAdvancedSignalCommunicationImpl.java */
/* loaded from: classes4.dex */
public class b extends c {

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Context> f25919c;

    /* renamed from: d  reason: collision with root package name */
    private List<CampaignEx> f25920d;

    /* renamed from: e  reason: collision with root package name */
    private String f25921e;

    /* renamed from: f  reason: collision with root package name */
    private String f25922f;

    /* renamed from: g  reason: collision with root package name */
    private int f25923g;

    /* renamed from: h  reason: collision with root package name */
    private int f25924h;

    /* renamed from: j  reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.a f25926j;

    /* renamed from: k  reason: collision with root package name */
    private NativeAdvancedExpandDialog f25927k;

    /* renamed from: b  reason: collision with root package name */
    private String f25918b = "NativeAdvancedJSBridgeImpl";

    /* renamed from: i  reason: collision with root package name */
    private int f25925i = 5;

    /* compiled from: NativeAdvancedSignalCommunicationImpl.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f25928a;

        a(ArrayList arrayList) {
            this.f25928a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f25928a.iterator();
                while (it.hasNext()) {
                    a10.b((String) it.next());
                }
            } catch (Exception unused) {
                p0.b(b.this.f25918b, "campain can't insert db");
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f25922f = str;
        this.f25921e = str2;
        this.f25919c = new WeakReference<>(context);
    }

    public void b(int i10) {
        this.f25925i = i10;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b);
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "onSignalCommunicationConnect", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void click(Object obj, String str) {
        CampaignEx campaignEx;
        JSONObject jSONObject;
        try {
            List<CampaignEx> list = this.f25920d;
            if (list != null && list.size() > 0) {
                campaignEx = this.f25920d.get(0);
            } else {
                campaignEx = null;
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (campaignEx != null) {
                        jSONObject = CampaignEx.campaignToJsonObject(campaignEx);
                    } else {
                        jSONObject = new JSONObject();
                    }
                    JSONObject jSONObject2 = new JSONObject(str).getJSONObject("pt");
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.put(next, jSONObject2.getString(next));
                    }
                    CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObject);
                    String optString = jSONObject.optString("unitId");
                    if (!TextUtils.isEmpty(optString)) {
                        parseCampaignWithBackData.setCampaignUnitId(optString);
                    }
                    campaignEx = parseCampaignWithBackData;
                } catch (JSONException e10) {
                    p0.b(this.f25918b, e10.getMessage());
                }
                com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
                if (aVar != null) {
                    aVar.a(campaignEx);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        p0.b(this.f25918b, "close");
        try {
            com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "close", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void d(Object obj, String str) {
        String str2 = this.f25918b;
        p0.a(str2, "sendImpressions:" + str);
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    String string = jSONArray.getString(i10);
                    for (CampaignEx campaignEx : this.f25920d) {
                        if (campaignEx.getId().equals(string)) {
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.f25921e, campaignEx, "h5_native");
                            arrayList.add(string);
                        }
                    }
                }
                new Thread(new a(arrayList)).start();
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "sendImpressions", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f25919c;
            if (weakReference != null && weakReference.get() != null) {
                NativeAdvancedExpandDialog nativeAdvancedExpandDialog = this.f25927k;
                if (nativeAdvancedExpandDialog != null && nativeAdvancedExpandDialog.isShowing()) {
                    return;
                }
                NativeAdvancedExpandDialog nativeAdvancedExpandDialog2 = new NativeAdvancedExpandDialog(this.f25919c.get(), bundle, this.f25926j);
                this.f25927k = nativeAdvancedExpandDialog2;
                nativeAdvancedExpandDialog2.setCampaignList(this.f25921e, this.f25920d);
                this.f25927k.show();
                com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
                if (aVar != null) {
                    aVar.a(true);
                }
                com.mbridge.msdk.advanced.report.a.a(this.f25921e, getMraidCampaign(), str);
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "expand", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void getFileInfo(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is empty");
            return;
        }
        try {
            com.mbridge.msdk.advanced.signal.a.a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            p0.a(this.f25918b, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f25920d;
        if (list != null && !list.isEmpty()) {
            return this.f25920d.get(0);
        }
        return null;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.advanced.common.b bVar = new com.mbridge.msdk.advanced.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f25923g);
            jSONObject2.put("customURLScheme", 1);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f25920d));
            l a10 = h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f25921e);
            if (a10 == null) {
                a10 = l.k(this.f25921e);
            }
            if (!TextUtils.isEmpty(this.f25922f)) {
                a10.d(this.f25922f);
            }
            a10.e(this.f25921e);
            a10.j(this.f25925i);
            a10.a(this.f25924h);
            jSONObject.put("unitSetting", a10.M());
            String e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e10)) {
                jSONObject.put("appSetting", new JSONObject(e10));
            }
            jSONObject.put("sdk_info", com.mbridge.msdk.mbsignalcommon.base.d.f28129a);
            String str2 = this.f25918b;
            p0.b(str2, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            p0.b(this.f25918b, "init", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void install(Object obj, String str) {
        CampaignEx campaignEx;
        JSONObject jSONObject;
        p0.b(this.f25918b, "install");
        try {
            List<CampaignEx> list = this.f25920d;
            if (list != null && list.size() > 0) {
                campaignEx = this.f25920d.get(0);
            } else {
                campaignEx = null;
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    if (campaignEx != null) {
                        jSONObject = CampaignEx.campaignToJsonObject(campaignEx);
                    } else {
                        jSONObject = new JSONObject();
                    }
                    JSONObject jSONObject2 = new JSONObject(str).getJSONObject("pt");
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.put(next, jSONObject2.getString(next));
                    }
                    CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObject);
                    String optString = jSONObject.optString("unitId");
                    if (!TextUtils.isEmpty(optString)) {
                        parseCampaignWithBackData.setCampaignUnitId(optString);
                    }
                    campaignEx = parseCampaignWithBackData;
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
                com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
                if (aVar != null) {
                    aVar.a(campaignEx);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "install", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void readyStatus(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        try {
            if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b) != null) {
                try {
                    windVaneWebView.getWebViewListener().a(windVaneWebView, new JSONObject(str).getInt("isReady"));
                } catch (Exception unused) {
                    windVaneWebView.getWebViewListener().a(windVaneWebView, 2);
                }
            }
        } catch (Throwable th2) {
            p0.a(this.f25918b, th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void reportUrls(Object obj, String str) {
        boolean z10;
        boolean z11;
        p0.a(this.f25918b, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is null");
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
                        List<CampaignEx> list = this.f25920d;
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
                        List<CampaignEx> list2 = this.f25920d;
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
                f.a().b(obj, d.a(0));
            } catch (Throwable th2) {
                p0.b(this.f25918b, "reportUrls", th2);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(optInt);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void triggerCloseBtn(Object obj, String str) {
        if (this.f25926j != null) {
            com.mbridge.msdk.advanced.signal.a.a(obj);
            this.f25926j.triggerCloseBtn(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z10) {
        int i10;
        try {
            if (this.f25924h == -1) {
                if (z10) {
                    i10 = 2;
                } else {
                    i10 = 1;
                }
                com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(i10);
                }
            }
        } catch (Throwable th2) {
            p0.b(this.f25918b, "useCustomClose", th2);
        }
    }

    public void a(int i10) {
        this.f25924h = i10;
    }

    public void a(com.mbridge.msdk.advanced.middle.a aVar) {
        if (aVar != null) {
            this.f25926j = aVar;
        }
    }

    public void a(List<CampaignEx> list) {
        this.f25920d = list;
    }

    public List<CampaignEx> a() {
        return this.f25920d;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.b
    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i10 = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.advanced.middle.a aVar = this.f25926j;
            if (aVar != null) {
                aVar.a(i10);
            }
        } catch (JSONException e10) {
            p0.b(this.f25918b, "resetCountdown", e10);
        }
    }
}
