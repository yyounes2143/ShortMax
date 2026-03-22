package j7;

import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import com.google.common.primitives.Ints;
import com.huawei.hms.framework.common.ExceptionCode;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import h7.k;
import java.math.RoundingMode;
/* compiled from: IntMath.java */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f60222a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    static final int[] f60223b = {1, 10, 100, 1000, 10000, 100000, TTVideoEngineInterface.PLAYER_TIME_BASE, ExceptionCode.CRASH_EXCEPTION, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

    /* renamed from: c  reason: collision with root package name */
    static final int[] f60224c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f60225d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    /* renamed from: e  reason: collision with root package name */
    static int[] f60226e = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* compiled from: IntMath.java */
    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f60227a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f60227a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f60227a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f60227a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f60227a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f60227a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f60227a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f60227a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f60227a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int a(int i10, int i11) {
        boolean z10;
        long j10 = i10 + i11;
        int i12 = (int) j10;
        if (j10 == i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        f.b(z10, "checkedAdd", i10, i11);
        return i12;
    }

    public static int b(int i10, int i11, RoundingMode roundingMode) {
        boolean z10;
        k.j(roundingMode);
        if (i11 != 0) {
            int i12 = i10 / i11;
            int i13 = i10 - (i11 * i12);
            if (i13 == 0) {
                return i12;
            }
            boolean z11 = true;
            int i14 = ((i10 ^ i11) >> 31) | 1;
            switch (a.f60227a[roundingMode.ordinal()]) {
                case 1:
                    if (i13 != 0) {
                        z11 = false;
                    }
                    f.f(z11);
                    return i12;
                case 2:
                    return i12;
                case 3:
                    if (i14 >= 0) {
                        return i12;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (i14 <= 0) {
                        return i12;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i13);
                    int abs2 = abs - (Math.abs(i11) - abs);
                    if (abs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if (roundingMode == RoundingMode.HALF_EVEN) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if ((i12 & 1) == 0) {
                                z11 = false;
                            }
                            if (!(z10 & z11)) {
                                return i12;
                            }
                        }
                    } else if (abs2 <= 0) {
                        return i12;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return i12 + i14;
        }
        throw new ArithmeticException("/ by zero");
    }

    public static int c(int i10, int i11) {
        return Ints.l(i10 * i11);
    }
}
