package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class w4 {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f10463a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f10464b;

    /* renamed from: c  reason: collision with root package name */
    protected final SharedPreferences f10465c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f10466d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Object f10467e = new Object();

    public w4(com.applovin.impl.sdk.k kVar) {
        this.f10463a = kVar;
        Context o10 = com.applovin.impl.sdk.k.o();
        this.f10464b = o10;
        this.f10465c = o10.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(v4.class.getName());
            Class.forName(o3.class.getName());
        } catch (Throwable unused) {
        }
        d();
    }

    private void d() {
        String b10;
        if (((Boolean) y4.a(x4.f10515i, Boolean.FALSE, com.applovin.impl.sdk.k.o())).booleanValue()) {
            b10 = "";
        } else {
            b10 = b();
        }
        synchronized (this.f10467e) {
            try {
                for (v4 v4Var : v4.c()) {
                    String b11 = v4Var.b();
                    Object a10 = this.f10463a.a(b10 + b11, null, v4Var.a().getClass(), this.f10465c);
                    if (a10 != null) {
                        this.f10466d.put(v4Var.b(), a10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Object a(v4 v4Var) {
        if (v4Var != null) {
            synchronized (this.f10467e) {
                try {
                    Object obj = this.f10466d.get(v4Var.b());
                    if (obj == null) {
                        return v4Var.a();
                    }
                    return v4Var.a(obj);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    public List b(v4 v4Var) {
        ArrayList arrayList = new ArrayList(6);
        for (String str : c(v4Var)) {
            arrayList.add(MaxAdFormat.formatFromString(str));
        }
        return arrayList;
    }

    public List c(v4 v4Var) {
        return CollectionUtils.explode((String) a(v4Var));
    }

    public void e() {
        Boolean bool = (Boolean) y4.a(x4.f10515i, Boolean.FALSE, com.applovin.impl.sdk.k.o());
        String b10 = b();
        synchronized (this.f10467e) {
            try {
                SharedPreferences.Editor edit = this.f10465c.edit();
                for (v4 v4Var : v4.c()) {
                    Object obj = this.f10466d.get(v4Var.b());
                    if (obj != null) {
                        String b11 = v4Var.b();
                        this.f10463a.a(b10 + v4Var.b(), obj, edit);
                        if (bool.booleanValue()) {
                            this.f10463a.a(b11, obj, edit);
                        }
                    }
                }
                if (((Boolean) this.f10463a.a(v4.f10360t6)).booleanValue()) {
                    y4.a(edit);
                } else {
                    edit.apply();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean c() {
        return this.f10463a.o0().isVerboseLoggingEnabled() || ((Boolean) a(v4.f10281k)).booleanValue();
    }

    private String b() {
        return "com.applovin.sdk." + k7.f(this.f10463a.j0()) + ".";
    }

    public void a(v4 v4Var, Object obj) {
        if (v4Var == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj != null) {
            synchronized (this.f10467e) {
                this.f10466d.put(v4Var.b(), obj);
            }
            return;
        }
        throw new IllegalArgumentException("No new value specified");
    }

    public void a(JSONObject jSONObject) {
        synchronized (this.f10467e) {
            try {
                boolean booleanValue = JsonUtils.getBoolean(jSONObject, v4.f10369v.b(), Boolean.FALSE).booleanValue();
                HashMap hashMap = booleanValue ? new HashMap() : null;
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && next.length() > 0) {
                        try {
                            v4 a10 = v4.a(next);
                            if (a10 != null) {
                                Object a11 = booleanValue ? a(a10) : null;
                                Object a12 = a(next, jSONObject, a10.a());
                                this.f10466d.put(a10.b(), a12);
                                if (a10 == v4.f10383w5) {
                                    this.f10466d.put(v4.f10391x5.b(), Long.valueOf(System.currentTimeMillis()));
                                }
                                if (booleanValue && !a12.equals(a11)) {
                                    hashMap.put(a10, a11);
                                }
                            }
                        } catch (JSONException e10) {
                            com.applovin.impl.sdk.o.c("SettingsManager", "Unable to parse JSON settingsValues array", e10);
                            this.f10463a.E().a("SettingsManager", "loadSettingsException", e10);
                        } catch (Throwable th2) {
                            com.applovin.impl.sdk.o.c("SettingsManager", "Unable to convert setting object ", th2);
                            this.f10463a.E().a("SettingsManager", "loadSettingsThrowable", th2);
                        }
                    }
                }
                if (booleanValue && hashMap.size() > 0) {
                    s2 s2Var = new s2();
                    s2Var.a("========== UPDATED SETTINGS ==========");
                    for (v4 v4Var : hashMap.keySet()) {
                        String b10 = v4Var.b();
                        s2Var.a(b10, a(v4Var) + " (" + hashMap.get(v4Var) + ")");
                    }
                    s2Var.a("========== END ==========");
                    this.f10463a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f10463a.O().a("SettingsManager", s2Var.toString());
                    }
                }
                y4.b(x4.f10515i, (Boolean) a(v4.H6), com.applovin.impl.sdk.k.o());
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void a() {
        synchronized (this.f10467e) {
            this.f10466d.clear();
        }
        this.f10463a.a(this.f10465c);
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Double) {
            return Double.valueOf(jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }
}
