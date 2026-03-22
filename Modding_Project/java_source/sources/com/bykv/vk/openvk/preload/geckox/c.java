package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.a.a.a;
import com.bykv.vk.openvk.preload.geckox.b;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.io.InputStream;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: GeckoHubUtil.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static File f11365a;

    /* renamed from: b  reason: collision with root package name */
    private static Context f11366b;

    /* renamed from: c  reason: collision with root package name */
    private static String f11367c;

    /* renamed from: g  reason: collision with root package name */
    private static final Set<String> f11368g = new HashSet(Arrays.asList("js", "css", "html", "ico", "jpeg", "jpg", "png", "gif", "woff", "svg", "ttf", "woff2", "webp", "otf", "sfnt"));

    /* renamed from: d  reason: collision with root package name */
    private Map.Entry<String, JSONObject> f11369d;

    /* renamed from: e  reason: collision with root package name */
    private Map.Entry<String, JSONObject> f11370e;

    /* renamed from: f  reason: collision with root package name */
    private INetWork f11371f;

    /* compiled from: GeckoHubUtil.java */
    /* loaded from: classes3.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static c f11372a = new c((byte) 0);
    }

    /* synthetic */ c(byte b10) {
        this();
    }

    public static c a(Context context) {
        f11366b = context;
        if (f11365a == null) {
            f11365a = new File(f11366b.getCacheDir() + File.separator + "gecko");
        }
        return a.f11372a;
    }

    private static String b(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf("?");
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    private void c(String str) {
        try {
            if (this.f11371f != null && !TextUtils.isEmpty(str)) {
                this.f11371f.syncDoGet(str);
            }
        } catch (Throwable unused) {
        }
    }

    private c() {
    }

    public static com.bykv.vk.openvk.preload.falconx.loader.a b() {
        try {
            return new com.bykv.vk.openvk.preload.falconx.loader.a(f11366b, "f36c832c8dbb162c49b46a7a6dd47fbd", f11365a);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static c a() {
        return a.f11372a;
    }

    public static void a(String str) {
        f11367c = str;
    }

    public final void a(String str, IStatisticMonitor iStatisticMonitor, Set<String> set, INetWork iNetWork) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = new b(new b.a(f11366b).b("f36c832c8dbb162c49b46a7a6dd47fbd").a("f36c832c8dbb162c49b46a7a6dd47fbd").b().b(str).a("9999999.0.0").a(new a.C0137a().a().a(com.bykv.vk.openvk.preload.geckox.a.a.b.f11306b).b()).a(f11365a).a().c(f11367c).a(iStatisticMonitor).a(iNetWork).a(SystemClock.elapsedRealtime()), (byte) 0);
        this.f11371f = iNetWork;
        com.bykv.vk.openvk.preload.geckox.a a10 = com.bykv.vk.openvk.preload.geckox.a.a(bVar);
        HashMap hashMap = new HashMap();
        LinkedList linkedList = new LinkedList();
        for (String str2 : set) {
            linkedList.add(new CheckRequestBodyModel.TargetChannel(str2));
        }
        hashMap.put("f36c832c8dbb162c49b46a7a6dd47fbd", linkedList);
        a10.a(hashMap);
    }

    private JSONObject a(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Map.Entry<String, JSONObject> entry = this.f11369d;
                if (entry == null || !str.equals(entry.getKey())) {
                    com.bykv.vk.openvk.preload.falconx.loader.a aVar = new com.bykv.vk.openvk.preload.falconx.loader.a(f11366b, "f36c832c8dbb162c49b46a7a6dd47fbd", f11365a);
                    String a10 = com.bykv.vk.openvk.preload.geckox.utils.b.a(aVar.getInputStream(str + "/manifest.json"));
                    if (TextUtils.isEmpty(a10)) {
                        return null;
                    }
                    this.f11369d = new AbstractMap.SimpleEntry(str, new JSONObject(a10));
                }
                Map.Entry<String, JSONObject> entry2 = this.f11370e;
                if (entry2 == null || !str.equals(entry2.getKey())) {
                    com.bykv.vk.openvk.preload.falconx.loader.a aVar2 = new com.bykv.vk.openvk.preload.falconx.loader.a(f11366b, "f36c832c8dbb162c49b46a7a6dd47fbd", f11365a);
                    String a11 = com.bykv.vk.openvk.preload.geckox.utils.b.a(aVar2.getInputStream(str + "/md5_url_map.json"));
                    if (TextUtils.isEmpty(a11)) {
                        return null;
                    }
                    this.f11370e = new AbstractMap.SimpleEntry(str, new JSONObject(a11));
                }
                JSONObject value = this.f11369d.getValue();
                JSONObject value2 = this.f11370e.getValue();
                String a12 = a(str2, value2);
                if (value.has(a12)) {
                    JSONObject jSONObject = value.getJSONObject(a12);
                    a(value, a12, str2);
                    return jSONObject;
                }
                String b10 = b(str2);
                if (b10 == null) {
                    return null;
                }
                String a13 = a(b10, value2);
                if (value.has(a13)) {
                    JSONObject jSONObject2 = value.getJSONObject(a13);
                    a(value, a13, str2);
                    return jSONObject2;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static String a(String str, JSONObject jSONObject) {
        try {
            return jSONObject.getJSONObject(str).getString("md5");
        } catch (Throwable unused) {
            return "";
        }
    }

    private void a(JSONObject jSONObject, String str, String str2) {
        try {
            if ("once".equals(jSONObject.getJSONObject(str).optJSONObject("cacheStrategy").optString("hitStrategy"))) {
                jSONObject.remove(str);
                c(str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(ILoader iLoader) {
        if (iLoader != null) {
            try {
                iLoader.release();
            } catch (Throwable unused) {
            }
        }
    }

    public final WebResourceResponseModel a(ILoader iLoader, String str, String str2) {
        String substring;
        try {
            if (iLoader == null) {
                return new WebResourceResponseModel(-1, null);
            }
            if (!TextUtils.isEmpty(str2) && !str2.matches("^https?:\\/\\/www\\.google-analytics\\.com/(?:ga|urchin|analytics)\\.js") && !str2.matches("^https?:\\/\\/www\\.googletagmanager\\.com\\/(gtag\\/js|gtm\\.js)") && !str2.matches("^https?:\\/\\/analytics\\.tiktok\\.com\\/i18n\\/pixel") && !str2.matches("https?:\\/\\/connect\\.facebook\\.net\\/(.*)\\/fbevents\\.js") && !str2.matches("https?:\\/\\/mc\\.yandex\\.ru\\/") && !str2.contains("jsonp") && !str2.contains("Callback") && !str2.contains("analytics.tiktok.com/i18n/pixel") && !str2.contains("google-analytics.com/analytics") && !str2.contains("connect.facebook.net")) {
                JSONObject a10 = a(str, str2);
                Set<String> set = f11368g;
                String b10 = b(str2);
                int lastIndexOf = b10.lastIndexOf(".");
                if (lastIndexOf == -1) {
                    substring = "";
                } else {
                    substring = b10.substring(lastIndexOf + 1);
                }
                int i10 = set.contains(substring) ? 2 : -1;
                if (a10 == null) {
                    return new WebResourceResponseModel(i10, null);
                }
                String optString = a10.optString("fileName", null);
                if (optString == null) {
                    return new WebResourceResponseModel(i10, null);
                }
                JSONObject jSONObject = a10.has("respHeader") ? a10.getJSONObject("respHeader") : null;
                if (jSONObject == null) {
                    return new WebResourceResponseModel(i10, null);
                }
                String str3 = str + File.separator + optString;
                InputStream inputStream = !iLoader.exist(str3) ? null : iLoader.getInputStream(str3);
                if (inputStream == null) {
                    return new WebResourceResponseModel(i10, null);
                }
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
                return new WebResourceResponseModel(i10, com.bykv.vk.openvk.preload.falconx.a.a.a(inputStream, hashMap));
            }
            return new WebResourceResponseModel(1, null);
        } catch (Throwable unused) {
            return new WebResourceResponseModel(-1, null);
        }
    }

    public static int a(ILoader iLoader, String str) {
        if (iLoader == null || str == null) {
            return 0;
        }
        try {
            com.bykv.vk.openvk.preload.falconx.loader.a aVar = new com.bykv.vk.openvk.preload.falconx.loader.a(f11366b, "f36c832c8dbb162c49b46a7a6dd47fbd", f11365a);
            return aVar.a(str + File.separator);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
