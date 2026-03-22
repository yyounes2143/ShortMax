package w7;

import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
/* compiled from: Dependency.java */
/* loaded from: classes5.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final a0<?> f69781a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69782b;

    /* renamed from: c  reason: collision with root package name */
    private final int f69783c;

    private q(Class<?> cls, int i10, int i11) {
        this(a0.b(cls), i10, i11);
    }

    public static q a(Class<?> cls) {
        return new q(cls, 0, 2);
    }

    private static String b(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return "deferred";
                }
                throw new AssertionError("Unsupported injection: " + i10);
            }
            return "provider";
        }
        return DevicePublicKeyStringDef.DIRECT;
    }

    @Deprecated
    public static q h(Class<?> cls) {
        return new q(cls, 0, 0);
    }

    public static q i(Class<?> cls) {
        return new q(cls, 0, 1);
    }

    public static q j(a0<?> a0Var) {
        return new q(a0Var, 0, 1);
    }

    public static q k(Class<?> cls) {
        return new q(cls, 1, 0);
    }

    public static q l(a0<?> a0Var) {
        return new q(a0Var, 1, 0);
    }

    public static q m(Class<?> cls) {
        return new q(cls, 1, 1);
    }

    public static q n(a0<?> a0Var) {
        return new q(a0Var, 1, 1);
    }

    public static q o(Class<?> cls) {
        return new q(cls, 2, 0);
    }

    public a0<?> c() {
        return this.f69781a;
    }

    public boolean d() {
        if (this.f69783c == 2) {
            return true;
        }
        return false;
    }

    public boolean e() {
        if (this.f69783c == 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (!this.f69781a.equals(qVar.f69781a) || this.f69782b != qVar.f69782b || this.f69783c != qVar.f69783c) {
            return false;
        }
        return true;
    }

    public boolean f() {
        if (this.f69782b == 1) {
            return true;
        }
        return false;
    }

    public boolean g() {
        if (this.f69782b == 2) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f69781a.hashCode() ^ 1000003) * 1000003) ^ this.f69782b) * 1000003) ^ this.f69783c;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f69781a);
        sb2.append(", type=");
        int i10 = this.f69782b;
        if (i10 == 1) {
            str = "required";
        } else if (i10 == 0) {
            str = "optional";
        } else {
            str = "set";
        }
        sb2.append(str);
        sb2.append(", injection=");
        sb2.append(b(this.f69783c));
        sb2.append("}");
        return sb2.toString();
    }

    private q(a0<?> a0Var, int i10, int i11) {
        this.f69781a = (a0) z.c(a0Var, "Null dependency anInterface.");
        this.f69782b = i10;
        this.f69783c = i11;
    }
}
