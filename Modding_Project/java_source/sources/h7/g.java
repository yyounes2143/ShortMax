package h7;

import com.google.common.base.Optional;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
/* compiled from: MoreObjects.java */
/* loaded from: classes5.dex */
public final class g {

    /* compiled from: MoreObjects.java */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f52600a;

        /* renamed from: b  reason: collision with root package name */
        private final C0765b f52601b;

        /* renamed from: c  reason: collision with root package name */
        private C0765b f52602c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f52603d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f52604e;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: MoreObjects.java */
        /* loaded from: classes5.dex */
        public static final class a extends C0765b {
            private a() {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MoreObjects.java */
        /* renamed from: h7.g$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static class C0765b {

            /* renamed from: a  reason: collision with root package name */
            String f52605a;

            /* renamed from: b  reason: collision with root package name */
            Object f52606b;

            /* renamed from: c  reason: collision with root package name */
            C0765b f52607c;

            C0765b() {
            }
        }

        private C0765b c() {
            C0765b c0765b = new C0765b();
            this.f52602c.f52607c = c0765b;
            this.f52602c = c0765b;
            return c0765b;
        }

        private b d(Object obj) {
            c().f52606b = obj;
            return this;
        }

        private b e(String str, Object obj) {
            C0765b c10 = c();
            c10.f52606b = obj;
            c10.f52605a = (String) k.j(str);
            return this;
        }

        private a f() {
            a aVar = new a();
            this.f52602c.f52607c = aVar;
            this.f52602c = aVar;
            return aVar;
        }

        private b g(String str, Object obj) {
            a f10 = f();
            f10.f52606b = obj;
            f10.f52605a = (String) k.j(str);
            return this;
        }

        private static boolean i(Object obj) {
            if (obj instanceof CharSequence) {
                if (((CharSequence) obj).length() != 0) {
                    return false;
                }
                return true;
            } else if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            } else {
                if (obj instanceof Map) {
                    return ((Map) obj).isEmpty();
                }
                if (obj instanceof Optional) {
                    return !((Optional) obj).e();
                }
                if (!obj.getClass().isArray() || Array.getLength(obj) != 0) {
                    return false;
                }
                return true;
            }
        }

        public b a(String str, int i10) {
            return g(str, String.valueOf(i10));
        }

        public b b(String str, Object obj) {
            return e(str, obj);
        }

        public b h(Object obj) {
            return d(obj);
        }

        public String toString() {
            boolean z10 = this.f52603d;
            boolean z11 = this.f52604e;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f52600a);
            sb2.append('{');
            String str = "";
            for (C0765b c0765b = this.f52601b.f52607c; c0765b != null; c0765b = c0765b.f52607c) {
                Object obj = c0765b.f52606b;
                if (!(c0765b instanceof a)) {
                    if (obj == null) {
                        if (z10) {
                        }
                    } else if (z11 && i(obj)) {
                    }
                }
                sb2.append(str);
                String str2 = c0765b.f52605a;
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
            sb2.append('}');
            return sb2.toString();
        }

        private b(String str) {
            C0765b c0765b = new C0765b();
            this.f52601b = c0765b;
            this.f52602c = c0765b;
            this.f52603d = false;
            this.f52604e = false;
            this.f52600a = (String) k.j(str);
        }
    }

    public static <T> T a(T t10, T t11) {
        if (t10 != null) {
            return t10;
        }
        if (t11 != null) {
            return t11;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
