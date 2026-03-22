package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.java */
/* loaded from: classes5.dex */
final class t extends f0.e.d.a.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f51218a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51219b;

    /* renamed from: c  reason: collision with root package name */
    private final int f51220c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f51221d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.c.AbstractC0732a {

        /* renamed from: a  reason: collision with root package name */
        private String f51222a;

        /* renamed from: b  reason: collision with root package name */
        private int f51223b;

        /* renamed from: c  reason: collision with root package name */
        private int f51224c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f51225d;

        /* renamed from: e  reason: collision with root package name */
        private byte f51226e;

        @Override // e8.f0.e.d.a.c.AbstractC0732a
        public f0.e.d.a.c a() {
            String str;
            if (this.f51226e == 7 && (str = this.f51222a) != null) {
                return new t(str, this.f51223b, this.f51224c, this.f51225d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51222a == null) {
                sb2.append(" processName");
            }
            if ((this.f51226e & 1) == 0) {
                sb2.append(" pid");
            }
            if ((this.f51226e & 2) == 0) {
                sb2.append(" importance");
            }
            if ((this.f51226e & 4) == 0) {
                sb2.append(" defaultProcess");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.c.AbstractC0732a
        public f0.e.d.a.c.AbstractC0732a b(boolean z10) {
            this.f51225d = z10;
            this.f51226e = (byte) (this.f51226e | 4);
            return this;
        }

        @Override // e8.f0.e.d.a.c.AbstractC0732a
        public f0.e.d.a.c.AbstractC0732a c(int i10) {
            this.f51224c = i10;
            this.f51226e = (byte) (this.f51226e | 2);
            return this;
        }

        @Override // e8.f0.e.d.a.c.AbstractC0732a
        public f0.e.d.a.c.AbstractC0732a d(int i10) {
            this.f51223b = i10;
            this.f51226e = (byte) (this.f51226e | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.c.AbstractC0732a
        public f0.e.d.a.c.AbstractC0732a e(String str) {
            if (str != null) {
                this.f51222a = str;
                return this;
            }
            throw new NullPointerException("Null processName");
        }
    }

    @Override // e8.f0.e.d.a.c
    public int b() {
        return this.f51220c;
    }

    @Override // e8.f0.e.d.a.c
    public int c() {
        return this.f51219b;
    }

    @Override // e8.f0.e.d.a.c
    @NonNull
    public String d() {
        return this.f51218a;
    }

    @Override // e8.f0.e.d.a.c
    public boolean e() {
        return this.f51221d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.c)) {
            return false;
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        if (this.f51218a.equals(cVar.d()) && this.f51219b == cVar.c() && this.f51220c == cVar.b() && this.f51221d == cVar.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((((this.f51218a.hashCode() ^ 1000003) * 1000003) ^ this.f51219b) * 1000003) ^ this.f51220c) * 1000003;
        if (this.f51221d) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.f51218a + ", pid=" + this.f51219b + ", importance=" + this.f51220c + ", defaultProcess=" + this.f51221d + "}";
    }

    private t(String str, int i10, int i11, boolean z10) {
        this.f51218a = str;
        this.f51219b = i10;
        this.f51220c = i11;
        this.f51221d = z10;
    }
}
