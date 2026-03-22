package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: SameOptimizedController.java */
/* loaded from: classes5.dex */
public final class r0 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f27492a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f27493b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f27494c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f27495d;

    /* renamed from: e  reason: collision with root package name */
    public volatile JSONObject f27496e;

    /* renamed from: f  reason: collision with root package name */
    private String f27497f;

    /* renamed from: g  reason: collision with root package name */
    private volatile ConcurrentHashMap<String, Boolean> f27498g;

    /* renamed from: h  reason: collision with root package name */
    private volatile ConcurrentHashMap<String, Integer> f27499h;

    /* renamed from: i  reason: collision with root package name */
    private volatile ConcurrentHashMap<String, String> f27500i;

    /* renamed from: j  reason: collision with root package name */
    private volatile com.mbridge.msdk.setting.g f27501j;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SameOptimizedController.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final r0 f27502a = new r0();
    }

    public static r0 a() {
        return b.f27502a;
    }

    private static Integer b(String str, ConcurrentHashMap<String, Integer> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private static String c(String str, ConcurrentHashMap<String, String> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private ConcurrentHashMap<String, String> d() {
        synchronized (this.f27493b) {
            try {
                if (this.f27500i == null) {
                    this.f27500i = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f27500i;
    }

    private boolean e() {
        if (this.f27501j.D() == 1) {
            return true;
        }
        return false;
    }

    private r0() {
        this.f27492a = new Object();
        this.f27493b = new Object();
        this.f27494c = new Object();
        this.f27495d = new Object();
    }

    private int a(String str, String str2, int i10) {
        if (a(true)) {
            return i10;
        }
        try {
            String optString = this.f27496e.optString(str, "");
            if (TextUtils.isEmpty(optString)) {
                return i10;
            }
            String a10 = j0.a(optString);
            return TextUtils.isEmpty(a10) ? i10 : new JSONObject(a10).optInt(str2, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    private ConcurrentHashMap<String, Integer> c() {
        synchronized (this.f27492a) {
            try {
                if (this.f27499h == null) {
                    this.f27499h = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f27499h;
    }

    public int b(String str, int i10) {
        Integer valueOf;
        try {
            if (TextUtils.isEmpty(str)) {
                return i10;
            }
            ConcurrentHashMap<String, Integer> c10 = c();
            Integer b10 = b(str, c10);
            if (b10 != null) {
                return b10.intValue();
            }
            try {
                valueOf = Integer.valueOf(a(str, i10));
            } catch (Exception unused) {
                valueOf = Integer.valueOf(i10);
            }
            c10.put(str, valueOf);
            return valueOf.intValue();
        } catch (Exception unused2) {
            return i10;
        }
    }

    private int a(String str, int i10) {
        if (a(true)) {
            return i10;
        }
        try {
            return this.f27496e.optInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    public String b(String str, String str2, boolean z10) {
        String str3;
        String c10;
        try {
            if (TextUtils.isEmpty(str)) {
                return str2;
            }
            ConcurrentHashMap<String, String> d10 = d();
            if (!z10 || (c10 = c(str, d10)) == null) {
                try {
                    str3 = a(str, str2, z10);
                } catch (Exception unused) {
                    str3 = str2;
                }
                d10.put(str, str3);
                return str3;
            }
            return c10;
        } catch (Exception unused2) {
            return str2;
        }
    }

    private String a(String str, String str2, boolean z10) {
        if (a(z10)) {
            return str2;
        }
        try {
            return this.f27496e.optString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public boolean a(String str, boolean z10) {
        try {
            return b(str, z10, true);
        } catch (Exception unused) {
            return z10;
        }
    }

    private static Boolean a(String str, ConcurrentHashMap<String, Boolean> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean a(String str, boolean z10, boolean z11) {
        if (a(z11)) {
            return z10;
        }
        try {
            return this.f27496e.optInt(str, z10 ? 1 : 0) != 0;
        } catch (Exception unused) {
            return z10;
        }
    }

    public int b(String str, String str2, int i10) {
        Integer valueOf;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                String str3 = str + "_" + str2;
                ConcurrentHashMap<String, Integer> c10 = c();
                Integer b10 = b(str3, c10);
                if (b10 != null) {
                    return b10.intValue();
                }
                try {
                    valueOf = Integer.valueOf(a(str, str2, i10));
                } catch (Exception unused) {
                    valueOf = Integer.valueOf(i10);
                }
                c10.put(str3, valueOf);
                return valueOf.intValue();
            }
            return b(str2, i10);
        } catch (Exception unused2) {
            return i10;
        }
    }

    private boolean a(boolean z10) {
        synchronized (this.f27495d) {
            if (this.f27501j == null || e() || !z10) {
                try {
                    if (TextUtils.isEmpty(this.f27497f)) {
                        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
                        this.f27497f = b10;
                        if (TextUtils.isEmpty(b10)) {
                            this.f27497f = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("app_id");
                        }
                    }
                    this.f27501j = com.mbridge.msdk.setting.h.b().b(this.f27497f);
                } catch (Exception unused) {
                    this.f27501j = null;
                }
            }
            if (this.f27501j != null) {
                this.f27496e = this.f27501j.j0();
            }
        }
        return this.f27501j == null || this.f27496e == null;
    }

    public boolean b(String str, boolean z10, boolean z11) {
        Boolean valueOf;
        Boolean a10;
        try {
            if (TextUtils.isEmpty(str)) {
                return z10;
            }
            ConcurrentHashMap<String, Boolean> b10 = b();
            if (z11 && (a10 = a(str, b10)) != null) {
                return a10.booleanValue();
            }
            try {
                valueOf = Boolean.valueOf(a(str, z10, z11));
            } catch (Exception unused) {
                valueOf = Boolean.valueOf(z10);
            }
            b10.put(str, valueOf);
            return valueOf.booleanValue();
        } catch (Exception unused2) {
            return z10;
        }
    }

    private ConcurrentHashMap<String, Boolean> b() {
        synchronized (this.f27494c) {
            try {
                if (this.f27498g == null) {
                    this.f27498g = new ConcurrentHashMap<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return this.f27498g;
    }
}
