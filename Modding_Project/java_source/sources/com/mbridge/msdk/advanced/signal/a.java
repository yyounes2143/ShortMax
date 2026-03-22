package com.mbridge.msdk.advanced.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.ss.texturerender.TextureRenderKeys;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: NativeAdvancedJsUtils.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f25917a = "NativeAdvancedJsUtils";

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
                p0.a(f25917a, e10.getMessage());
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
                                    m b10 = com.mbridge.msdk.foundation.db.m.a(g.a(c.m().d())).b(optString);
                                    if (b10 != null) {
                                        jSONArray = jSONArray2;
                                        i10 = length;
                                        p0.a(f25917a, "VideoBean not null");
                                        jSONObject5.put("type", 1);
                                        jSONObject5.put("videoDataLength", b10.d());
                                        String e11 = b10.e();
                                        str3 = str6;
                                        if (TextUtils.isEmpty(e11)) {
                                            p0.a(f25917a, "VideoPath null");
                                            jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str5);
                                            jSONObject5.put("path4Web", str5);
                                            str2 = str5;
                                        } else {
                                            str2 = str5;
                                            p0.a(f25917a, "VideoPath not null");
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
                                        p0.a(f25917a, "VideoBean null");
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
                                            p0.a(f25917a, "getFileInfo Mraid file " + optString);
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
                            p0.a(f25917a, e12.getMessage());
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
                            p0.a(f25917a, e.getMessage());
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

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(WebView webView, String str, String str2, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sq", 1);
            jSONObject.put(TextureRenderKeys.KEY_IS_ACTION, str);
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(str2, obj);
                jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, jSONObject2);
            }
            if (TextUtils.isEmpty(str2) && obj != null) {
                jSONObject.put(MetricsSQLiteCacheKt.METRICS_PARAMS, obj);
            }
            f.a().a(webView, "thirdPartyCalled", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e10) {
            p0.b(f25917a, e10.getMessage());
        }
    }

    public static void a(WebView webView) {
        p0.b(f25917a, "fireOnJSBridgeConnected");
        f.a().a(webView);
    }

    public static void a(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, d.f28194b);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            p0.a(f25917a, e10.getMessage());
        }
    }
}
