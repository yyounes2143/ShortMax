package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
/* loaded from: classes5.dex */
final class z extends f0.e.AbstractC0735e {

    /* renamed from: a  reason: collision with root package name */
    private final int f51257a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51258b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51259c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f51260d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_OperatingSystem.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.AbstractC0735e.a {

        /* renamed from: a  reason: collision with root package name */
        private int f51261a;

        /* renamed from: b  reason: collision with root package name */
        private String f51262b;

        /* renamed from: c  reason: collision with root package name */
        private String f51263c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f51264d;

        /* renamed from: e  reason: collision with root package name */
        private byte f51265e;

        @Override // e8.f0.e.AbstractC0735e.a
        public f0.e.AbstractC0735e a() {
            String str;
            String str2;
            if (this.f51265e == 3 && (str = this.f51262b) != null && (str2 = this.f51263c) != null) {
                return new z(this.f51261a, str, str2, this.f51264d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f51265e & 1) == 0) {
                sb2.append(" platform");
            }
            if (this.f51262b == null) {
                sb2.append(" version");
            }
            if (this.f51263c == null) {
                sb2.append(" buildVersion");
            }
            if ((this.f51265e & 2) == 0) {
                sb2.append(" jailbroken");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.AbstractC0735e.a
        public f0.e.AbstractC0735e.a b(String str) {
            if (str != null) {
                this.f51263c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // e8.f0.e.AbstractC0735e.a
        public f0.e.AbstractC0735e.a c(boolean z10) {
            this.f51264d = z10;
            this.f51265e = (byte) (this.f51265e | 2);
            return this;
        }

        @Override // e8.f0.e.AbstractC0735e.a
        public f0.e.AbstractC0735e.a d(int i10) {
            this.f51261a = i10;
            this.f51265e = (byte) (this.f51265e | 1);
            return this;
        }

        @Override // e8.f0.e.AbstractC0735e.a
        public f0.e.AbstractC0735e.a e(String str) {
            if (str != null) {
                this.f51262b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // e8.f0.e.AbstractC0735e
    @NonNull
    public String b() {
        return this.f51259c;
    }

    @Override // e8.f0.e.AbstractC0735e
    public int c() {
        return this.f51257a;
    }

    @Override // e8.f0.e.AbstractC0735e
    @NonNull
    public String d() {
        return this.f51258b;
    }

    @Override // e8.f0.e.AbstractC0735e
    public boolean e() {
        return this.f51260d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.AbstractC0735e)) {
            return false;
        }
        f0.e.AbstractC0735e abstractC0735e = (f0.e.AbstractC0735e) obj;
        if (this.f51257a == abstractC0735e.c() && this.f51258b.equals(abstractC0735e.d()) && this.f51259c.equals(abstractC0735e.b()) && this.f51260d == abstractC0735e.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((((this.f51257a ^ 1000003) * 1000003) ^ this.f51258b.hashCode()) * 1000003) ^ this.f51259c.hashCode()) * 1000003;
        if (this.f51260d) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f51257a + ", version=" + this.f51258b + ", buildVersion=" + this.f51259c + ", jailbroken=" + this.f51260d + "}";
    }

    private z(int i10, String str, String str2, boolean z10) {
        this.f51257a = i10;
        this.f51258b = str;
        this.f51259c = str2;
        this.f51260d = z10;
    }
}
