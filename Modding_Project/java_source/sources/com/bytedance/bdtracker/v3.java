package com.bytedance.bdtracker;

import android.os.Handler;
import android.text.TextUtils;
import com.bytedance.bdtracker.l0;
/* loaded from: classes3.dex */
public abstract class v3 {

    /* renamed from: a  reason: collision with root package name */
    public v3 f12469a;

    /* renamed from: b  reason: collision with root package name */
    public Handler f12470b;

    /* loaded from: classes3.dex */
    public class a implements d<String> {
        public a() {
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a() {
            return v3.this.b("openudid");
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean b(String str) {
            return l0.b.e(str);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean a(String str, String str2) {
            return l0.b.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a(String str, String str2, v3 v3Var) {
            String str3 = str;
            return v3Var == null ? str3 : v3Var.d(str3, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public void a(String str) {
            v3.this.a("openudid", str);
        }
    }

    /* loaded from: classes3.dex */
    public class b implements d<String> {
        public b() {
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a() {
            return v3.this.b("clientudid");
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean b(String str) {
            return l0.b.e(str);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean a(String str, String str2) {
            return l0.b.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a(String str, String str2, v3 v3Var) {
            String str3 = str;
            return v3Var == null ? str3 : v3Var.b(str3, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public void a(String str) {
            v3.this.a("clientudid", str);
        }
    }

    /* loaded from: classes3.dex */
    public class c implements d<String> {
        public c() {
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a() {
            return v3.this.b("device_id");
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean b(String str) {
            return !TextUtils.isEmpty(str);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public boolean a(String str, String str2) {
            return l0.b.a(str, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public String a(String str, String str2, v3 v3Var) {
            String str3 = str;
            return v3Var == null ? str3 : v3Var.c(str3, str2);
        }

        @Override // com.bytedance.bdtracker.v3.d
        public void a(String str) {
            v3.this.a("device_id", str);
        }
    }

    /* loaded from: classes3.dex */
    public interface d<L> {
        L a();

        L a(L l10, L l11, v3 v3Var);

        void a(L l10);

        boolean a(L l10, L l11);

        boolean b(L l10);
    }

    public void a(String str) {
        v3 v3Var = this.f12469a;
        if (v3Var != null) {
            v3Var.a(str);
        }
    }

    public abstract void a(String str, String str2);

    public abstract String b(String str);

    public String b(String str, String str2) {
        return (String) a(str, str2, new b());
    }

    public String c(String str, String str2) {
        return (String) a(str, str2, new c());
    }

    public String d(String str, String str2) {
        return (String) a(str, str2, new a());
    }

    public final <T> T a(T t10, T t11, d<T> dVar) {
        boolean z10;
        if (dVar != null) {
            v3 v3Var = this.f12469a;
            T a10 = dVar.a();
            boolean b10 = dVar.b(t10);
            boolean b11 = dVar.b(a10);
            if (!b10 && b11) {
                t10 = a10;
            }
            if (v3Var != null) {
                T a11 = dVar.a(t10, t11, v3Var);
                if (!dVar.a(a11, a10)) {
                    dVar.a(a11);
                }
                return a11;
            }
            if (b10 || b11) {
                t11 = t10;
                z10 = false;
            } else {
                z10 = true;
            }
            if ((z10 && dVar.b(t11)) || (b10 && !dVar.a(t11, a10))) {
                dVar.a(t11);
            }
            return t11;
        }
        throw new IllegalArgumentException("agent == null");
    }

    public void a(Handler handler) {
        v3 v3Var = this.f12469a;
        if (v3Var != null) {
            v3Var.a(handler);
        }
        this.f12470b = handler;
    }
}
