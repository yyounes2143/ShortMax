package c5;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import c5.p;
import com.google.android.datatransport.Priority;
import java.util.Arrays;
/* compiled from: AutoValue_TransportContext.java */
/* loaded from: classes4.dex */
final class d extends p {

    /* renamed from: a  reason: collision with root package name */
    private final String f3103a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3104b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f3105c;

    /* compiled from: AutoValue_TransportContext.java */
    /* loaded from: classes4.dex */
    static final class b extends p.a {

        /* renamed from: a  reason: collision with root package name */
        private String f3106a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f3107b;

        /* renamed from: c  reason: collision with root package name */
        private Priority f3108c;

        @Override // c5.p.a
        public p a() {
            String str = "";
            if (this.f3106a == null) {
                str = " backendName";
            }
            if (this.f3108c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.f3106a, this.f3107b, this.f3108c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // c5.p.a
        public p.a b(String str) {
            if (str != null) {
                this.f3106a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // c5.p.a
        public p.a c(@Nullable byte[] bArr) {
            this.f3107b = bArr;
            return this;
        }

        @Override // c5.p.a
        public p.a d(Priority priority) {
            if (priority != null) {
                this.f3108c = priority;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    @Override // c5.p
    public String b() {
        return this.f3103a;
    }

    @Override // c5.p
    @Nullable
    public byte[] c() {
        return this.f3104b;
    }

    @Override // c5.p
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Priority d() {
        return this.f3105c;
    }

    public boolean equals(Object obj) {
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f3103a.equals(pVar.b())) {
            byte[] bArr = this.f3104b;
            if (pVar instanceof d) {
                c10 = ((d) pVar).f3104b;
            } else {
                c10 = pVar.c();
            }
            if (Arrays.equals(bArr, c10) && this.f3105c.equals(pVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f3103a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f3104b)) * 1000003) ^ this.f3105c.hashCode();
    }

    private d(String str, @Nullable byte[] bArr, Priority priority) {
        this.f3103a = str;
        this.f3104b = bArr;
        this.f3105c = priority;
    }
}
