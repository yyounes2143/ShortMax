package com.mbridge.msdk.tracker.network;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mbridge.msdk.tracker.network.b;
import com.mbridge.msdk.tracker.network.v;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Request.java */
/* loaded from: classes6.dex */
public abstract class t<T> implements Comparable<t<T>> {

    /* renamed from: a  reason: collision with root package name */
    private c f30321a;

    /* renamed from: b  reason: collision with root package name */
    private String f30322b;

    /* renamed from: c  reason: collision with root package name */
    private volatile p f30323c;

    /* renamed from: d  reason: collision with root package name */
    private long f30324d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f30325e;

    /* renamed from: f  reason: collision with root package name */
    private int f30326f;

    /* renamed from: g  reason: collision with root package name */
    private final String f30327g;

    /* renamed from: h  reason: collision with root package name */
    private final int f30328h;

    /* renamed from: i  reason: collision with root package name */
    private final String f30329i;

    /* renamed from: j  reason: collision with root package name */
    private final int f30330j;

    /* renamed from: k  reason: collision with root package name */
    private final Object f30331k;

    /* renamed from: l  reason: collision with root package name */
    private v.a f30332l;

    /* renamed from: m  reason: collision with root package name */
    private Integer f30333m;

    /* renamed from: n  reason: collision with root package name */
    private u f30334n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f30335o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f30336p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f30337q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f30338r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f30339s;

    /* renamed from: t  reason: collision with root package name */
    private x f30340t;

    /* renamed from: u  reason: collision with root package name */
    private b.a f30341u;

    /* renamed from: v  reason: collision with root package name */
    private long f30342v;

    /* compiled from: Request.java */
    /* loaded from: classes6.dex */
    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public t(int i10, String str) {
        this(i10, str, 0);
    }

    private static int b(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public final boolean A() {
        return this.f30339s;
    }

    public final boolean B() {
        return this.f30338r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract v<T> a(q qVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(T t10);

    public void a(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b0 c(b0 b0Var) {
        return b0Var;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return a((t) ((t) obj));
    }

    public b.a d() {
        return this.f30341u;
    }

    public String e() {
        if (!TextUtils.isEmpty(this.f30322b)) {
            return this.f30322b;
        }
        if (this.f30321a == null) {
            this.f30321a = new com.mbridge.msdk.tracker.network.toolbox.e();
        }
        String a10 = this.f30321a.a(this);
        this.f30322b = a10;
        return a10;
    }

    public Map<String, String> f() {
        return Collections.emptyMap();
    }

    public int g() {
        return this.f30326f;
    }

    public p h() {
        return this.f30323c;
    }

    protected Map<String, String> i() {
        return null;
    }

    protected String j() {
        return "UTF-8";
    }

    public int k() {
        return this.f30328h;
    }

    public a l() {
        return a.NORMAL;
    }

    public long m() {
        return this.f30342v;
    }

    public long n() {
        return SystemClock.elapsedRealtime() - this.f30324d;
    }

    public x o() {
        return this.f30340t;
    }

    public String p() {
        return this.f30329i;
    }

    public final int q() {
        x o10 = o();
        if (o10 == null) {
            return 30000;
        }
        return o10.b();
    }

    public final long r() {
        x o10 = o();
        if (o10 == null) {
            return 30000L;
        }
        long a10 = o10.a();
        if (a10 < 0) {
            return 30000L;
        }
        return a10;
    }

    public int s() {
        return this.f30330j;
    }

    public String t() {
        return this.f30327g;
    }

    public String toString() {
        String str;
        String str2 = "0x" + Integer.toHexString(s());
        StringBuilder sb2 = new StringBuilder();
        if (v()) {
            str = "[X] ";
        } else {
            str = "[ ] ";
        }
        sb2.append(str);
        sb2.append(t());
        sb2.append(" ");
        sb2.append(str2);
        sb2.append(" ");
        sb2.append(l());
        sb2.append(" ");
        sb2.append(this.f30333m);
        return sb2.toString();
    }

    public boolean u() {
        boolean z10;
        synchronized (this.f30331k) {
            z10 = this.f30337q;
        }
        return z10;
    }

    public boolean v() {
        boolean z10;
        synchronized (this.f30331k) {
            z10 = this.f30336p;
        }
        return z10;
    }

    public void w() {
        synchronized (this.f30331k) {
            this.f30337q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x() {
        synchronized (this.f30331k) {
        }
    }

    public boolean y() {
        return true;
    }

    public final boolean z() {
        return this.f30335o;
    }

    public t(int i10, String str, int i11) {
        this(i10, str, i11, "un_known");
    }

    public boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        u uVar = this.f30334n;
        if (uVar != null) {
            uVar.c(this);
        }
    }

    public String d(String str) {
        if (this.f30325e != null && !TextUtils.isEmpty(str)) {
            try {
                return this.f30325e.get(str);
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public t(int i10, String str, int i11, String str2) {
        this.f30331k = new Object();
        this.f30335o = false;
        this.f30336p = false;
        this.f30337q = false;
        this.f30338r = false;
        this.f30339s = false;
        this.f30341u = null;
        this.f30342v = 0L;
        this.f30326f = i10;
        this.f30327g = str;
        this.f30328h = i11;
        this.f30329i = str2;
        a((x) new e());
        this.f30330j = b(str);
        this.f30324d = SystemClock.elapsedRealtime();
    }

    public void a(v.a aVar) {
        this.f30332l = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(x xVar) {
        this.f30340t = xVar;
        return this;
    }

    public String c() {
        return "application/x-www-form-urlencoded; charset=" + j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10) {
        u uVar = this.f30334n;
        if (uVar != null) {
            uVar.a(this, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(int i10) {
        this.f30333m = Integer.valueOf(i10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> c(boolean z10) {
        this.f30338r = z10;
        return this;
    }

    public byte[] b() {
        Map<String, String> i10 = i();
        if (i10 != null && i10.size() > 0) {
            byte[] a10 = a(i10, j());
            this.f30342v = a10.length;
            return a10;
        }
        this.f30342v = 0L;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t<?> a(u uVar) {
        this.f30334n = uVar;
        return this;
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            int i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                i10++;
                if (entry.getKey() != null) {
                    sb2.append(URLEncoder.encode(entry.getKey(), str));
                    sb2.append('=');
                    sb2.append(URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), str));
                    if (i10 <= map.size() - 1) {
                        sb2.append('&');
                    }
                }
            }
            return sb2.toString().getBytes(str);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException("Encoding not supported: " + str, e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> b(boolean z10) {
        this.f30339s = z10;
        return this;
    }

    public void b(b0 b0Var) {
        v.a aVar;
        synchronized (this.f30331k) {
            aVar = this.f30332l;
        }
        if (aVar != null) {
            aVar.a(b0Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t<?> a(boolean z10) {
        this.f30335o = z10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(v<?> vVar) {
        synchronized (this.f30331k) {
        }
    }

    public void a(p pVar) {
        this.f30323c = pVar;
    }

    public void a(String str, String str2) {
        if (this.f30325e == null) {
            this.f30325e = new HashMap();
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                this.f30325e.put(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    public int a(t<T> tVar) {
        a l10 = l();
        a l11 = tVar.l();
        return l10 == l11 ? this.f30333m.intValue() - tVar.f30333m.intValue() : l11.ordinal() - l10.ordinal();
    }
}
