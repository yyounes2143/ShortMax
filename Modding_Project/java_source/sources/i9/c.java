package i9;

import androidx.annotation.NonNull;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_RolloutsState.java */
/* loaded from: classes5.dex */
public final class c extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Set<d> f53364a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Set<d> set) {
        if (set != null) {
            this.f53364a = set;
            return;
        }
        throw new NullPointerException("Null rolloutAssignments");
    }

    @Override // i9.e
    @NonNull
    public Set<d> b() {
        return this.f53364a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return this.f53364a.equals(((e) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f53364a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f53364a + "}";
    }
}
