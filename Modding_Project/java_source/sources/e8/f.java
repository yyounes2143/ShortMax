package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
/* loaded from: classes5.dex */
final class f extends f0.d {

    /* renamed from: a  reason: collision with root package name */
    private final List<f0.d.b> f51067a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51068b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.d.a {

        /* renamed from: a  reason: collision with root package name */
        private List<f0.d.b> f51069a;

        /* renamed from: b  reason: collision with root package name */
        private String f51070b;

        @Override // e8.f0.d.a
        public f0.d a() {
            List<f0.d.b> list = this.f51069a;
            if (list != null) {
                return new f(list, this.f51070b);
            }
            throw new IllegalStateException("Missing required properties: files");
        }

        @Override // e8.f0.d.a
        public f0.d.a b(List<f0.d.b> list) {
            if (list != null) {
                this.f51069a = list;
                return this;
            }
            throw new NullPointerException("Null files");
        }

        @Override // e8.f0.d.a
        public f0.d.a c(String str) {
            this.f51070b = str;
            return this;
        }
    }

    @Override // e8.f0.d
    @NonNull
    public List<f0.d.b> b() {
        return this.f51067a;
    }

    @Override // e8.f0.d
    @Nullable
    public String c() {
        return this.f51068b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d)) {
            return false;
        }
        f0.d dVar = (f0.d) obj;
        if (this.f51067a.equals(dVar.b())) {
            String str = this.f51068b;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f51067a.hashCode() ^ 1000003) * 1000003;
        String str = this.f51068b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 ^ hashCode;
    }

    public String toString() {
        return "FilesPayload{files=" + this.f51067a + ", orgId=" + this.f51068b + "}";
    }

    private f(List<f0.d.b> list, @Nullable String str) {
        this.f51067a = list;
        this.f51068b = str;
    }
}
