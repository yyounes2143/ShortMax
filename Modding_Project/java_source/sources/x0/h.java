package x0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
/* compiled from: MutablePair.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class h<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    T f70384a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    T f70385b;

    private static boolean a(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    public void b(T t10, T t11) {
        this.f70384a = t10;
        this.f70385b = t11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        if (!a(pair.first, this.f70384a) || !a(pair.second, this.f70385b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        T t10 = this.f70384a;
        int i10 = 0;
        if (t10 == null) {
            hashCode = 0;
        } else {
            hashCode = t10.hashCode();
        }
        T t11 = this.f70385b;
        if (t11 != null) {
            i10 = t11.hashCode();
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "Pair{" + this.f70384a + " " + this.f70385b + "}";
    }
}
