package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
/* loaded from: classes5.dex */
final class e extends f0.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f51060a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51061b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.c.a {

        /* renamed from: a  reason: collision with root package name */
        private String f51062a;

        /* renamed from: b  reason: collision with root package name */
        private String f51063b;

        @Override // e8.f0.c.a
        public f0.c a() {
            String str;
            String str2 = this.f51062a;
            if (str2 != null && (str = this.f51063b) != null) {
                return new e(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51062a == null) {
                sb2.append(" key");
            }
            if (this.f51063b == null) {
                sb2.append(" value");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.c.a
        public f0.c.a b(String str) {
            if (str != null) {
                this.f51062a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // e8.f0.c.a
        public f0.c.a c(String str) {
            if (str != null) {
                this.f51063b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    @Override // e8.f0.c
    @NonNull
    public String b() {
        return this.f51060a;
    }

    @Override // e8.f0.c
    @NonNull
    public String c() {
        return this.f51061b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.c)) {
            return false;
        }
        f0.c cVar = (f0.c) obj;
        if (this.f51060a.equals(cVar.b()) && this.f51061b.equals(cVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f51060a.hashCode() ^ 1000003) * 1000003) ^ this.f51061b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f51060a + ", value=" + this.f51061b + "}";
    }

    private e(String str, String str2) {
        this.f51060a = str;
        this.f51061b = str2;
    }
}
