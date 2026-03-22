package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.java */
/* loaded from: classes5.dex */
final class x extends f0.e.d.AbstractC0734e.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f51251a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51252b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.AbstractC0734e.b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f51253a;

        /* renamed from: b  reason: collision with root package name */
        private String f51254b;

        @Override // e8.f0.e.d.AbstractC0734e.b.a
        public f0.e.d.AbstractC0734e.b a() {
            String str;
            String str2 = this.f51253a;
            if (str2 != null && (str = this.f51254b) != null) {
                return new x(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51253a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f51254b == null) {
                sb2.append(" variantId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.AbstractC0734e.b.a
        public f0.e.d.AbstractC0734e.b.a b(String str) {
            if (str != null) {
                this.f51253a = str;
                return this;
            }
            throw new NullPointerException("Null rolloutId");
        }

        @Override // e8.f0.e.d.AbstractC0734e.b.a
        public f0.e.d.AbstractC0734e.b.a c(String str) {
            if (str != null) {
                this.f51254b = str;
                return this;
            }
            throw new NullPointerException("Null variantId");
        }
    }

    @Override // e8.f0.e.d.AbstractC0734e.b
    @NonNull
    public String b() {
        return this.f51251a;
    }

    @Override // e8.f0.e.d.AbstractC0734e.b
    @NonNull
    public String c() {
        return this.f51252b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0734e.b)) {
            return false;
        }
        f0.e.d.AbstractC0734e.b bVar = (f0.e.d.AbstractC0734e.b) obj;
        if (this.f51251a.equals(bVar.b()) && this.f51252b.equals(bVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f51251a.hashCode() ^ 1000003) * 1000003) ^ this.f51252b.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.f51251a + ", variantId=" + this.f51252b + "}";
    }

    private x(String str, String str2) {
        this.f51251a = str;
        this.f51252b = str2;
    }
}
