package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.java */
/* loaded from: classes5.dex */
final class d extends f0.a.AbstractC0718a {

    /* renamed from: a  reason: collision with root package name */
    private final String f51045a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51046b;

    /* renamed from: c  reason: collision with root package name */
    private final String f51047c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.a.AbstractC0718a.AbstractC0719a {

        /* renamed from: a  reason: collision with root package name */
        private String f51048a;

        /* renamed from: b  reason: collision with root package name */
        private String f51049b;

        /* renamed from: c  reason: collision with root package name */
        private String f51050c;

        @Override // e8.f0.a.AbstractC0718a.AbstractC0719a
        public f0.a.AbstractC0718a a() {
            String str;
            String str2;
            String str3 = this.f51048a;
            if (str3 != null && (str = this.f51049b) != null && (str2 = this.f51050c) != null) {
                return new d(str3, str, str2);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51048a == null) {
                sb2.append(" arch");
            }
            if (this.f51049b == null) {
                sb2.append(" libraryName");
            }
            if (this.f51050c == null) {
                sb2.append(" buildId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.a.AbstractC0718a.AbstractC0719a
        public f0.a.AbstractC0718a.AbstractC0719a b(String str) {
            if (str != null) {
                this.f51048a = str;
                return this;
            }
            throw new NullPointerException("Null arch");
        }

        @Override // e8.f0.a.AbstractC0718a.AbstractC0719a
        public f0.a.AbstractC0718a.AbstractC0719a c(String str) {
            if (str != null) {
                this.f51050c = str;
                return this;
            }
            throw new NullPointerException("Null buildId");
        }

        @Override // e8.f0.a.AbstractC0718a.AbstractC0719a
        public f0.a.AbstractC0718a.AbstractC0719a d(String str) {
            if (str != null) {
                this.f51049b = str;
                return this;
            }
            throw new NullPointerException("Null libraryName");
        }
    }

    @Override // e8.f0.a.AbstractC0718a
    @NonNull
    public String b() {
        return this.f51045a;
    }

    @Override // e8.f0.a.AbstractC0718a
    @NonNull
    public String c() {
        return this.f51047c;
    }

    @Override // e8.f0.a.AbstractC0718a
    @NonNull
    public String d() {
        return this.f51046b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a.AbstractC0718a)) {
            return false;
        }
        f0.a.AbstractC0718a abstractC0718a = (f0.a.AbstractC0718a) obj;
        if (this.f51045a.equals(abstractC0718a.b()) && this.f51046b.equals(abstractC0718a.d()) && this.f51047c.equals(abstractC0718a.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f51045a.hashCode() ^ 1000003) * 1000003) ^ this.f51046b.hashCode()) * 1000003) ^ this.f51047c.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.f51045a + ", libraryName=" + this.f51046b + ", buildId=" + this.f51047c + "}";
    }

    private d(String str, String str2, String str3) {
        this.f51045a = str;
        this.f51046b = str2;
        this.f51047c = str3;
    }
}
