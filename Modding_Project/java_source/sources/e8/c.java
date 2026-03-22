package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo.java */
/* loaded from: classes5.dex */
final class c extends f0.a {

    /* renamed from: a  reason: collision with root package name */
    private final int f51020a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51021b;

    /* renamed from: c  reason: collision with root package name */
    private final int f51022c;

    /* renamed from: d  reason: collision with root package name */
    private final int f51023d;

    /* renamed from: e  reason: collision with root package name */
    private final long f51024e;

    /* renamed from: f  reason: collision with root package name */
    private final long f51025f;

    /* renamed from: g  reason: collision with root package name */
    private final long f51026g;

    /* renamed from: h  reason: collision with root package name */
    private final String f51027h;

    /* renamed from: i  reason: collision with root package name */
    private final List<f0.a.AbstractC0718a> f51028i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.a.b {

        /* renamed from: a  reason: collision with root package name */
        private int f51029a;

        /* renamed from: b  reason: collision with root package name */
        private String f51030b;

        /* renamed from: c  reason: collision with root package name */
        private int f51031c;

        /* renamed from: d  reason: collision with root package name */
        private int f51032d;

        /* renamed from: e  reason: collision with root package name */
        private long f51033e;

        /* renamed from: f  reason: collision with root package name */
        private long f51034f;

        /* renamed from: g  reason: collision with root package name */
        private long f51035g;

        /* renamed from: h  reason: collision with root package name */
        private String f51036h;

        /* renamed from: i  reason: collision with root package name */
        private List<f0.a.AbstractC0718a> f51037i;

        /* renamed from: j  reason: collision with root package name */
        private byte f51038j;

        @Override // e8.f0.a.b
        public f0.a a() {
            String str;
            if (this.f51038j == 63 && (str = this.f51030b) != null) {
                return new c(this.f51029a, str, this.f51031c, this.f51032d, this.f51033e, this.f51034f, this.f51035g, this.f51036h, this.f51037i);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f51038j & 1) == 0) {
                sb2.append(" pid");
            }
            if (this.f51030b == null) {
                sb2.append(" processName");
            }
            if ((this.f51038j & 2) == 0) {
                sb2.append(" reasonCode");
            }
            if ((this.f51038j & 4) == 0) {
                sb2.append(" importance");
            }
            if ((this.f51038j & 8) == 0) {
                sb2.append(" pss");
            }
            if ((this.f51038j & 16) == 0) {
                sb2.append(" rss");
            }
            if ((this.f51038j & 32) == 0) {
                sb2.append(" timestamp");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.a.b
        public f0.a.b b(@Nullable List<f0.a.AbstractC0718a> list) {
            this.f51037i = list;
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b c(int i10) {
            this.f51032d = i10;
            this.f51038j = (byte) (this.f51038j | 4);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b d(int i10) {
            this.f51029a = i10;
            this.f51038j = (byte) (this.f51038j | 1);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b e(String str) {
            if (str != null) {
                this.f51030b = str;
                return this;
            }
            throw new NullPointerException("Null processName");
        }

        @Override // e8.f0.a.b
        public f0.a.b f(long j10) {
            this.f51033e = j10;
            this.f51038j = (byte) (this.f51038j | 8);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b g(int i10) {
            this.f51031c = i10;
            this.f51038j = (byte) (this.f51038j | 2);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b h(long j10) {
            this.f51034f = j10;
            this.f51038j = (byte) (this.f51038j | 16);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b i(long j10) {
            this.f51035g = j10;
            this.f51038j = (byte) (this.f51038j | 32);
            return this;
        }

        @Override // e8.f0.a.b
        public f0.a.b j(@Nullable String str) {
            this.f51036h = str;
            return this;
        }
    }

    @Override // e8.f0.a
    @Nullable
    public List<f0.a.AbstractC0718a> b() {
        return this.f51028i;
    }

    @Override // e8.f0.a
    @NonNull
    public int c() {
        return this.f51023d;
    }

    @Override // e8.f0.a
    @NonNull
    public int d() {
        return this.f51020a;
    }

    @Override // e8.f0.a
    @NonNull
    public String e() {
        return this.f51021b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a)) {
            return false;
        }
        f0.a aVar = (f0.a) obj;
        if (this.f51020a == aVar.d() && this.f51021b.equals(aVar.e()) && this.f51022c == aVar.g() && this.f51023d == aVar.c() && this.f51024e == aVar.f() && this.f51025f == aVar.h() && this.f51026g == aVar.i() && ((str = this.f51027h) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List<f0.a.AbstractC0718a> list = this.f51028i;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // e8.f0.a
    @NonNull
    public long f() {
        return this.f51024e;
    }

    @Override // e8.f0.a
    @NonNull
    public int g() {
        return this.f51022c;
    }

    @Override // e8.f0.a
    @NonNull
    public long h() {
        return this.f51025f;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f51024e;
        long j11 = this.f51025f;
        long j12 = this.f51026g;
        int hashCode2 = (((((((((((((this.f51020a ^ 1000003) * 1000003) ^ this.f51021b.hashCode()) * 1000003) ^ this.f51022c) * 1000003) ^ this.f51023d) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str = this.f51027h;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        List<f0.a.AbstractC0718a> list = this.f51028i;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i11 ^ i10;
    }

    @Override // e8.f0.a
    @NonNull
    public long i() {
        return this.f51026g;
    }

    @Override // e8.f0.a
    @Nullable
    public String j() {
        return this.f51027h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f51020a + ", processName=" + this.f51021b + ", reasonCode=" + this.f51022c + ", importance=" + this.f51023d + ", pss=" + this.f51024e + ", rss=" + this.f51025f + ", timestamp=" + this.f51026g + ", traceFile=" + this.f51027h + ", buildIdMappingForArch=" + this.f51028i + "}";
    }

    private c(int i10, String str, int i11, int i12, long j10, long j11, long j12, @Nullable String str2, @Nullable List<f0.a.AbstractC0718a> list) {
        this.f51020a = i10;
        this.f51021b = str;
        this.f51022c = i11;
        this.f51023d = i12;
        this.f51024e = j10;
        this.f51025f = j11;
        this.f51026g = j12;
        this.f51027h = str2;
        this.f51028i = list;
    }
}
