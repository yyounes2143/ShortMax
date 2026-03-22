package com.mbridge.msdk.mbbanner.common.communication;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbsignalcommon.communication.c;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BannerSignalCommunicationImpl.java */
/* loaded from: classes5.dex */
public class b extends c {

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Context> f27728b;

    /* renamed from: c  reason: collision with root package name */
    private List<CampaignEx> f27729c;

    /* renamed from: d  reason: collision with root package name */
    private String f27730d;

    /* renamed from: e  reason: collision with root package name */
    private String f27731e;

    /* renamed from: f  reason: collision with root package name */
    private int f27732f;

    /* renamed from: g  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.a f27733g;

    /* renamed from: h  reason: collision with root package name */
    private BannerExpandDialog f27734h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f27735i = false;

    /* compiled from: BannerSignalCommunicationImpl.java */
    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f27736a;

        a(ArrayList arrayList) {
            this.f27736a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                Iterator it = this.f27736a.iterator();
                while (it.hasNext()) {
                    a10.b((String) it.next());
                }
            } catch (Exception e10) {
                p0.b("BannerSignalCommunicationImpl", e10.getMessage());
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f27730d = str;
        this.f27731e = str2;
        this.f27728b = new WeakReference<>(context);
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.a aVar) {
        if (aVar != null) {
            this.f27733g = aVar;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void click(Object obj, String str) {
        CampaignEx campaignEx;
        p0.b("BannerSignalCommunicationImpl", "click");
        try {
            List<CampaignEx> list = this.f27729c;
            if (list == null) {
                return;
            }
            if (list.size() > 0) {
                campaignEx = this.f27729c.get(0);
            } else {
                campaignEx = null;
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONObject campaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                    JSONObject jSONObject = new JSONObject(str).getJSONObject("pt");
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
                com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
                if (aVar != null) {
                    aVar.a(campaignEx);
                }
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "click", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        p0.b("BannerSignalCommunicationImpl", "close");
        try {
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "close", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void d(Object obj, String str) {
        p0.a("BannerSignalCommunicationImpl", "sendImpressions:" + str);
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    String string = jSONArray.getString(i10);
                    for (CampaignEx campaignEx : this.f27729c) {
                        if (campaignEx.getId().equals(string)) {
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.f27731e, campaignEx, "banner");
                            arrayList.add(string);
                        }
                    }
                }
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(arrayList));
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "sendImpressions", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z10) {
        Context context;
        try {
            String str2 = "";
            if (getMraidCampaign() != null) {
                if (TextUtils.isEmpty(getMraidCampaign().getBannerHtml())) {
                    str2 = getMraidCampaign().getBannerUrl();
                } else {
                    str2 = "file:////" + getMraidCampaign().getBannerHtml();
                }
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                str2 = str;
            }
            bundle.putString("url", str2);
            bundle.putBoolean("shouldUseCustomClose", z10);
            WeakReference<Context> weakReference = this.f27728b;
            if (weakReference != null && (context = weakReference.get()) != null) {
                BannerExpandDialog bannerExpandDialog = this.f27734h;
                if (bannerExpandDialog != null && bannerExpandDialog.isShowing()) {
                    return;
                }
                BannerExpandDialog bannerExpandDialog2 = new BannerExpandDialog(context, bundle, this.f27733g);
                this.f27734h = bannerExpandDialog2;
                bannerExpandDialog2.setCampaignList(this.f27731e, this.f27729c);
                this.f27734h.show();
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
            if (aVar != null) {
                aVar.a(true);
            }
            com.mbridge.msdk.mbbanner.common.report.a.a(this.f27731e, getMraidCampaign(), str);
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "expand", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void getFileInfo(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            d.a(obj, "params is empty");
            return;
        }
        try {
            a(obj, new JSONObject(str));
        } catch (Throwable th2) {
            p0.a("BannerSignalCommunicationImpl", th2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.f27729c;
        if (list != null && list.size() > 0) {
            return this.f27729c.get(0);
        }
        return null;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void init(Object obj, String str) {
        p0.b("BannerSignalCommunicationImpl", "BANNER INIT INVOKE");
        try {
            JSONObject jSONObject = new JSONObject();
            t tVar = new t(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f27732f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", tVar.a());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.f27729c));
            l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f27731e);
            if (e10 == null) {
                e10 = l.i(this.f27731e);
            }
            if (!TextUtils.isEmpty(this.f27730d)) {
                e10.d(this.f27730d);
            }
            jSONObject.put("unitSetting", e10.M());
            String e11 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e11)) {
                jSONObject.put("appSetting", new JSONObject(e11));
            }
            jSONObject.put("sdk_info", com.mbridge.msdk.mbsignalcommon.base.d.f28129a);
            p0.b("BannerSignalCommunicationImpl", "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "init", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        p0.b("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN);
        try {
            p0.b("BannerSignalCommunicationImpl", str);
            if (this.f27729c.size() > 1) {
                com.mbridge.msdk.foundation.controller.c.m().d().startActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str)));
                str = null;
            }
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
            if (aVar != null) {
                aVar.a(true, str);
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN, th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void readyStatus(Object obj, String str) {
        if (obj != null) {
            try {
                int optInt = new JSONObject(str).optInt("isReady", 1);
                f.a().b(obj, d.a(0));
                com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
                if (aVar != null) {
                    aVar.readyStatus(optInt);
                }
            } catch (Throwable th2) {
                p0.b("BannerSignalCommunicationImpl", "readyStatus", th2);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void reportUrls(Object obj, String str) {
        boolean z10;
        boolean z11;
        p0.a("BannerSignalCommunicationImpl", "reportUrls:" + str);
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
                        List<CampaignEx> list = this.f27729c;
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
                        List<CampaignEx> list2 = this.f27729c;
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
                p0.b("BannerSignalCommunicationImpl", "reportUrls", th2);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void toggleCloseBtn(Object obj, String str) {
        p0.b("BannerSignalCommunicationImpl", "toggleCloseBtn");
        try {
            if (!TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
                if (aVar != null) {
                    aVar.toggleCloseBtn(optInt);
                }
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "toggleCloseBtn", th2);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.b
    public void triggerCloseBtn(Object obj, String str) {
        p0.b("BannerSignalCommunicationImpl", "triggerCloseBtn");
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("state");
                com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
                if (aVar != null) {
                    aVar.triggerCloseBtn(optString);
                }
                f.a().b(obj, d.a(0));
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "triggerCloseBtn", th2);
            f.a().b(obj, d.a(-1));
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
            com.mbridge.msdk.mbbanner.common.listener.a aVar = this.f27733g;
            if (aVar != null) {
                aVar.toggleCloseBtn(i10);
            }
        } catch (Throwable th2) {
            p0.b("BannerSignalCommunicationImpl", "useCustomClose", th2);
        }
    }

    public void a(List<CampaignEx> list) {
        this.f27729c = list;
    }

    public void a(int i10) {
        this.f27732f = i10;
    }

    public void a() {
        if (this.f27733g != null) {
            this.f27733g = null;
        }
        if (this.f27734h != null) {
            this.f27734h = null;
        }
    }

    public static void a(Object obj, JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        boolean z10;
        String str5;
        JSONObject jSONObject2 = new JSONObject();
        String str6 = "message";
        String str7 = Module.ResponseKey.Code;
        int i11 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e10) {
                p0.a("BannerSignalCommunicationImpl", e10.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put(Module.ResponseKey.Code, 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray = jSONObject.getJSONArray("resource");
            if (jSONArray != null) {
                try {
                    if (jSONArray.length() > 0) {
                        JSONArray jSONArray2 = new JSONArray();
                        int length = jSONArray.length();
                        int i12 = 0;
                        while (i12 < length) {
                            JSONObject jSONObject3 = jSONArray.getJSONObject(i12);
                            String optString = jSONObject3.optString("ref", "");
                            int i13 = jSONObject3.getInt("type");
                            JSONObject jSONObject4 = new JSONObject();
                            JSONArray jSONArray3 = jSONArray;
                            if (i13 == i11 && !TextUtils.isEmpty(optString)) {
                                JSONObject jSONObject5 = new JSONObject();
                                m b10 = com.mbridge.msdk.foundation.db.m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(optString);
                                if (b10 != null) {
                                    i10 = length;
                                    p0.a("BannerSignalCommunicationImpl", "VideoBean not null");
                                    jSONObject5.put("type", 1);
                                    str3 = str6;
                                    try {
                                        jSONObject5.put("videoDataLength", b10.d());
                                        String e11 = b10.e();
                                        str4 = str7;
                                        if (TextUtils.isEmpty(e11)) {
                                            try {
                                                p0.a("BannerSignalCommunicationImpl", "VideoPath null");
                                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "");
                                                jSONObject5.put("path4Web", "");
                                            } catch (Throwable th2) {
                                                th = th2;
                                                str = str3;
                                                str2 = str4;
                                                try {
                                                    jSONObject2.put(str2, 1);
                                                    jSONObject2.put(str, th.getLocalizedMessage());
                                                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                                } catch (JSONException e12) {
                                                    p0.a("BannerSignalCommunicationImpl", e12.getMessage());
                                                    return;
                                                }
                                            }
                                        } else {
                                            p0.a("BannerSignalCommunicationImpl", "VideoPath not null");
                                            jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, e11);
                                            jSONObject5.put("path4Web", e11);
                                        }
                                        if (b10.b() == 5) {
                                            jSONObject5.put("downloaded", 1);
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                            jSONObject5.put("downloaded", 0);
                                        }
                                        jSONObject4.put(optString, jSONObject5);
                                        jSONArray2.put(jSONObject4);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        str4 = str7;
                                        str = str3;
                                        str2 = str4;
                                        jSONObject2.put(str2, 1);
                                        jSONObject2.put(str, th.getLocalizedMessage());
                                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                                    }
                                } else {
                                    str3 = str6;
                                    str4 = str7;
                                    i10 = length;
                                    z10 = false;
                                    p0.a("BannerSignalCommunicationImpl", "VideoBean null");
                                }
                            } else {
                                str3 = str6;
                                str4 = str7;
                                i10 = length;
                                z10 = false;
                                if (i13 == 2 && !TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject6 = new JSONObject();
                                    jSONObject6.put("type", 2);
                                    jSONObject6.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, H5DownLoadManager.getInstance().getResAddress(optString) == null ? "" : H5DownLoadManager.getInstance().getH5ResAddress(optString));
                                    jSONObject4.put(optString, jSONObject6);
                                    jSONArray2.put(jSONObject4);
                                } else if (i13 == 3 && !TextUtils.isEmpty(optString)) {
                                    File file = new File(optString);
                                    if (file.exists() && file.isFile() && file.canRead()) {
                                        p0.a("BannerSignalCommunicationImpl", "getFileInfo Mraid file " + optString);
                                        str5 = "file:////" + optString;
                                    } else {
                                        str5 = "";
                                    }
                                    JSONObject jSONObject7 = new JSONObject();
                                    jSONObject7.put("type", 3);
                                    jSONObject7.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str5);
                                    jSONObject4.put(optString, jSONObject7);
                                    jSONArray2.put(jSONObject4);
                                } else if (i13 == 4 && !TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject8 = new JSONObject();
                                    jSONObject8.put("type", 4);
                                    jSONObject8.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, t0.a(optString) == null ? "" : t0.a(optString));
                                    jSONObject4.put(optString, jSONObject8);
                                    jSONArray2.put(jSONObject4);
                                }
                            }
                            i12++;
                            jSONArray = jSONArray3;
                            length = i10;
                            str6 = str3;
                            str7 = str4;
                            i11 = 1;
                        }
                        str3 = str6;
                        str4 = str7;
                        jSONObject2.put("resource", jSONArray2);
                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        return;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    str3 = str6;
                }
            }
            str2 = Module.ResponseKey.Code;
            str = 1;
        } catch (Throwable th5) {
            th = th5;
            str = "message";
            str2 = Module.ResponseKey.Code;
        }
        try {
            try {
                jSONObject2.put(str2, 1);
                str = "message";
                try {
                    jSONObject2.put(str, "resource is null");
                    f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                } catch (JSONException e13) {
                    e = e13;
                    p0.a("BannerSignalCommunicationImpl", e.getMessage());
                }
            } catch (Throwable th6) {
                th = th6;
                jSONObject2.put(str2, 1);
                jSONObject2.put(str, th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (JSONException e14) {
            e = e14;
            str = "message";
        } catch (Throwable th7) {
            th = th7;
            str = "message";
            jSONObject2.put(str2, 1);
            jSONObject2.put(str, th.getLocalizedMessage());
            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        }
    }
}
