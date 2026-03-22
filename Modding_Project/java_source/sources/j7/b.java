package j7;

import h7.k;
import java.math.RoundingMode;
/* compiled from: DoubleMath.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final double f60219a = Math.log(2.0d);

    /* renamed from: b  reason: collision with root package name */
    static final double[] f60220b = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DoubleMath.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f60221a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f60221a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f60221a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f60221a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f60221a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f60221a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f60221a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f60221a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f60221a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static boolean a(double d10, double d11, double d12) {
        f.d("tolerance", d12);
        if (Math.copySign(d10 - d11, 1.0d) > d12 && d10 != d11 && (!Double.isNaN(d10) || !Double.isNaN(d11))) {
            return false;
        }
        return true;
    }

    public static boolean b(double d10) {
        if (c.b(d10) && (d10 == 0.0d || 52 - Long.numberOfTrailingZeros(c.a(d10)) <= Math.getExponent(d10))) {
            return true;
        }
        return false;
    }

    public static boolean c(double d10) {
        if (d10 <= 0.0d || !c.b(d10)) {
            return false;
        }
        long a10 = c.a(d10);
        if ((a10 & (a10 - 1)) != 0) {
            return false;
        }
        return true;
    }

    public static int d(double d10, RoundingMode roundingMode) {
        boolean z10;
        boolean c10;
        boolean z11 = false;
        if (d10 > 0.0d && c.b(d10)) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.e(z10, "x must be positive and finite");
        int exponent = Math.getExponent(d10);
        if (!c.c(d10)) {
            return d(d10 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (a.f60221a[roundingMode.ordinal()]) {
            case 1:
                f.f(c(d10));
                break;
            case 2:
                break;
            case 3:
                z11 = !c(d10);
                break;
            case 4:
                if (exponent < 0) {
                    z11 = true;
                }
                c10 = c(d10);
                z11 &= !c10;
                break;
            case 5:
                if (exponent >= 0) {
                    z11 = true;
                }
                c10 = c(d10);
                z11 &= !c10;
                break;
            case 6:
            case 7:
            case 8:
                double d11 = c.d(d10);
                if (d11 * d11 > 2.0d) {
                    z11 = true;
                    break;
                }
                break;
            default:
                throw new AssertionError();
        }
        if (z11) {
            return exponent + 1;
        }
        return exponent;
    }

    static double e(double d10, RoundingMode roundingMode) {
        int i10;
        if (c.b(d10)) {
            switch (a.f60221a[roundingMode.ordinal()]) {
                case 1:
                    f.f(b(d10));
                    return d10;
                case 2:
                    if (d10 < 0.0d && !b(d10)) {
                        return ((long) d10) - 1;
                    }
                    return d10;
                case 3:
                    if (d10 > 0.0d && !b(d10)) {
                        return ((long) d10) + 1;
                    }
                    return d10;
                case 4:
                    return d10;
                case 5:
                    if (b(d10)) {
                        return d10;
                    }
                    long j10 = (long) d10;
                    if (d10 > 0.0d) {
                        i10 = 1;
                    } else {
                        i10 = -1;
                    }
                    return j10 + i10;
                case 6:
                    return Math.rint(d10);
                case 7:
                    double rint = Math.rint(d10);
                    if (Math.abs(d10 - rint) == 0.5d) {
                        return d10 + Math.copySign(0.5d, d10);
                    }
                    return rint;
                case 8:
                    double rint2 = Math.rint(d10);
                    if (Math.abs(d10 - rint2) == 0.5d) {
                        return d10;
                    }
                    return rint2;
                default:
                    throw new AssertionError();
            }
        }
        throw new ArithmeticException("input is infinite or NaN");
    }

    public static long f(double d10, RoundingMode roundingMode) {
        boolean z10;
        double e10 = e(d10, roundingMode);
        boolean z11 = false;
        if ((-9.223372036854776E18d) - e10 < 1.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (e10 < 9.223372036854776E18d) {
            z11 = true;
        }
        f.a(z10 & z11, d10, roundingMode);
        return (long) e10;
    }
}
