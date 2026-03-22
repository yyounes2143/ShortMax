package yn;

import java.util.Arrays;
/* compiled from: FixedFrameRateEstimator.java */
/* loaded from: classes8.dex */
final class a {

    /* renamed from: c  reason: collision with root package name */
    private boolean f71008c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f71009d;

    /* renamed from: f  reason: collision with root package name */
    private int f71011f;

    /* renamed from: a  reason: collision with root package name */
    private C0977a f71006a = new C0977a();

    /* renamed from: b  reason: collision with root package name */
    private C0977a f71007b = new C0977a();

    /* renamed from: e  reason: collision with root package name */
    private long f71010e = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FixedFrameRateEstimator.java */
    /* renamed from: yn.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0977a {

        /* renamed from: a  reason: collision with root package name */
        private long f71012a;

        /* renamed from: b  reason: collision with root package name */
        private long f71013b;

        /* renamed from: c  reason: collision with root package name */
        private long f71014c;

        /* renamed from: d  reason: collision with root package name */
        private long f71015d;

        /* renamed from: e  reason: collision with root package name */
        private long f71016e;

        /* renamed from: f  reason: collision with root package name */
        private long f71017f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f71018g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f71019h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f71016e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f71017f / j10;
        }

        public long b() {
            return this.f71017f;
        }

        public boolean d() {
            long j10 = this.f71015d;
            if (j10 == 0) {
                return false;
            }
            return this.f71018g[c(j10 - 1)];
        }

        public boolean e() {
            if (this.f71015d > 15 && this.f71019h == 0) {
                return true;
            }
            return false;
        }

        public void f(long j10) {
            long j11 = this.f71015d;
            if (j11 == 0) {
                this.f71012a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f71012a;
                this.f71013b = j12;
                this.f71017f = j12;
                this.f71016e = 1L;
            } else {
                long j13 = j10 - this.f71014c;
                int c10 = c(j11);
                if (Math.abs(j13 - this.f71013b) <= 1000000) {
                    this.f71016e++;
                    this.f71017f += j13;
                    boolean[] zArr = this.f71018g;
                    if (zArr[c10]) {
                        zArr[c10] = false;
                        this.f71019h--;
                    }
                } else {
                    boolean[] zArr2 = this.f71018g;
                    if (!zArr2[c10]) {
                        zArr2[c10] = true;
                        this.f71019h++;
                    }
                }
            }
            this.f71015d++;
            this.f71014c = j10;
        }

        public void g() {
            this.f71015d = 0L;
            this.f71016e = 0L;
            this.f71017f = 0L;
            this.f71019h = 0;
            Arrays.fill(this.f71018g, false);
        }
    }

    public long a() {
        if (e()) {
            return this.f71006a.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f71006a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f71011f;
    }

    public long d() {
        if (e()) {
            return this.f71006a.b();
        }
        return -9223372036854775807L;
    }

    public boolean e() {
        return this.f71006a.e();
    }

    public void f(long j10) {
        this.f71006a.f(j10);
        int i10 = 0;
        if (this.f71006a.e() && !this.f71009d) {
            this.f71008c = false;
        } else if (this.f71010e != -9223372036854775807L) {
            if (!this.f71008c || this.f71007b.d()) {
                this.f71007b.g();
                this.f71007b.f(this.f71010e);
            }
            this.f71008c = true;
            this.f71007b.f(j10);
        }
        if (this.f71008c && this.f71007b.e()) {
            C0977a c0977a = this.f71006a;
            this.f71006a = this.f71007b;
            this.f71007b = c0977a;
            this.f71008c = false;
            this.f71009d = false;
        }
        this.f71010e = j10;
        if (!this.f71006a.e()) {
            i10 = this.f71011f + 1;
        }
        this.f71011f = i10;
    }

    public void g() {
        this.f71006a.g();
        this.f71007b.g();
        this.f71008c = false;
        this.f71010e = -9223372036854775807L;
        this.f71011f = 0;
    }
}
