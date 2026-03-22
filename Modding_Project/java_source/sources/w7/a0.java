package w7;

import androidx.annotation.NonNull;
import java.lang.annotation.Annotation;
/* compiled from: Qualified.java */
/* loaded from: classes5.dex */
public final class a0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<? extends Annotation> f69725a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<T> f69726b;

    /* compiled from: Qualified.java */
    /* loaded from: classes5.dex */
    private @interface a {
    }

    public a0(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f69725a = cls;
        this.f69726b = cls2;
    }

    @NonNull
    public static <T> a0<T> a(Class<? extends Annotation> cls, Class<T> cls2) {
        return new a0<>(cls, cls2);
    }

    @NonNull
    public static <T> a0<T> b(Class<T> cls) {
        return new a0<>(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (!this.f69726b.equals(a0Var.f69726b)) {
            return false;
        }
        return this.f69725a.equals(a0Var.f69725a);
    }

    public int hashCode() {
        return (this.f69726b.hashCode() * 31) + this.f69725a.hashCode();
    }

    public String toString() {
        if (this.f69725a == a.class) {
            return this.f69726b.getName();
        }
        return "@" + this.f69725a.getName() + " " + this.f69726b.getName();
    }
}
