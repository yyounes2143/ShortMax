package k2;

import java.util.Arrays;
/* compiled from: Objects.java */
/* loaded from: classes3.dex */
public final class f {

    /* compiled from: Objects.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f60576a;

        /* renamed from: b  reason: collision with root package name */
        private final C0842a f60577b;

        /* renamed from: c  reason: collision with root package name */
        private C0842a f60578c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f60579d;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Objects.java */
        /* renamed from: k2.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0842a {

            /* renamed from: a  reason: collision with root package name */
            String f60580a;

            /* renamed from: b  reason: collision with root package name */
            Object f60581b;

            /* renamed from: c  reason: collision with root package name */
            C0842a f60582c;

            private C0842a() {
            }
        }

        private C0842a e() {
            C0842a c0842a = new C0842a();
            this.f60578c.f60582c = c0842a;
            this.f60578c = c0842a;
            return c0842a;
        }

        private a f(String str, Object obj) {
            C0842a e10 = e();
            e10.f60581b = obj;
            e10.f60580a = (String) h.g(str);
            return this;
        }

        public a a(String str, int i10) {
            return f(str, String.valueOf(i10));
        }

        public a b(String str, long j10) {
            return f(str, String.valueOf(j10));
        }

        public a c(String str, Object obj) {
            return f(str, obj);
        }

        public a d(String str, boolean z10) {
            return f(str, String.valueOf(z10));
        }

        public String toString() {
            boolean z10 = this.f60579d;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f60576a);
            sb2.append('{');
            String str = "";
            for (C0842a c0842a = this.f60577b.f60582c; c0842a != null; c0842a = c0842a.f60582c) {
                Object obj = c0842a.f60581b;
                if (!z10 || obj != null) {
                    sb2.append(str);
                    String str2 = c0842a.f60580a;
                    if (str2 != null) {
                        sb2.append(str2);
                        sb2.append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        String deepToString = Arrays.deepToString(new Object[]{obj});
                        sb2.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    } else {
                        sb2.append(obj);
                    }
                    str = ", ";
                }
            }
            sb2.append('}');
            return sb2.toString();
        }

        private a(String str) {
            C0842a c0842a = new C0842a();
            this.f60577b = c0842a;
            this.f60578c = c0842a;
            this.f60579d = false;
            this.f60576a = (String) h.g(str);
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    public static a b(Object obj) {
        return new a(obj.getClass().getSimpleName());
    }
}
