package c7;

import java.util.Arrays;
/* compiled from: FixedFrameRateEstimator.java */
/* loaded from: classes4.dex */
final class e {

    /* renamed from: c  reason: collision with root package name */
    private boolean f3233c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3234d;

    /* renamed from: f  reason: collision with root package name */
    private int f3236f;

    /* renamed from: a  reason: collision with root package name */
    private a f3231a = new a();

    /* renamed from: b  reason: collision with root package name */
    private a f3232b = new a();

    /* renamed from: e  reason: collision with root package name */
    private long f3235e = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FixedFrameRateEstimator.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f3237a;

        /* renamed from: b  reason: collision with root package name */
        private long f3238b;

        /* renamed from: c  reason: collision with root package name */
        private long f3239c;

        /* renamed from: d  reason: collision with root package name */
        private long f3240d;

        /* renamed from: e  reason: collision with root package name */
        private long f3241e;

        /* renamed from: f  reason: collision with root package name */
        private long f3242f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean[] f3243g = new boolean[15];

        /* renamed from: h  reason: collision with root package name */
        private int f3244h;

        private static int c(long j10) {
            return (int) (j10 % 15);
        }

        public long a() {
            long j10 = this.f3241e;
            if (j10 == 0) {
                return 0L;
            }
            return this.f3242f / j10;
        }

        public long b() {
            return this.f3242f;
        }

        public boolean d() {
            long j10 = this.f3240d;
            if (j10 == 0) {
                return false;
            }
            return this.f3243g[c(j10 - 1)];
        }

        public boolean e() {
            if (this.f3240d > 15 && this.f3244h == 0) {
                return true;
            }
            return false;
        }

        public void f(long j10) {
            long j11 = this.f3240d;
            if (j11 == 0) {
                this.f3237a = j10;
            } else if (j11 == 1) {
                long j12 = j10 - this.f3237a;
                this.f3238b = j12;
                this.f3242f = j12;
                this.f3241e = 1L;
            } else {
                long j13 = j10 - this.f3239c;
                int c10 = c(j11);
                if (Math.abs(j13 - this.f3238b) <= 1000000) {
                    this.f3241e++;
                    this.f3242f += j13;
                    boolean[] zArr = this.f3243g;
                    if (zArr[c10]) {
                        zArr[c10] = false;
                        this.f3244h--;
                    }
                } else {
                    boolean[] zArr2 = this.f3243g;
                    if (!zArr2[c10]) {
                        zArr2[c10] = true;
                        this.f3244h++;
                    }
                }
            }
            this.f3240d++;
            this.f3239c = j10;
        }

        public void g() {
            this.f3240d = 0L;
            this.f3241e = 0L;
            this.f3242f = 0L;
            this.f3244h = 0;
            Arrays.fill(this.f3243g, false);
        }
    }

    public long a() {
        if (e()) {
            return this.f3231a.a();
        }
        return -9223372036854775807L;
    }

    public float b() {
        if (e()) {
            return (float) (1.0E9d / this.f3231a.a());
        }
        return -1.0f;
    }

    public int c() {
        return this.f3236f;
    }

    public long d() {
        if (e()) {
            return this.f3231a.b();
        }
        return -9223372036854775807L;
    }

    public boolean e() {
        return this.f3231a.e();
    }

    public void f(long j10) {
        this.f3231a.f(j10);
        int i10 = 0;
        if (this.f3231a.e() && !this.f3234d) {
            this.f3233c = false;
        } else if (this.f3235e != -9223372036854775807L) {
            if (!this.f3233c || this.f3232b.d()) {
                this.f3232b.g();
                this.f3232b.f(this.f3235e);
            }
            this.f3233c = true;
            this.f3232b.f(j10);
        }
        if (this.f3233c && this.f3232b.e()) {
            a aVar = this.f3231a;
            this.f3231a = this.f3232b;
            this.f3232b = aVar;
            this.f3233c = false;
            this.f3234d = false;
        }
        this.f3235e = j10;
        if (!this.f3231a.e()) {
            i10 = this.f3236f + 1;
        }
        this.f3236f = i10;
    }

    public void g() {
        this.f3231a.g();
        this.f3232b.g();
        this.f3233c = false;
        this.f3235e = -9223372036854775807L;
        this.f3236f = 0;
    }
}
