package f9;

import androidx.annotation.NonNull;
import java.util.Set;
/* compiled from: AutoValue_ConfigUpdate.java */
/* loaded from: classes5.dex */
final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f51665a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Set<String> set) {
        if (set != null) {
            this.f51665a = set;
            return;
        }
        throw new NullPointerException("Null updatedKeys");
    }

    @Override // f9.b
    @NonNull
    public Set<String> b() {
        return this.f51665a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return this.f51665a.equals(((b) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f51665a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ConfigUpdate{updatedKeys=" + this.f51665a + "}";
    }
}
