package e8;

import androidx.annotation.NonNull;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutsState.java */
/* loaded from: classes5.dex */
final class y extends f0.e.d.f {

    /* renamed from: a  reason: collision with root package name */
    private final List<f0.e.d.AbstractC0734e> f51255a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutsState.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.f.a {

        /* renamed from: a  reason: collision with root package name */
        private List<f0.e.d.AbstractC0734e> f51256a;

        @Override // e8.f0.e.d.f.a
        public f0.e.d.f a() {
            List<f0.e.d.AbstractC0734e> list = this.f51256a;
            if (list != null) {
                return new y(list);
            }
            throw new IllegalStateException("Missing required properties: rolloutAssignments");
        }

        @Override // e8.f0.e.d.f.a
        public f0.e.d.f.a b(List<f0.e.d.AbstractC0734e> list) {
            if (list != null) {
                this.f51256a = list;
                return this;
            }
            throw new NullPointerException("Null rolloutAssignments");
        }
    }

    @Override // e8.f0.e.d.f
    @NonNull
    public List<f0.e.d.AbstractC0734e> b() {
        return this.f51255a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.f) {
            return this.f51255a.equals(((f0.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f51255a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f51255a + "}";
    }

    private y(List<f0.e.d.AbstractC0734e> list) {
        this.f51255a = list;
    }
}
