package e8;

import androidx.annotation.NonNull;
import e8.f0;
import java.util.Arrays;
/* compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
/* loaded from: classes5.dex */
final class g extends f0.d.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f51072a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f51073b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.d.b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f51074a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f51075b;

        @Override // e8.f0.d.b.a
        public f0.d.b a() {
            byte[] bArr;
            String str = this.f51074a;
            if (str != null && (bArr = this.f51075b) != null) {
                return new g(str, bArr);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51074a == null) {
                sb2.append(" filename");
            }
            if (this.f51075b == null) {
                sb2.append(" contents");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.d.b.a
        public f0.d.b.a b(byte[] bArr) {
            if (bArr != null) {
                this.f51075b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // e8.f0.d.b.a
        public f0.d.b.a c(String str) {
            if (str != null) {
                this.f51074a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }
    }

    @Override // e8.f0.d.b
    @NonNull
    public byte[] b() {
        return this.f51073b;
    }

    @Override // e8.f0.d.b
    @NonNull
    public String c() {
        return this.f51072a;
    }

    public boolean equals(Object obj) {
        byte[] b10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d.b)) {
            return false;
        }
        f0.d.b bVar = (f0.d.b) obj;
        if (this.f51072a.equals(bVar.c())) {
            byte[] bArr = this.f51073b;
            if (bVar instanceof g) {
                b10 = ((g) bVar).f51073b;
            } else {
                b10 = bVar.b();
            }
            if (Arrays.equals(bArr, b10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f51072a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f51073b);
    }

    public String toString() {
        return "File{filename=" + this.f51072a + ", contents=" + Arrays.toString(this.f51073b) + "}";
    }

    private g(String str, byte[] bArr) {
        this.f51072a = str;
        this.f51073b = bArr;
    }
}
