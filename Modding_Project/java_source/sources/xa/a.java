package xa;

import ab.d;
import ab.g;
import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.framework.network.grs.IQueryUrlsCallBack;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import ya.c;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final String f70418e = "a";

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f70419a;

    /* renamed from: b  reason: collision with root package name */
    private ya.a f70420b;

    /* renamed from: c  reason: collision with root package name */
    private g f70421c;

    /* renamed from: d  reason: collision with root package name */
    private c f70422d;

    /* renamed from: xa.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static class C0966a implements xa.b {

        /* renamed from: a  reason: collision with root package name */
        String f70423a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f70424b;

        /* renamed from: c  reason: collision with root package name */
        IQueryUrlsCallBack f70425c;

        /* renamed from: d  reason: collision with root package name */
        Context f70426d;

        /* renamed from: e  reason: collision with root package name */
        GrsBaseInfo f70427e;

        /* renamed from: f  reason: collision with root package name */
        ya.a f70428f;

        C0966a(String str, Map<String, String> map, IQueryUrlsCallBack iQueryUrlsCallBack, Context context, GrsBaseInfo grsBaseInfo, ya.a aVar) {
            this.f70423a = str;
            this.f70424b = map;
            this.f70425c = iQueryUrlsCallBack;
            this.f70426d = context;
            this.f70427e = grsBaseInfo;
            this.f70428f = aVar;
        }

        @Override // xa.b
        public void a() {
            Map<String, String> map = this.f70424b;
            if (map != null && !map.isEmpty()) {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Return [%s] Urls: %s", this.f70423a, StringUtils.anonymizeMessage(new JSONObject(this.f70424b).toString()));
                this.f70425c.onCallBackSuccess(this.f70424b);
            } else if (this.f70424b == null) {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Get URL from Local JSON File");
                Map<String, String> c10 = za.b.d(this.f70426d.getPackageName()).c(this.f70426d, this.f70428f, this.f70427e, this.f70423a, true);
                if (c10 == null || c10.isEmpty()) {
                    Logger.e(a.f70418e, "The serviceName[%s] is not configured in the JSON configuration files to reveal all the details", this.f70423a);
                }
                if (c10 == null) {
                    c10 = new ConcurrentHashMap<>();
                }
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Return [%s] Urls: %s", this.f70423a, StringUtils.anonymizeMessage(new JSONObject(c10).toString()));
                this.f70425c.onCallBackSuccess(c10);
            } else {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls：Return [%s] Urls is Empty", this.f70423a);
                this.f70425c.onCallBackFail(-3);
            }
        }

        @Override // xa.b
        public void a(d dVar) {
            IQueryUrlsCallBack iQueryUrlsCallBack;
            String y10 = dVar.y();
            Map<String, String> g10 = a.g(y10, this.f70423a);
            if (g10.isEmpty()) {
                Map<String, String> map = this.f70424b;
                if (map == null || map.isEmpty()) {
                    if (this.f70424b == null) {
                        if (!TextUtils.isEmpty(y10)) {
                            Logger.e(a.f70418e, "The serviceName[%s] is not configured on the GRS server.", this.f70423a);
                        }
                        Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Get URL from Local JSON File");
                        Map<String, String> c10 = za.b.d(this.f70426d.getPackageName()).c(this.f70426d, this.f70428f, this.f70427e, this.f70423a, true);
                        if (c10 == null || c10.isEmpty()) {
                            Logger.e(a.f70418e, "The serviceName[%s] is not configured in the JSON configuration files to reveal all the details", this.f70423a);
                        }
                        if (c10 == null) {
                            c10 = new ConcurrentHashMap<>();
                        }
                        Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Return [%s] Urls: %s", this.f70423a, StringUtils.anonymizeMessage(new JSONObject(c10).toString()));
                        this.f70425c.onCallBackSuccess(c10);
                        return;
                    }
                    Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls：Return [%s] Urls is Empty", this.f70423a);
                    this.f70425c.onCallBackFail(-5);
                    return;
                }
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Return [%s][%s] Url: %s", this.f70423a, StringUtils.anonymizeMessage(new JSONObject(this.f70424b).toString()));
                iQueryUrlsCallBack = this.f70425c;
                g10 = this.f70424b;
            } else {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrls: Get URL from Current Called GRS Server Return [%s] Urls: %s", this.f70423a, StringUtils.anonymizeMessage(new JSONObject(g10).toString()));
                iQueryUrlsCallBack = this.f70425c;
            }
            iQueryUrlsCallBack.onCallBackSuccess(g10);
        }
    }

    /* loaded from: classes5.dex */
    private static class b implements xa.b {

        /* renamed from: a  reason: collision with root package name */
        String f70429a;

        /* renamed from: b  reason: collision with root package name */
        String f70430b;

        /* renamed from: c  reason: collision with root package name */
        IQueryUrlCallBack f70431c;

        /* renamed from: d  reason: collision with root package name */
        String f70432d;

        /* renamed from: e  reason: collision with root package name */
        Context f70433e;

        /* renamed from: f  reason: collision with root package name */
        GrsBaseInfo f70434f;

        /* renamed from: g  reason: collision with root package name */
        ya.a f70435g;

        b(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, String str3, Context context, GrsBaseInfo grsBaseInfo, ya.a aVar) {
            this.f70429a = str;
            this.f70430b = str2;
            this.f70431c = iQueryUrlCallBack;
            this.f70432d = str3;
            this.f70433e = context;
            this.f70434f = grsBaseInfo;
            this.f70435g = aVar;
        }

        @Override // xa.b
        public void a() {
            if (!TextUtils.isEmpty(this.f70432d)) {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl: Return [%s][%s] Url: %s", this.f70429a, this.f70430b, StringUtils.anonymizeMessage(this.f70432d));
                this.f70431c.onCallBackSuccess(this.f70432d);
            } else if (TextUtils.isEmpty(this.f70432d)) {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl: Get URL from Local JSON File");
                String b10 = za.b.d(this.f70433e.getPackageName()).b(this.f70433e, this.f70435g, this.f70434f, this.f70429a, this.f70430b, true);
                if (b10 == null || b10.isEmpty()) {
                    Logger.e(a.f70418e, "The serviceName[%s][%s] is not configured in the JSON configuration files to reveal all the details", this.f70429a, this.f70430b);
                }
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl: Return [%s][%s] Url: %s", this.f70429a, this.f70430b, StringUtils.anonymizeMessage(b10));
                this.f70431c.onCallBackSuccess(b10);
            } else {
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl：Return [%s][%s] Url is Empty", this.f70429a, this.f70430b);
                this.f70431c.onCallBackFail(-3);
            }
        }

        @Override // xa.b
        public void a(d dVar) {
            IQueryUrlCallBack iQueryUrlCallBack;
            String str;
            String y10 = dVar.y();
            Map<String, String> g10 = a.g(y10, this.f70429a);
            if (g10.containsKey(this.f70430b)) {
                String str2 = a.f70418e;
                String str3 = this.f70429a;
                String str4 = this.f70430b;
                Logger.i(str2, "GrsClientManager.ayncGetGrsUrl: Get URL from Current Called GRS Server, Return [%s][%s] Url: %s", str3, str4, StringUtils.anonymizeMessage(g10.get(str4)));
                iQueryUrlCallBack = this.f70431c;
                str = g10.get(this.f70430b);
            } else if (TextUtils.isEmpty(this.f70432d)) {
                if (TextUtils.isEmpty(this.f70432d)) {
                    if (!TextUtils.isEmpty(y10)) {
                        Logger.e(a.f70418e, "The serviceName[%s][%s] is not configured on the GRS server.", this.f70429a, this.f70430b);
                    }
                    Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl: Get URL from Local JSON File");
                    String b10 = za.b.d(this.f70433e.getPackageName()).b(this.f70433e, this.f70435g, this.f70434f, this.f70429a, this.f70430b, true);
                    if (b10 == null || b10.isEmpty()) {
                        Logger.e(a.f70418e, "The serviceName[%s][%s] is not configured in the JSON configuration files to reveal all the details", this.f70429a, this.f70430b);
                    }
                    Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl: Return [%s][%s] Url: %s", this.f70429a, this.f70430b, StringUtils.anonymizeMessage(b10));
                    this.f70431c.onCallBackSuccess(b10);
                    return;
                }
                Logger.i(a.f70418e, "GrsClientManager.ayncGetGrsUrl：Return [%s][%s] Url is Empty", this.f70429a, this.f70430b);
                this.f70431c.onCallBackFail(-5);
                return;
            } else {
                String str5 = a.f70418e;
                String str6 = this.f70429a;
                String str7 = this.f70430b;
                Logger.i(str5, "GrsClientManager.ayncGetGrsUrl: Return [%s][%s] Url: %s", str6, str7, StringUtils.anonymizeMessage(g10.get(str7)));
                iQueryUrlCallBack = this.f70431c;
                str = this.f70432d;
            }
            iQueryUrlCallBack.onCallBackSuccess(str);
        }
    }

    public a(GrsBaseInfo grsBaseInfo, ya.a aVar, g gVar, c cVar) {
        this.f70419a = grsBaseInfo;
        this.f70420b = aVar;
        this.f70421c = gVar;
        this.f70422d = cVar;
    }

    public static CountryCodeBean a(Context context, boolean z10) {
        return new CountryCodeBean(context, z10);
    }

    public static Map<String, Map<String, String>> e(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        if (TextUtils.isEmpty(str)) {
            Logger.v(f70418e, "isSpExpire jsonValue is null.");
            return concurrentHashMap;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (!TextUtils.isEmpty(next)) {
                    concurrentHashMap.put(next, i(jSONObject2));
                }
            }
            return concurrentHashMap;
        } catch (JSONException e10) {
            Logger.w(f70418e, "getServicesUrlsMap occur a JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return concurrentHashMap;
        }
    }

    public static Map<String, String> g(String str, String str2) {
        JSONObject jSONObject;
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            Logger.w(f70418e, "isSpExpire jsonValue from server is null.");
            return hashMap;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            if (jSONObject2.has(str2)) {
                jSONObject = jSONObject2.getJSONObject(str2);
            } else {
                jSONObject = null;
            }
            if (jSONObject == null) {
                Logger.w(f70418e, "getServiceNameUrls: paser null from server json data by {%s}.", str2);
                return hashMap;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.get(next).toString());
            }
            return hashMap;
        } catch (JSONException e10) {
            Logger.w(f70418e, "Method{getServiceNameUrls} query url from SP occur an JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return hashMap;
        }
    }

    private Map<String, String> h(String str, ya.b bVar, Context context) {
        Map<String, String> a10 = this.f70420b.a(this.f70419a, str, bVar, context);
        if (a10 != null && !a10.isEmpty()) {
            Logger.i(f70418e, "GrsClientManager.getUrlsLocal: Get URL from GRS Server Cache");
            return a10;
        }
        Map<String, String> c10 = za.b.d(context.getPackageName()).c(context, this.f70420b, this.f70419a, str, false);
        Logger.i(f70418e, "GrsClientManager.getUrlsLocal: Get URL from Local JSON File");
        if (c10 == null) {
            return new HashMap();
        }
        return c10;
    }

    public static Map<String, String> i(JSONObject jSONObject) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String obj = jSONObject.get(next).toString();
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(obj)) {
                    concurrentHashMap.put(next, obj);
                }
            }
            return concurrentHashMap;
        } catch (JSONException e10) {
            Logger.w(f70418e, "getServiceUrls occur a JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return concurrentHashMap;
        }
    }

    public String c(Context context, String str, int i10) {
        d a10 = this.f70421c.a(new cb.c(this.f70419a, context), str, this.f70422d, i10);
        if (a10 == null) {
            return "";
        }
        if (a10.B()) {
            return this.f70420b.b().a(this.f70419a.getGrsParasKey(true, true, context), "");
        }
        return a10.y();
    }

    public String d(String str, String str2, Context context, int i10) {
        ya.b bVar = new ya.b();
        String str3 = h(str, bVar, context).get(str2);
        if (bVar.b() && !TextUtils.isEmpty(str3)) {
            Logger.i(f70418e, "GrsClientManager.synGetGrsUrl: Return [%s][%s] Url: %s", str, str2, StringUtils.anonymizeMessage(str3));
            return str3;
        }
        String c10 = c(context, str, i10);
        String str4 = g(c10, str).get(str2);
        if (!TextUtils.isEmpty(str4)) {
            Logger.i(f70418e, "GrsClientManager.synGetGrsUrl: Get URL from Current Called GRS Server, Return [%s][%s] Url: %s", str, str2, StringUtils.anonymizeMessage(str4));
            return str4;
        }
        if (TextUtils.isEmpty(str3)) {
            if (!TextUtils.isEmpty(c10)) {
                Logger.e(f70418e, "The serviceName[%s][%s] is not configured on the GRS server.", str, str2);
            }
            String str5 = f70418e;
            Logger.i(str5, "GrsClientManager.synGetGrsUrl: Get URL from Local JSON File.");
            str3 = za.b.d(context.getPackageName()).b(context, this.f70420b, this.f70419a, str, str2, true);
            if (str3 == null || str3.isEmpty()) {
                Logger.e(str5, "The serviceName[%s][%s] is not configured in the JSON configuration files to reveal all the details", str, str2);
            }
        }
        Logger.i(f70418e, "GrsClientManager.synGetGrsUrl: Return [%s][%s] Url: %s", str, str2, StringUtils.anonymizeMessage(str3));
        return str3;
    }

    public Map<String, String> f(String str, Context context, int i10) {
        String str2;
        ya.b bVar = new ya.b();
        Map<String, String> h10 = h(str, bVar, context);
        if (bVar.b() && !h10.isEmpty()) {
            Logger.i(f70418e, "Return [%s] Urls: %s", str, StringUtils.anonymizeMessage(new JSONObject(h10).toString()));
            return h10;
        }
        String c10 = c(context, str, i10);
        Map<String, String> g10 = g(c10, str);
        if (!g10.isEmpty()) {
            Logger.i(f70418e, "GrsClientManager.synGetGrsUrls: Get URL from Current Called GRS Server Return [%s] Urls: %s", str, StringUtils.anonymizeMessage(new JSONObject(g10).toString()));
            return g10;
        }
        if (h10.isEmpty()) {
            if (!TextUtils.isEmpty(c10)) {
                Logger.e(f70418e, "The serviceName[%s] is not configured on the GRS server.", str);
            }
            String str3 = f70418e;
            Logger.i(str3, "GrsClientManager.synGetGrsUrls: Get URL from Local JSON File.");
            h10 = za.b.d(context.getPackageName()).c(context, this.f70420b, this.f70419a, str, true);
            if (h10 == null || h10.isEmpty()) {
                Logger.e(str3, "The serviceName[%s] is not configured in the JSON configuration files to reveal all the details", str);
            }
        }
        String str4 = f70418e;
        if (h10 != null) {
            str2 = new JSONObject(h10).toString();
        } else {
            str2 = "";
        }
        Logger.i(str4, "GrsClientManager.synGetGrsUrls: Return [%s] Urls: %s", str, StringUtils.anonymizeMessage(str2));
        return h10;
    }

    public void j(String str, IQueryUrlsCallBack iQueryUrlsCallBack, Context context, int i10) {
        ya.b bVar = new ya.b();
        Map<String, String> h10 = h(str, bVar, context);
        if (bVar.b()) {
            if (h10.isEmpty()) {
                Logger.i(f70418e, "GrsClientManager.ayncGetGrsUrls：Return [%s] Urls is Empty", str);
                iQueryUrlsCallBack.onCallBackFail(-5);
                return;
            }
            String str2 = f70418e;
            Logger.i(str2, "GrsClientManager.ayncGetGrsUrls：Return [%s] Urls: %s", str, StringUtils.anonymizeMessage(new JSONObject(h10).toString()));
            Logger.i(str2, "ayncGetGrsUrls: %s", StringUtils.anonymizeMessage(new JSONObject(h10).toString()));
            iQueryUrlsCallBack.onCallBackSuccess(h10);
            return;
        }
        this.f70421c.f(new cb.c(this.f70419a, context), new C0966a(str, h10, iQueryUrlsCallBack, context, this.f70419a, this.f70420b), str, this.f70422d, i10);
    }

    public void k(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, Context context, int i10) {
        ya.b bVar = new ya.b();
        String str3 = h(str, bVar, context).get(str2);
        if (bVar.b()) {
            if (TextUtils.isEmpty(str3)) {
                Logger.i(f70418e, "GrsClientManager.ayncGetGrsUrl：Return [%s][%s] Url is Empty", str, str2);
                iQueryUrlCallBack.onCallBackFail(-5);
                return;
            }
            Logger.i(f70418e, "GrsClientManager.ayncGetGrsUrl：Return [%s][%s] Url: %s", str, str2, StringUtils.anonymizeMessage(str3));
            iQueryUrlCallBack.onCallBackSuccess(str3);
            return;
        }
        this.f70421c.f(new cb.c(this.f70419a, context), new b(str, str2, iQueryUrlCallBack, str3, context, this.f70419a, this.f70420b), str, this.f70422d, i10);
    }
}
