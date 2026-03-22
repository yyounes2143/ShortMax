package com.bytedance.bdtracker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.vungle.ads.internal.ConfigManager;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class r1 {

    /* renamed from: l  reason: collision with root package name */
    public static final String[] f12357l = {AppsFlyerProperties.CHANNEL, "package", "app_version"};

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f12358a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f12359b;

    /* renamed from: c  reason: collision with root package name */
    public final p1 f12360c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public volatile JSONObject f12361d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12362e;

    /* renamed from: g  reason: collision with root package name */
    public final SharedPreferences f12364g;

    /* renamed from: h  reason: collision with root package name */
    public final r4 f12365h;

    /* renamed from: i  reason: collision with root package name */
    public final d f12366i;
    @Deprecated

    /* renamed from: k  reason: collision with root package name */
    public boolean f12368k;

    /* renamed from: f  reason: collision with root package name */
    public final Set<k1> f12363f = new HashSet(32);

    /* renamed from: j  reason: collision with root package name */
    public int f12367j = 0;

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {
        public a() {
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", r1.this.f12366i.f11913m);
                jSONObject.put("did", r1.this.f12361d.optString("device_id", ""));
                jSONObject.put("bdDid", r1.this.c());
                jSONObject.put("ssid", r1.this.i());
                jSONObject.put("installId", r1.this.f());
                jSONObject.put("uuid", r1.this.k());
                jSONObject.put("uuidType", r1.this.l());
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public r1(d dVar, Context context, p1 p1Var) {
        this.f12368k = false;
        this.f12366i = dVar;
        this.f12359b = context;
        this.f12360c = p1Var;
        SharedPreferences sharedPreferences = p1Var.f12307f;
        this.f12364g = sharedPreferences;
        this.f12361d = new JSONObject();
        this.f12365h = dVar.f11904d.a(dVar, context, p1Var);
        this.f12368k = sharedPreferences.getBoolean("forbid_report_phone_detail_info", false);
        boolean z10 = p1Var.f12307f.getBoolean("is_first_app_launch", true);
        String userUniqueId = p1Var.f12304c.getUserUniqueId();
        String userUniqueIdType = p1Var.f12304c.getUserUniqueIdType();
        if (l0.b.d(userUniqueId) && z10) {
            h(userUniqueId);
        }
        if (l0.b.d(userUniqueIdType) && z10) {
            i(userUniqueIdType);
        }
        if (z10) {
            p1Var.f12307f.edit().putBoolean("is_first_app_launch", false).apply();
        }
    }

    public final String a(Set<String> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            if (it.hasNext()) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    @SuppressLint({"ApplySharedPref"})
    public void b(String str) {
        r4 r4Var = this.f12365h;
        if (r4Var instanceof n4) {
            n4 n4Var = (n4) r4Var;
            Context context = this.f12359b;
            n4Var.f12261e.D.debug(n4Var.f12263g, "DeviceParamsProvider#clearDidAndIid clearKey=" + str + " sDeviceId=" + n4.f12256j, new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                n4.f12256j = null;
                String str2 = "clear_key_prefix" + str;
                SharedPreferences a10 = g4.a(context, n4Var.f12262f.f12304c.getSpName(), 0);
                if (!a10.getBoolean(str2, false)) {
                    SharedPreferences.Editor edit = a10.edit();
                    edit.putBoolean(str2, true);
                    if (a10.contains("device_id")) {
                        edit.remove("device_id");
                    }
                    if (a10.contains("install_id")) {
                        edit.remove("install_id");
                    }
                    edit.apply();
                    n4Var.f12258b.a("device_id");
                    n4Var.f12261e.D.debug(n4Var.f12263g, "clearKey:{} installId and deviceId finish", str);
                } else {
                    n4Var.f12261e.D.debug(n4Var.f12263g, "clearKey:{} is already cleared", str);
                }
            }
        }
        this.f12360c.f12307f.edit().remove("device_token").apply();
    }

    public final Set<String> c(String str) {
        String[] split;
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(str) && (split = str.split(",")) != null && split.length > 0) {
            for (String str2 : split) {
                if (!TextUtils.isEmpty(str2)) {
                    hashSet.add(str2);
                }
            }
        }
        return hashSet;
    }

    public void d(String str) {
        JSONObject d10;
        if (TextUtils.isEmpty(str) || (d10 = d()) == null || !d10.has(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        l0.b.a(jSONObject, d10);
        jSONObject.remove(str);
        b(jSONObject);
    }

    @Nullable
    public JSONObject e() {
        if (this.f12358a) {
            return this.f12361d;
        }
        return null;
    }

    public String f() {
        return this.f12361d.optString("install_id", "");
    }

    public boolean g(String str) {
        if (a("ssid", (Object) str)) {
            this.f12364g.edit().putString(this.f12360c.e(), str).apply();
            return true;
        }
        return false;
    }

    public int h() {
        String optString = this.f12361d.optString("device_id", "");
        String optString2 = this.f12361d.optString("install_id", "");
        String optString3 = this.f12361d.optString("bd_did", "");
        if ((l0.b.a(optString) || l0.b.a(optString3)) && l0.b.a(optString2)) {
            return this.f12364g.getInt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, 0) == this.f12361d.optInt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, -1) ? 1 : 2;
        }
        return 0;
    }

    public String i() {
        if (this.f12358a) {
            return this.f12361d.optString("ssid", "");
        }
        p1 p1Var = this.f12360c;
        return p1Var != null ? p1Var.f12307f.getString(p1Var.e(), "") : "";
    }

    public String j() {
        return this.f12361d.optString("udid", "");
    }

    public String k() {
        if (this.f12358a) {
            return this.f12361d.optString("user_unique_id", "");
        }
        p1 p1Var = this.f12360c;
        if (p1Var == null) {
            return "";
        }
        return p1Var.f();
    }

    public String l() {
        return this.f12361d.optString("user_unique_id_type", this.f12360c.f12305d.getString("user_unique_id_type", null));
    }

    public int m() {
        int a10;
        if (this.f12358a) {
            a10 = this.f12361d.optInt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, -1);
        } else {
            a10 = u4.a(this.f12359b);
        }
        for (int i10 = 0; i10 < 3 && a10 == -1; i10++) {
            if (this.f12358a) {
                a10 = this.f12361d.optInt(TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, -1);
            } else {
                a10 = u4.a(this.f12359b);
            }
        }
        return a10;
    }

    public String n() {
        String b10;
        if (this.f12358a) {
            b10 = this.f12361d.optString("app_version");
        } else {
            b10 = u4.b(this.f12359b);
        }
        for (int i10 = 0; i10 < 3 && TextUtils.isEmpty(b10); i10++) {
            if (this.f12358a) {
                b10 = this.f12361d.optString("app_version");
            } else {
                b10 = u4.b(this.f12359b);
            }
        }
        return b10;
    }

    public boolean o() {
        return this.f12362e;
    }

    public boolean p() {
        JSONObject jSONObject = this.f12361d;
        if (jSONObject != null) {
            String optString = jSONObject.optString("bd_did", "");
            String optString2 = jSONObject.optString("install_id", "");
            if (l0.b.a(optString) && l0.b.a(optString2)) {
                return true;
            }
        }
        return false;
    }

    public boolean q() {
        d1 d1Var;
        String[] strArr;
        boolean z10;
        this.f12363f.add(new l1(this.f12366i, this.f12360c));
        this.f12363f.add(new o1(this.f12366i, this.f12359b, this.f12360c));
        this.f12363f.add(new v1(this.f12366i, this.f12359b));
        this.f12363f.add(new x1(this.f12359b));
        Set<k1> set = this.f12363f;
        if (this.f12366i.getInitConfig() != null) {
            this.f12366i.getInitConfig().getSensitiveInfoProvider();
        }
        set.add(new c2());
        this.f12363f.add(new y1(this.f12359b));
        this.f12363f.add(new a2(this.f12366i, this.f12359b, this.f12360c));
        this.f12363f.add(new b2());
        this.f12363f.add(new d2(this.f12359b, this.f12360c, this));
        this.f12363f.add(new e2(this.f12366i, this.f12359b));
        this.f12363f.add(new f2(this.f12359b));
        this.f12363f.add(new t1(this.f12359b, this.f12360c, this));
        this.f12363f.add(new z1(this.f12359b, this.f12360c));
        this.f12363f.add(new n1(this.f12360c));
        this.f12363f.add(new i1(this.f12359b));
        this.f12363f.add(new m1(this.f12366i));
        this.f12363f.add(new w1(this.f12359b, this.f12360c));
        JSONObject jSONObject = this.f12361d;
        JSONObject jSONObject2 = new JSONObject();
        l0.b.a(jSONObject2, jSONObject);
        int i10 = 0;
        int i11 = 0;
        boolean z11 = true;
        for (k1 k1Var : this.f12363f) {
            if (this.f12360c.f12304c.getLoaderFilters().contains(k1Var.a())) {
                IAppLogLogger iAppLogLogger = this.f12366i.D;
                StringBuilder a10 = com.bytedance.bdtracker.a.a("Filter ");
                a10.append(k1Var.a());
                a10.append(" Loader");
                iAppLogLogger.debug(a10.toString(), new Object[0]);
            } else {
                if (!k1Var.f12139a || k1Var.f12141c || (!this.f12360c.h() && k1Var.f12142d)) {
                    try {
                        k1Var.f12139a = k1Var.a(jSONObject2);
                    } catch (SecurityException e10) {
                        if (!k1Var.f12140b) {
                            i10++;
                            IAppLogLogger iAppLogLogger2 = this.f12366i.D;
                            List<String> singletonList = Collections.singletonList("DeviceManager");
                            StringBuilder a11 = com.bytedance.bdtracker.a.a("loadHeader mCountPermission: ");
                            a11.append(this.f12367j);
                            iAppLogLogger2.warn(singletonList, a11.toString(), e10);
                            if (!k1Var.f12139a && this.f12367j > 10) {
                                k1Var.f12139a = true;
                            }
                        }
                    } catch (JSONException e11) {
                        this.f12366i.D.error("loader load error", e11, new Object[0]);
                    }
                    if (!k1Var.f12139a && !k1Var.f12140b) {
                        i11++;
                    }
                }
                this.f12366i.D.debug(Collections.singletonList("DeviceManager"), "Loader:{} is ready:{}", k1Var.a(), Boolean.valueOf(k1Var.f12139a));
                if (!k1Var.f12139a && !k1Var.f12140b) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                z11 &= z10;
            }
        }
        if (z11) {
            for (String str : f12357l) {
                boolean isEmpty = TextUtils.isEmpty(jSONObject2.optString(str));
                z11 &= !isEmpty;
                if (isEmpty) {
                    this.f12366i.D.warn(Collections.singletonList("DeviceManager"), "Key " + str + " is empty!", new Object[0]);
                }
            }
        }
        synchronized (this) {
            try {
                JSONObject jSONObject3 = this.f12361d;
                this.f12361d = jSONObject2;
                LogUtils.sendJsonFetcher("set_header", new s1(this, jSONObject2));
                Iterator<String> keys = jSONObject3.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    a(next, jSONObject3.opt(next));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f12358a = z11;
        this.f12366i.D.debug(Collections.singletonList("DeviceManager"), "Loader header ready:{}, permission count:{}, header:{}", Boolean.valueOf(this.f12358a), Integer.valueOf(this.f12367j), this.f12361d);
        if (i10 > 0 && i10 == i11) {
            this.f12367j++;
            if (h() != 0) {
                this.f12367j += 10;
            }
        }
        if (this.f12358a && (d1Var = this.f12366i.f11925y) != null) {
            d1Var.onIdLoaded(c(), f(), i());
        }
        if (l0.b.d(i())) {
            LogUtils.sendJsonFetcher("local_did_load", new a());
        }
        return this.f12358a;
    }

    @Deprecated
    public boolean r() {
        return !this.f12368k;
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public String c() {
        return this.f12361d.optString("bd_did", "");
    }

    public final JSONObject d() {
        if (this.f12358a) {
            return this.f12361d.optJSONObject("custom");
        }
        p1 p1Var = this.f12360c;
        if (p1Var != null) {
            try {
                return new JSONObject(p1Var.f12305d.getString("header_custom_info", null));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public void e(String str) {
        if (a("ab_sdk_version", (Object) str)) {
            com.bytedance.bdtracker.a.a(this.f12360c.f12305d, "ab_sdk_version", str);
        }
    }

    public String g() {
        return this.f12361d.optString("openudid", "");
    }

    public final synchronized void a(String str) {
        String[] split;
        String optString = this.f12361d.optString("ab_sdk_version");
        if (!TextUtils.isEmpty(optString)) {
            for (String str2 : optString.split(",")) {
                if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
                    this.f12366i.D.debug(Collections.singletonList("DeviceManager"), "addExposedVid ready added: " + optString, new Object[0]);
                    return;
                }
            }
            str = optString + "," + str;
        }
        e(str);
        a(str, this.f12360c.c());
    }

    public synchronized void f(String str) {
        Set<String> c10 = c(this.f12360c.c());
        Set<String> c11 = c(this.f12361d.optString("ab_sdk_version"));
        c11.removeAll(c10);
        c11.addAll(c(str));
        p1 p1Var = this.f12360c;
        p1Var.f12303b.D.debug(Collections.singletonList(ConfigManager.TAG), "setExternalAbVersion:{}", str);
        com.bytedance.bdtracker.a.a(p1Var.f12305d, "external_ab_version", str);
        p1Var.f12309h = null;
        e(a(c11));
    }

    public final synchronized void c(JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                this.f12366i.D.warn("null abconfig", new Object[0]);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        String optString = this.f12361d.optString("ab_sdk_version");
        if (!TextUtils.isEmpty(optString)) {
            Set<String> c10 = c(optString);
            HashSet hashSet = new HashSet();
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next instanceof String) {
                        String str = next;
                        if (!TextUtils.isEmpty(str)) {
                            try {
                                hashSet.add(jSONObject.getJSONObject(str).optString("vid"));
                            } catch (JSONException e10) {
                                this.f12366i.D.error(Collections.singletonList("DeviceManager"), "JSON handle failed", e10, new Object[0]);
                            }
                        }
                    }
                }
            }
            String c11 = this.f12360c.c();
            hashSet.addAll(c(c11));
            c10.retainAll(hashSet);
            String a10 = a(c10);
            e(a10);
            if (!TextUtils.equals(optString, a10)) {
                a(a10, c11);
            }
        }
    }

    public void i(String str) {
        if (a("user_unique_id_type", (Object) str)) {
            com.bytedance.bdtracker.a.a(this.f12360c.f12305d, "user_unique_id_type", str);
        }
    }

    public String a() {
        if (this.f12358a) {
            return this.f12361d.optString("ab_sdk_version", "");
        }
        p1 p1Var = this.f12360c;
        return p1Var != null ? p1Var.f12305d.getString("ab_sdk_version", "") : "";
    }

    public boolean h(String str) {
        if (a("user_unique_id", (Object) str)) {
            this.f12360c.f12305d.edit().putString("user_unique_id", l0.b.a((Object) str)).apply();
            return true;
        }
        return false;
    }

    @Nullable
    public <T> T a(String str, T t10, Class<T> cls) {
        return (T) this.f12366i.f11910j.a(this.f12361d, str, (String) t10, (Class<String>) cls);
    }

    public final void a(String str, String str2) {
        if (this.f12360c.g() && this.f12360c.f12304c.isAbEnable()) {
            Set<String> c10 = c(str);
            c10.removeAll(c(str2));
            d1 d1Var = this.f12366i.f11925y;
            if (d1Var != null) {
                d1Var.onAbVidsChange(a(c10), str2);
            }
        }
    }

    public String b() {
        return this.f12360c.f12304c.getAid();
    }

    public boolean b(String str, String str2) {
        if (a("user_unique_id", (Object) str)) {
            this.f12360c.f12305d.edit().putString("user_unique_id", l0.b.a((Object) str)).apply();
            i(str2);
            return true;
        }
        return false;
    }

    public final void b(JSONObject jSONObject) {
        if (a("custom", jSONObject)) {
            this.f12360c.f12305d.edit().putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "").apply();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x01ed A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:43:0x015e, B:45:0x0165, B:47:0x0173, B:49:0x0192, B:53:0x019b, B:58:0x01a6, B:60:0x01ae, B:61:0x01b4, B:63:0x01c0, B:65:0x01c8, B:66:0x01ce, B:68:0x01da, B:73:0x01e7, B:75:0x01ed, B:76:0x01f9), top: B:91:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0212 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean a(org.json.JSONObject r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.r1.a(org.json.JSONObject, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public void a(JSONObject jSONObject) {
        p1 p1Var = this.f12360c;
        p1Var.f12303b.D.debug(Collections.singletonList(ConfigManager.TAG), "setAbConfig:{}", jSONObject);
        com.bytedance.bdtracker.a.a(p1Var.f12305d, "ab_configure", jSONObject == null ? "" : jSONObject.toString());
        p1Var.f12308g = null;
        LogUtils.sendJsonFetcher("set_abconfig", new q1(p1Var, jSONObject));
        c(jSONObject);
    }

    public void a(HashMap<String, Object> hashMap) {
        JSONObject jSONObject;
        if (hashMap == null || hashMap.isEmpty()) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            JSONObject d10 = d();
            if (d10 != null) {
                l0.b.a(jSONObject, d10);
            }
            try {
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (Throwable th2) {
                this.f12366i.D.error(Collections.singletonList("DeviceManager"), "Set custom header failed", th2, new Object[0]);
            }
        }
        b(jSONObject);
    }

    public final boolean a(String str, Object obj) {
        Object opt = this.f12361d.opt(str);
        if (l0.b.b(obj, opt)) {
            return false;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.f12361d;
                JSONObject jSONObject2 = new JSONObject();
                l0.b.a(jSONObject2, jSONObject);
                jSONObject2.put(str, obj);
                this.f12361d = jSONObject2;
                LogUtils.sendJsonFetcher("set_header", new s1(this, jSONObject2));
            } catch (JSONException e10) {
                this.f12366i.D.error(Collections.singletonList("DeviceManager"), "Update header:{} to value:{} failed", e10, str, obj);
            }
        }
        this.f12366i.D.debug(Collections.singletonList("DeviceManager"), "Update header:{} from old:{} to new value:{}", str, opt, obj);
        return true;
    }
}
