package hb;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import java.util.UUID;
/* loaded from: classes5.dex */
public class b0 {

    /* renamed from: b  reason: collision with root package name */
    private static b0 f52641b;

    /* renamed from: a  reason: collision with root package name */
    private Context f52642a;

    /* loaded from: classes5.dex */
    private static class a extends m {

        /* renamed from: a  reason: collision with root package name */
        String f52643a;

        /* renamed from: b  reason: collision with root package name */
        String f52644b;

        public a(String str, String str2) {
            this.f52643a = str;
            this.f52644b = str2;
        }

        @Override // hb.m
        public String c() {
            return m1.d(this.f52643a, this.f52644b);
        }

        @Override // hb.m
        public String d(String str) {
            return kb.b.b(str);
        }

        @Override // hb.m
        public String f() {
            return m1.g(this.f52643a, this.f52644b);
        }

        @Override // hb.m
        public String g() {
            return m1.j(this.f52643a, this.f52644b);
        }

        @Override // hb.m
        public int h() {
            int i10;
            int i11 = 0;
            if (m1.k(this.f52643a, this.f52644b)) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            if (m1.e(this.f52643a, this.f52644b)) {
                i11 = 2;
            }
            return i10 | i11 | (m1.h(this.f52643a, this.f52644b) ? 1 : 0);
        }
    }

    public static b0 a() {
        b0 b0Var;
        synchronized (b0.class) {
            try {
                if (f52641b == null) {
                    f52641b = new b0();
                }
                b0Var = f52641b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return b0Var;
    }

    public String b(String str, String str2) {
        return y.a(this.f52642a, str, str2);
    }

    public String c(boolean z10) {
        if (!z10) {
            return "";
        }
        String i10 = v0.i();
        if (TextUtils.isEmpty(i10)) {
            i10 = l.b(this.f52642a, "global_v2", "uuid", "");
            if (TextUtils.isEmpty(i10)) {
                i10 = UUID.randomUUID().toString().replace("-", "");
                l.g(this.f52642a, "global_v2", "uuid", i10);
            }
            v0.p(i10);
        }
        return i10;
    }

    public void d(Context context) {
        if (this.f52642a == null) {
            this.f52642a = context;
        }
    }

    public String e(String str, String str2) {
        return y.b(this.f52642a, str, str2);
    }

    public a0 f(String str, String str2) {
        return new a(str, str2).b(this.f52642a);
    }

    public String g(String str, String str2) {
        return q.f(str, str2);
    }

    public Pair<String, String> h(String str, String str2) {
        if (m1.f(str, str2)) {
            String F = z0.e().d().F();
            String H = z0.e().d().H();
            if (!TextUtils.isEmpty(F) && !TextUtils.isEmpty(H)) {
                return new Pair<>(F, H);
            }
            Pair<String, String> l10 = h1.l(this.f52642a);
            z0.e().d().w((String) l10.first);
            z0.e().d().y((String) l10.second);
            return l10;
        }
        return new Pair<>("", "");
    }

    public String i(String str, String str2) {
        return q.e(str, str2);
    }
}
