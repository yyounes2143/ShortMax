package com.mbridge.msdk.splash.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SplashSignalUtils.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f29316a = "SplashSignalUtils";

    /* renamed from: b  reason: collision with root package name */
    private static int f29317b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static int f29318c = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashSignalUtils.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29319a;

        a(CampaignEx campaignEx) {
            this.f29319a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a10 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (a10 != null) {
                    if (!a10.a(this.f29319a.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f29319a.getId());
                        gVar.b(this.f29319a.getFca());
                        gVar.c(this.f29319a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        a10.b(gVar);
                    } else {
                        a10.b(this.f29319a.getId());
                    }
                }
                c.b(this.f29319a.getCampaignUnitId(), this.f29319a);
            } catch (Throwable th2) {
                p0.b(c.f29316a, th2.getMessage(), th2);
            }
        }
    }

    public static void b(Object obj, JSONObject jSONObject) {
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

    public static void a(Object obj, JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        JSONArray jSONArray;
        int i10;
        boolean z10;
        String str4;
        String str5 = "";
        JSONObject jSONObject2 = new JSONObject();
        String str6 = "message";
        int i11 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put(Module.ResponseKey.Code, 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e10) {
                p0.a(f29316a, e10.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put(Module.ResponseKey.Code, 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray2 = jSONObject.getJSONArray("resource");
            try {
                if (jSONArray2 != null) {
                    try {
                        if (jSONArray2.length() > 0) {
                            JSONArray jSONArray3 = new JSONArray();
                            int length = jSONArray2.length();
                            int i12 = 0;
                            while (i12 < length) {
                                JSONObject jSONObject3 = jSONArray2.getJSONObject(i12);
                                String optString = jSONObject3.optString("ref", str5);
                                int i13 = jSONObject3.getInt("type");
                                JSONObject jSONObject4 = new JSONObject();
                                if (i13 == i11 && !TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject5 = new JSONObject();
                                    m b10 = com.mbridge.msdk.foundation.db.m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(optString);
                                    if (b10 != null) {
                                        jSONArray = jSONArray2;
                                        i10 = length;
                                        p0.a(f29316a, "VideoBean not null");
                                        jSONObject5.put("type", 1);
                                        jSONObject5.put("videoDataLength", b10.d());
                                        String e11 = b10.e();
                                        str3 = str6;
                                        if (TextUtils.isEmpty(e11)) {
                                            p0.a(f29316a, "VideoPath null");
                                            jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str5);
                                            jSONObject5.put("path4Web", str5);
                                            str2 = str5;
                                        } else {
                                            str2 = str5;
                                            p0.a(f29316a, "VideoPath not null");
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
                                        jSONArray3.put(jSONObject4);
                                    } else {
                                        str2 = str5;
                                        str3 = str6;
                                        jSONArray = jSONArray2;
                                        i10 = length;
                                        z10 = false;
                                        p0.a(f29316a, "VideoBean null");
                                    }
                                } else {
                                    str2 = str5;
                                    str3 = str6;
                                    jSONArray = jSONArray2;
                                    i10 = length;
                                    z10 = false;
                                    if (i13 == 2 && !TextUtils.isEmpty(optString)) {
                                        JSONObject jSONObject6 = new JSONObject();
                                        jSONObject6.put("type", 2);
                                        jSONObject6.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, H5DownLoadManager.getInstance().getH5ResAddress(optString) == null ? str2 : H5DownLoadManager.getInstance().getH5ResAddress(optString));
                                        jSONObject4.put(optString, jSONObject6);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i13 == 3 && !TextUtils.isEmpty(optString)) {
                                        File file = new File(optString);
                                        if (file.exists() && file.isFile() && file.canRead()) {
                                            p0.a(f29316a, "getFileInfo Mraid file " + optString);
                                            str4 = "file:////" + optString;
                                        } else {
                                            str4 = str2;
                                        }
                                        JSONObject jSONObject7 = new JSONObject();
                                        jSONObject7.put("type", 3);
                                        jSONObject7.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str4);
                                        jSONObject4.put(optString, jSONObject7);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i13 == 4 && !TextUtils.isEmpty(optString)) {
                                        JSONObject jSONObject8 = new JSONObject();
                                        jSONObject8.put("type", 4);
                                        jSONObject8.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, t0.a(optString) == null ? str2 : t0.a(optString));
                                        jSONObject4.put(optString, jSONObject8);
                                        jSONArray3.put(jSONObject4);
                                    }
                                }
                                i12++;
                                jSONArray2 = jSONArray;
                                length = i10;
                                str6 = str3;
                                str5 = str2;
                                i11 = 1;
                            }
                            jSONObject2.put("resource", jSONArray3);
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        String str7 = str6;
                        str = str7;
                        try {
                            jSONObject2.put(Module.ResponseKey.Code, 1);
                            jSONObject2.put(str, th.getLocalizedMessage());
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        } catch (JSONException e12) {
                            p0.a(f29316a, e12.getMessage());
                            return;
                        }
                    }
                }
                str = 1;
                try {
                    try {
                        jSONObject2.put(Module.ResponseKey.Code, 1);
                        str = "message";
                        try {
                            jSONObject2.put(str, "resource is null");
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        } catch (JSONException e13) {
                            e = e13;
                            p0.a(f29316a, e.getMessage());
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        jSONObject2.put(Module.ResponseKey.Code, 1);
                        jSONObject2.put(str, th.getLocalizedMessage());
                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                    }
                } catch (JSONException e14) {
                    e = e14;
                    str = "message";
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            str = "message";
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f29317b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            a(obj, e10.getMessage());
            p0.a(f29316a, e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f27062m == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, AdmobPreloadConfig.APP_OPEN);
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
            p0.b(f29316a, "code to string is error");
        }
        return "";
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, f29318c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a(f29316a, e10.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(WebView webView) {
        p0.b(f29316a, "fireOnSignalCommunication");
        f.a().a(webView);
    }
}
