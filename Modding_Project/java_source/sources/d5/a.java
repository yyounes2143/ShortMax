package d5;

import androidx.annotation.Nullable;
import d5.e;
import java.util.Arrays;
/* compiled from: AutoValue_BackendRequest.java */
/* loaded from: classes4.dex */
final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<c5.i> f49809a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f49810b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_BackendRequest.java */
    /* loaded from: classes4.dex */
    public static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        private Iterable<c5.i> f49811a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f49812b;

        @Override // d5.e.a
        public e a() {
            String str = "";
            if (this.f49811a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f49811a, this.f49812b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // d5.e.a
        public e.a b(Iterable<c5.i> iterable) {
            if (iterable != null) {
                this.f49811a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // d5.e.a
        public e.a c(@Nullable byte[] bArr) {
            this.f49812b = bArr;
            return this;
        }
    }

    @Override // d5.e
    public Iterable<c5.i> b() {
        return this.f49809a;
    }

    @Override // d5.e
    @Nullable
    public byte[] c() {
        return this.f49810b;
    }

    public boolean equals(Object obj) {
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f49809a.equals(eVar.b())) {
            byte[] bArr = this.f49810b;
            if (eVar instanceof a) {
                c10 = ((a) eVar).f49810b;
            } else {
                c10 = eVar.c();
            }
            if (Arrays.equals(bArr, c10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f49809a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f49810b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f49809a + ", extras=" + Arrays.toString(this.f49810b) + "}";
    }

    private a(Iterable<c5.i> iterable, @Nullable byte[] bArr) {
        this.f49809a = iterable;
        this.f49810b = bArr;
    }
}
