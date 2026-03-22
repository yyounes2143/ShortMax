package zm;

import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import java.util.Arrays;
import java.util.Objects;
import zm.q;
/* compiled from: AdPlaybackState.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: g  reason: collision with root package name */
    public static final b f71773g = new b(null, new a[0], 0, -9223372036854775807L, 0);

    /* renamed from: h  reason: collision with root package name */
    private static final a f71774h = new a(0).h(0);

    /* renamed from: i  reason: collision with root package name */
    private static final String f71775i = m0.C0(1);

    /* renamed from: j  reason: collision with root package name */
    private static final String f71776j = m0.C0(2);

    /* renamed from: k  reason: collision with root package name */
    private static final String f71777k = m0.C0(3);

    /* renamed from: l  reason: collision with root package name */
    private static final String f71778l = m0.C0(4);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f71779a;

    /* renamed from: b  reason: collision with root package name */
    public final int f71780b;

    /* renamed from: c  reason: collision with root package name */
    public final long f71781c;

    /* renamed from: d  reason: collision with root package name */
    public final long f71782d;

    /* renamed from: e  reason: collision with root package name */
    public final int f71783e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f71784f;

    /* compiled from: AdPlaybackState.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: l  reason: collision with root package name */
        private static final String f71785l = m0.C0(0);

        /* renamed from: m  reason: collision with root package name */
        private static final String f71786m = m0.C0(1);

        /* renamed from: n  reason: collision with root package name */
        private static final String f71787n = m0.C0(2);

        /* renamed from: o  reason: collision with root package name */
        private static final String f71788o = m0.C0(3);

        /* renamed from: p  reason: collision with root package name */
        private static final String f71789p = m0.C0(4);

        /* renamed from: q  reason: collision with root package name */
        private static final String f71790q = m0.C0(5);

        /* renamed from: r  reason: collision with root package name */
        private static final String f71791r = m0.C0(6);

        /* renamed from: s  reason: collision with root package name */
        private static final String f71792s = m0.C0(7);
        @VisibleForTesting

        /* renamed from: t  reason: collision with root package name */
        static final String f71793t = m0.C0(8);

        /* renamed from: u  reason: collision with root package name */
        static final String f71794u = m0.C0(9);

        /* renamed from: v  reason: collision with root package name */
        static final String f71795v = m0.C0(10);

        /* renamed from: a  reason: collision with root package name */
        public final long f71796a;

        /* renamed from: b  reason: collision with root package name */
        public final int f71797b;

        /* renamed from: c  reason: collision with root package name */
        public final int f71798c;
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public final Uri[] f71799d;

        /* renamed from: e  reason: collision with root package name */
        public final q[] f71800e;

        /* renamed from: f  reason: collision with root package name */
        public final int[] f71801f;

        /* renamed from: g  reason: collision with root package name */
        public final long[] f71802g;

        /* renamed from: h  reason: collision with root package name */
        public final String[] f71803h;

        /* renamed from: i  reason: collision with root package name */
        public final long f71804i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f71805j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f71806k;

        public a(long j10) {
            this(j10, -1, -1, new int[0], new q[0], new long[0], 0L, false, new String[0], false);
        }

        @CheckResult
        private static long[] a(long[] jArr, int i10) {
            int length = jArr.length;
            int max = Math.max(i10, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, -9223372036854775807L);
            return copyOf;
        }

        @CheckResult
        private static int[] b(int[] iArr, int i10) {
            int length = iArr.length;
            int max = Math.max(i10, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        public int c() {
            return d(-1);
        }

        public int d(@IntRange(from = -1) int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.f71801f;
                if (i12 >= iArr.length || this.f71805j || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean e() {
            if (this.f71797b == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f71797b; i10++) {
                int i11 = this.f71801f[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f71796a == aVar.f71796a && this.f71797b == aVar.f71797b && this.f71798c == aVar.f71798c && Arrays.equals(this.f71800e, aVar.f71800e) && Arrays.equals(this.f71801f, aVar.f71801f) && Arrays.equals(this.f71802g, aVar.f71802g) && this.f71804i == aVar.f71804i && this.f71805j == aVar.f71805j && Arrays.equals(this.f71803h, aVar.f71803h) && this.f71806k == aVar.f71806k) {
                return true;
            }
            return false;
        }

        public boolean f() {
            if (this.f71806k && this.f71796a == Long.MIN_VALUE && this.f71797b == -1) {
                return true;
            }
            return false;
        }

        public boolean g() {
            if (this.f71797b != -1 && c() >= this.f71797b) {
                return false;
            }
            return true;
        }

        @CheckResult
        public a h(int i10) {
            int[] b10 = b(this.f71801f, i10);
            long[] a10 = a(this.f71802g, i10);
            return new a(this.f71796a, i10, this.f71798c, b10, (q[]) Arrays.copyOf(this.f71800e, i10), a10, this.f71804i, this.f71805j, (String[]) Arrays.copyOf(this.f71803h, i10), this.f71806k);
        }

        public int hashCode() {
            long j10 = this.f71796a;
            long j11 = this.f71804i;
            return (((((((((((((((((this.f71797b * 31) + this.f71798c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f71800e)) * 31) + Arrays.hashCode(this.f71801f)) * 31) + Arrays.hashCode(this.f71802g)) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f71805j ? 1 : 0)) * 31) + Arrays.hashCode(this.f71803h)) * 31) + (this.f71806k ? 1 : 0);
        }

        private a(long j10, int i10, int i11, int[] iArr, q[] qVarArr, long[] jArr, long j11, boolean z10, String[] strArr, boolean z11) {
            int i12 = 0;
            cn.a.a(iArr.length == qVarArr.length);
            this.f71796a = j10;
            this.f71797b = i10;
            this.f71798c = i11;
            this.f71801f = iArr;
            this.f71800e = qVarArr;
            this.f71802g = jArr;
            this.f71804i = j11;
            this.f71805j = z10;
            this.f71799d = new Uri[qVarArr.length];
            while (true) {
                Uri[] uriArr = this.f71799d;
                if (i12 < uriArr.length) {
                    q qVar = qVarArr[i12];
                    uriArr[i12] = qVar == null ? null : ((q.h) cn.a.e(qVar.f71992b)).f72084a;
                    i12++;
                } else {
                    this.f71803h = strArr;
                    this.f71806k = z11;
                    return;
                }
            }
        }
    }

    private b(@Nullable Object obj, a[] aVarArr, long j10, long j11, int i10) {
        this.f71779a = obj;
        this.f71781c = j10;
        this.f71782d = j11;
        this.f71780b = aVarArr.length + i10;
        this.f71784f = aVarArr;
        this.f71783e = i10;
    }

    private boolean e(long j10, long j11, int i10) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        a a10 = a(i10);
        long j12 = a10.f71796a;
        if (j12 == Long.MIN_VALUE) {
            if (j11 != -9223372036854775807L && !a10.f() && j10 >= j11) {
                return false;
            }
            return true;
        } else if (j10 >= j12) {
            return false;
        } else {
            return true;
        }
    }

    public a a(@IntRange(from = 0) int i10) {
        int i11 = this.f71783e;
        if (i10 < i11) {
            return f71774h;
        }
        return this.f71784f[i10 - i11];
    }

    public int b(long j10, long j11) {
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != -9223372036854775807L && j10 >= j11) {
            return -1;
        }
        int i10 = this.f71783e;
        while (i10 < this.f71780b && ((a(i10).f71796a != Long.MIN_VALUE && a(i10).f71796a <= j10) || !a(i10).g())) {
            i10++;
        }
        if (i10 >= this.f71780b) {
            return -1;
        }
        return i10;
    }

    public int c(long j10, long j11) {
        int i10 = this.f71780b - 1;
        int i11 = i10 - (d(i10) ? 1 : 0);
        while (i11 >= 0 && e(j10, j11, i11)) {
            i11--;
        }
        if (i11 < 0 || !a(i11).e()) {
            return -1;
        }
        return i11;
    }

    public boolean d(int i10) {
        if (i10 == this.f71780b - 1 && a(i10).f()) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (Objects.equals(this.f71779a, bVar.f71779a) && this.f71780b == bVar.f71780b && this.f71781c == bVar.f71781c && this.f71782d == bVar.f71782d && this.f71783e == bVar.f71783e && Arrays.equals(this.f71784f, bVar.f71784f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i10 = this.f71780b * 31;
        Object obj = this.f71779a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return ((((((((i10 + hashCode) * 31) + ((int) this.f71781c)) * 31) + ((int) this.f71782d)) * 31) + this.f71783e) * 31) + Arrays.hashCode(this.f71784f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f71779a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f71781c);
        sb2.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f71784f.length; i10++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f71784f[i10].f71796a);
            sb2.append(", ads=[");
            for (int i11 = 0; i11 < this.f71784f[i10].f71801f.length; i11++) {
                sb2.append("ad(state=");
                int i12 = this.f71784f[i10].f71801f[i11];
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 != 4) {
                                    sb2.append('?');
                                } else {
                                    sb2.append('!');
                                }
                            } else {
                                sb2.append('P');
                            }
                        } else {
                            sb2.append('S');
                        }
                    } else {
                        sb2.append('R');
                    }
                } else {
                    sb2.append('_');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f71784f[i10].f71802g[i11]);
                sb2.append(')');
                if (i11 < this.f71784f[i10].f71801f.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < this.f71784f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
