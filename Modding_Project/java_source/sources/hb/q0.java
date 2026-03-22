package hb;

import android.text.TextUtils;
/* loaded from: classes5.dex */
public class q0 {

    /* renamed from: c  reason: collision with root package name */
    private static q0 f52737c;

    /* renamed from: a  reason: collision with root package name */
    private String f52738a;

    /* renamed from: b  reason: collision with root package name */
    private String f52739b;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (i() != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(java.lang.String r3) {
        /*
            r2 = this;
            boolean r0 = r2.i()
            if (r0 == 0) goto Ld
            java.lang.String r0 = "analytics_keystore"
            java.lang.String r0 = lb.a.d(r0, r3)
            goto Lf
        Ld:
            java.lang.String r0 = ""
        Lf:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L4f
            java.lang.String r0 = "hmsSdk"
            java.lang.String r1 = "deCrypt work key first"
            hb.f1.h(r0, r1)
            java.lang.String r0 = r2.h()
            java.lang.String r0 = hb.p0.b(r3, r0)
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 == 0) goto L41
            r3 = 16
            java.lang.String r0 = mb.a.d(r3)
            java.lang.String r3 = r2.c(r0)
            r2.f(r3)
            boolean r3 = r2.i()
            if (r3 == 0) goto L4f
        L3d:
            hb.i1.i()
            goto L4f
        L41:
            boolean r3 = r2.i()
            if (r3 == 0) goto L4f
            java.lang.String r3 = r2.c(r0)
            r2.f(r3)
            goto L3d
        L4f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.q0.b(java.lang.String):java.lang.String");
    }

    private String c(String str) {
        if (i()) {
            return lb.a.g("analytics_keystore", str);
        }
        return p0.d(str, h());
    }

    private String e() {
        String b10 = l.b(v0.q(), "Privacy_MY", "PrivacyData", "");
        if (TextUtils.isEmpty(b10)) {
            String d10 = mb.a.d(16);
            f(c(d10));
            return d10;
        }
        return b(b10);
    }

    private boolean f(String str) {
        f1.h("hmsSdk", "refresh sp aes key");
        if (TextUtils.isEmpty(str)) {
            f1.h("hmsSdk", "refreshLocalKey(): encrypted key is empty");
            return false;
        }
        l.g(v0.q(), "Privacy_MY", "PrivacyData", str);
        l.f(v0.q(), "Privacy_MY", "flashKeyTime", System.currentTimeMillis());
        return true;
    }

    public static q0 g() {
        if (f52737c == null) {
            j();
        }
        return f52737c;
    }

    private String h() {
        if (TextUtils.isEmpty(this.f52739b)) {
            this.f52739b = new i1().a();
        }
        return this.f52739b;
    }

    private boolean i() {
        return true;
    }

    private static synchronized void j() {
        synchronized (q0.class) {
            if (f52737c == null) {
                f52737c = new q0();
            }
        }
    }

    public String a() {
        if (TextUtils.isEmpty(this.f52738a)) {
            this.f52738a = e();
        }
        return this.f52738a;
    }

    public void d() {
        String d10 = mb.a.d(16);
        if (f(c(d10))) {
            this.f52738a = d10;
        }
    }
}
