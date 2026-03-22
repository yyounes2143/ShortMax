package com.pgl.ssdk.ces;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.pgl.ssdk.a0;
import com.pgl.ssdk.b0;
import com.pgl.ssdk.c0;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.d0;
import com.pgl.ssdk.e0;
import com.pgl.ssdk.f;
import com.pgl.ssdk.f0;
import com.pgl.ssdk.f1;
import com.pgl.ssdk.g0;
import com.pgl.ssdk.h0;
import com.pgl.ssdk.i0;
import com.pgl.ssdk.j0;
import com.pgl.ssdk.k0;
import com.pgl.ssdk.l0;
import com.pgl.ssdk.m0;
import com.pgl.ssdk.n0;
import com.pgl.ssdk.o0;
import com.pgl.ssdk.r0;
import com.pgl.ssdk.u;
import com.pgl.ssdk.v;
import com.pgl.ssdk.w;
import com.pgl.ssdk.w0;
import com.pgl.ssdk.x;
import com.pgl.ssdk.x0;
import com.pgl.ssdk.y;
import com.pgl.ssdk.y0;
import com.pgl.ssdk.z;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f36703a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f36704b = false;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, Object> f36705c = null;

    /* renamed from: d  reason: collision with root package name */
    private static int f36706d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static w0.a f36707e;

    /* renamed from: g  reason: collision with root package name */
    public Context f36709g;

    /* renamed from: h  reason: collision with root package name */
    private String f36710h;

    /* renamed from: i  reason: collision with root package name */
    private int f36711i;

    /* renamed from: j  reason: collision with root package name */
    private String f36712j;

    /* renamed from: n  reason: collision with root package name */
    private String f36716n;

    /* renamed from: f  reason: collision with root package name */
    public boolean f36708f = false;

    /* renamed from: k  reason: collision with root package name */
    private String f36713k = null;

    /* renamed from: l  reason: collision with root package name */
    private String f36714l = null;

    /* renamed from: m  reason: collision with root package name */
    private boolean f36715m = false;

    /* renamed from: o  reason: collision with root package name */
    private boolean f36717o = false;

    /* renamed from: p  reason: collision with root package name */
    public int f36718p = 2;

    /* renamed from: q  reason: collision with root package name */
    public boolean f36719q = true;

    /* loaded from: classes6.dex */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.b(z.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pgl.ssdk.ces.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class RunnableC0602b implements Runnable {
        RunnableC0602b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f.c();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.a(b.this.f36709g).a();
        }
    }

    /* loaded from: classes6.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.b(b.this.f36709g);
        }
    }

    private b(Context context, String str) {
        this.f36709g = context;
        this.f36710h = str;
    }

    public static b a(Context context, String str, int i10, int i11, String str2) {
        if (f36703a == null) {
            synchronized (b.class) {
                try {
                    if (f36703a == null) {
                        if (context == null) {
                            context = b0.a().getApplicationContext();
                        }
                        if (context == null) {
                            f36706d = 4;
                            return null;
                        }
                        a(i10);
                        w0.a b10 = w0.b(context, "nms");
                        if (b10 != null) {
                            f36706d = b10.f36841a;
                            f36707e = b10;
                            return null;
                        }
                        b bVar = new b(context, str);
                        f36703a = bVar;
                        bVar.f36711i = i11;
                        f36703a.f36712j = str2;
                        f36703a.b(context);
                        f36703a.d(a(context));
                        z.c(context);
                        f36706d = 0;
                        r0.b(new a());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f36703a;
    }

    private void b(Context context) {
        if (context == null || f36704b) {
            return;
        }
        try {
            com.pgl.ssdk.ces.a.meta(101, null, "1");
            com.pgl.ssdk.ces.a.meta(102, null, this.f36710h);
            com.pgl.ssdk.ces.a.meta(114, null, Integer.valueOf(this.f36711i));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(b0.h(context));
            com.pgl.ssdk.ces.a.meta(105, null, sb2.toString());
            com.pgl.ssdk.ces.a.meta(152, null, b0.i(context));
            com.pgl.ssdk.ces.a.meta(153, null, b0.d(context));
            com.pgl.ssdk.ces.a.meta(106, null, b0.f(context));
            com.pgl.ssdk.ces.a.meta(107, null, b0.e(context));
            com.pgl.ssdk.ces.a.meta(108, null, b0.c(context));
            com.pgl.ssdk.ces.a.meta(109, null, b0.d());
            com.pgl.ssdk.ces.a.meta(110, null, b0.c());
            com.pgl.ssdk.ces.a.meta(115, null, this.f36712j);
            f36704b = true;
        } catch (Throwable unused) {
        }
    }

    public static String c() {
        if (h() != null) {
            return h().f36710h;
        }
        return null;
    }

    public static String d() {
        if (h() != null) {
            return h().f36713k;
        }
        return null;
    }

    public static String f() {
        b h10 = h();
        if (h10 != null && h10.f36715m && !TextUtils.isEmpty(h10.f36714l)) {
            return h10.f36714l;
        }
        return null;
    }

    public static int g() {
        return f36706d;
    }

    public static b h() {
        return f36703a;
    }

    public static w0.a i() {
        return f36707e;
    }

    public long e() {
        return z.a(this.f36709g);
    }

    public String j() {
        return z.c();
    }

    public String k() {
        return f1.a();
    }

    public void l() {
        this.f36717o = true;
        f1.a(this.f36709g, this.f36710h);
        a("Start", (Map<String, Object>) null);
    }

    private void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f36716n = str;
        com.pgl.ssdk.ces.a.meta(104, null, str);
    }

    public synchronized void c(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f36714l)) {
            com.pgl.ssdk.ces.a.meta(111, null, str);
            this.f36714l = str;
            f1.b();
        }
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f36713k)) {
            this.f36713k = str;
            com.pgl.ssdk.ces.a.meta(103, null, str);
            f1.b();
        }
    }

    public void b() {
        r0.b(new d());
    }

    private static String a(Context context) {
        String a10 = x0.a(context, "iid");
        if (TextUtils.isEmpty(a10)) {
            String uuid = UUID.randomUUID().toString();
            x0.b(context, "iid", uuid);
            return uuid;
        }
        return a10;
    }

    public static void a(int i10) {
        n0.a(i10);
    }

    public void a(String str, String str2, String str3, String str4) {
        b(str2);
        c(str4);
        try {
            l();
        } catch (Throwable unused) {
        }
    }

    public Map<String, String> a(String str, byte[] bArr) {
        HashMap hashMap = new HashMap();
        if (str == null) {
            str = "";
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        String str2 = (String) com.pgl.ssdk.ces.a.meta(224, this.f36709g, new Object[]{str, bArr});
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("X-Armors", str2);
        }
        return hashMap;
    }

    public void a(String str, Map<String, Object> map) {
        try {
            long j10 = "Start".equals(str) ? 10000L : 0L;
            Handler b10 = r0.b();
            if (b10 != null) {
                b10.postDelayed(new o0(this.f36709g, 222, new Object[]{str, map}), j10);
                if (this.f36719q && "Start".equals(str)) {
                    b10.postDelayed(new RunnableC0602b(), j10 * 2);
                }
            }
            a();
            z.a();
        } catch (Throwable unused) {
        }
    }

    public Object a(int i10, Object obj) {
        Object b10;
        if (i10 == 123) {
            b10 = f0.a(this.f36709g);
        } else if (i10 == 121) {
            b10 = d0.a();
        } else if (i10 == 122) {
            b10 = d0.b();
        } else if (i10 == 126) {
            b10 = d0.b(this.f36709g);
        } else if (i10 == 128) {
            b10 = d0.c(this.f36709g);
        } else if (i10 == 120) {
            b10 = c0.c();
        } else if (i10 == 124) {
            b10 = g0.c(this.f36709g);
        } else if (i10 == 130) {
            b10 = g0.a(this.f36709g);
        } else if (i10 == 145) {
            b10 = h0.c(this.f36709g);
        } else if (i10 == 125) {
            b10 = g0.b(this.f36709g);
        } else if (i10 == 129) {
            b10 = e0.f(this.f36709g);
        } else if (i10 == 141) {
            b10 = e0.e(this.f36709g);
        } else if (i10 == 134) {
            b10 = k0.a(this.f36709g).b();
        } else if (i10 == 140) {
            b10 = l0.a(this.f36709g).e();
        } else if (i10 == 144) {
            b10 = l0.a(this.f36709g).d();
        } else if (i10 == 133) {
            b10 = a(obj);
        } else if (i10 == 135) {
            return v.f();
        } else {
            if (i10 == 201) {
                b10 = d0.a(this.f36709g);
            } else if (i10 == 202) {
                b10 = d0.c();
            } else if (i10 == 236) {
                return y0.a((String) obj);
            } else {
                if (i10 == 142) {
                    b10 = b0.g(this.f36709g);
                } else if (i10 == 143) {
                    b10 = h0.a(this.f36709g);
                } else if (i10 == 146) {
                    try {
                        return v.b();
                    } catch (Throwable unused) {
                        return null;
                    }
                } else if (i10 == 147) {
                    b10 = Boolean.valueOf(b0.j(this.f36709g));
                } else if (i10 == 148) {
                    b10 = u.b(this.f36709g);
                } else if (i10 == 149) {
                    b10 = w.a(this.f36709g);
                } else if (i10 == 150) {
                    b10 = Integer.valueOf(x.a());
                } else if (i10 == 151) {
                    b10 = w.c();
                } else if (i10 == 161) {
                    b10 = Boolean.valueOf(v.g());
                } else if (i10 == 163) {
                    b10 = j0.a();
                } else if (i10 == 169) {
                    b10 = Boolean.valueOf(a0.a(this.f36709g));
                } else if (i10 == 170) {
                    b10 = Integer.valueOf(y.b((String) obj));
                } else if (i10 == 203) {
                    b10 = b0.b();
                } else if (i10 == 205) {
                    b10 = Integer.valueOf(b0.k(this.f36709g));
                } else if (i10 == 204) {
                    b10 = Integer.valueOf(e0.a(this.f36709g));
                } else if (i10 != 206) {
                    return null;
                } else {
                    b10 = h0.b(this.f36709g);
                }
            }
        }
        return b10;
    }

    public void a(MotionEvent motionEvent) {
        y.a(motionEvent, this.f36709g);
    }

    public synchronized void a(Map<String, Object> map) {
        char c10;
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    try {
                        for (String str : map.keySet()) {
                            Object obj = map.get(str);
                            if (obj != null) {
                                switch (str.hashCode()) {
                                    case -2021683300:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TRANSFER_HOST)) {
                                            c10 = 2;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -1195280656:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_SEC_CONFIG_STR)) {
                                            c10 = 5;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case 156851746:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_ALLOWED_FIELDS)) {
                                            c10 = 3;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case 398905722:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ)) {
                                            c10 = 0;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case 485444716:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_TARGET_IDC)) {
                                            c10 = 4;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case 500804551:
                                        if (str.equals(PglSSConfig.CUSTOMINFO_KEY_IPV6)) {
                                            c10 = 1;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    default:
                                        c10 = 65535;
                                        break;
                                }
                                if (c10 != 0) {
                                    if (c10 != 1) {
                                        if (c10 != 2) {
                                            if (c10 != 3) {
                                                if (c10 != 4) {
                                                    if (c10 != 5) {
                                                        continue;
                                                    } else if (obj instanceof String) {
                                                        a((String) obj);
                                                    }
                                                } else if (obj instanceof String) {
                                                    n0.b((String) obj);
                                                }
                                            } else if (obj instanceof Set) {
                                                try {
                                                    Set set = (Set) obj;
                                                    com.pgl.ssdk.ces.a.meta(165, null, Boolean.valueOf(set.contains("boot")));
                                                    com.pgl.ssdk.ces.a.meta(166, null, Boolean.valueOf(set.contains("mnc")));
                                                    com.pgl.ssdk.ces.a.meta(167, null, Boolean.valueOf(set.contains("mcc")));
                                                    com.pgl.ssdk.ces.a.meta(IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, null, Boolean.valueOf(set.contains("gaid")));
                                                    this.f36715m = set.contains("gaid");
                                                } catch (Throwable unused) {
                                                }
                                            }
                                        } else if (obj instanceof String) {
                                            n0.a((String) obj);
                                        }
                                    } else if (obj instanceof String) {
                                        String str2 = (String) obj;
                                        if (!TextUtils.isEmpty(str2)) {
                                            m0.a(str2);
                                        }
                                    }
                                } else if (obj instanceof String) {
                                    String a10 = i0.a((String) obj);
                                    if (!TextUtils.isEmpty(a10)) {
                                        com.pgl.ssdk.ces.a.meta(159, null, a10);
                                    }
                                }
                            }
                        }
                        if (f36705c == null) {
                            f36705c = new HashMap();
                        }
                        f36705c.putAll(map);
                    } catch (Throwable unused2) {
                    }
                }
            } finally {
            }
        }
    }

    private void a(String str) {
        char c10;
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                switch (next.hashCode()) {
                    case -417749689:
                        if (next.equals("touch_trace_enabled")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -93508180:
                        if (next.equals("autoctl_detect_enable")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 449342513:
                        if (next.equals("craw_ratio")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 944591168:
                        if (next.equals("report_ratio")) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1286849298:
                        if (next.equals("app_switch")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                if (c10 != 0) {
                    if (c10 != 1) {
                        if (c10 != 2) {
                            if (c10 != 3) {
                                if (c10 == 4 && (obj instanceof Boolean)) {
                                    y.f36852g = ((Boolean) obj).booleanValue();
                                }
                            } else if ((obj instanceof Integer) && ((Integer) obj).intValue() > 0) {
                                f.f36754b = ((Integer) obj).intValue();
                            }
                        } else if (obj instanceof Boolean) {
                            this.f36719q = ((Boolean) obj).booleanValue();
                        }
                    } else if ((obj instanceof Integer) && ((Integer) obj).intValue() > 0) {
                        this.f36718p = ((Integer) obj).intValue();
                    }
                } else if (obj instanceof Boolean) {
                    k0.f36768b = ((Boolean) obj).booleanValue();
                }
            }
        } catch (JSONException unused) {
        }
    }

    private String a(Object obj) {
        Map<String, Object> map;
        if (!(obj instanceof String) || !"Start".equals((String) obj) || (map = f36705c) == null || map.isEmpty()) {
            return JsonUtils.EMPTY_JSON;
        }
        try {
            return new JSONObject(f36705c).toString();
        } catch (Exception unused) {
            return JsonUtils.EMPTY_JSON;
        }
    }

    public void a() {
        r0.b(new c());
    }
}
