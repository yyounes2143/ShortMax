package j7;

import com.applovin.shadow.okhttp3.internal.connection.RealConnection;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.ss.ttm.player.MediaPlayer;
import h7.k;
import java.math.RoundingMode;
/* compiled from: LongMath.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f60228a = {19, 18, 18, 18, 18, 17, 17, 17, 16, 16, 16, 15, 15, 15, 15, 14, 14, 14, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    static final long[] f60229b = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    /* renamed from: c  reason: collision with root package name */
    static final long[] f60230c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};

    /* renamed from: d  reason: collision with root package name */
    static final long[] f60231d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};

    /* renamed from: e  reason: collision with root package name */
    static final int[] f60232e = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, MediaPlayer.MEDIA_PLAYER_OPTION_SYNC_GROUP_STAT_INFO, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_PLUGIN_PACKAGE_NAME, 534, 361, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 206, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    /* renamed from: f  reason: collision with root package name */
    static final int[] f60233f = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, MediaPlayer.MEDIA_PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK, 684, 419, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};

    /* renamed from: g  reason: collision with root package name */
    private static final long[][] f60234g = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LongMath.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f60235a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f60235a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f60235a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f60235a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f60235a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f60235a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f60235a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f60235a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f60235a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static long a(long j10, long j11) {
        boolean z10;
        long j12 = j10 + j11;
        boolean z11 = false;
        if ((j10 ^ j11) < 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((j10 ^ j12) >= 0) {
            z11 = true;
        }
        f.c(z10 | z11, "checkedAdd", j10, j11);
        return j12;
    }

    public static long b(long j10, long j11, RoundingMode roundingMode) {
        k.j(roundingMode);
        long j12 = j10 / j11;
        long j13 = j10 - (j11 * j12);
        int i10 = (j13 > 0L ? 1 : (j13 == 0L ? 0 : -1));
        if (i10 == 0) {
            return j12;
        }
        boolean z10 = true;
        int i11 = ((int) ((j10 ^ j11) >> 63)) | 1;
        switch (a.f60235a[roundingMode.ordinal()]) {
            case 1:
                if (i10 != 0) {
                    z10 = false;
                }
                f.f(z10);
                return j12;
            case 2:
                return j12;
            case 3:
                if (i11 >= 0) {
                    return j12;
                }
                break;
            case 4:
                break;
            case 5:
                if (i11 <= 0) {
                    return j12;
                }
                break;
            case 6:
            case 7:
            case 8:
                long abs = Math.abs(j13);
                int i12 = ((abs - (Math.abs(j11) - abs)) > 0L ? 1 : ((abs - (Math.abs(j11) - abs)) == 0L ? 0 : -1));
                if (i12 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j12) == 0)) {
                        return j12;
                    }
                } else if (i12 <= 0) {
                    return j12;
                }
                break;
            default:
                throw new AssertionError();
        }
        return j12 + i11;
    }

    public static long c(long j10, long j11) {
        f.e("a", j10);
        f.e(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, j11);
        if (j10 == 0) {
            return j11;
        }
        if (j11 == 0) {
            return j10;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j10);
        long j12 = j10 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j11);
        long j13 = j11 >> numberOfTrailingZeros2;
        while (j12 != j13) {
            long j14 = j12 - j13;
            long j15 = (j14 >> 63) & j14;
            long j16 = (j14 - j15) - j15;
            j13 += j15;
            j12 = j16 >> Long.numberOfTrailingZeros(j16);
        }
        return j12 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long d(long j10, long j11) {
        boolean z10;
        boolean z11;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(j10) + Long.numberOfLeadingZeros(~j10) + Long.numberOfLeadingZeros(j11) + Long.numberOfLeadingZeros(~j11);
        if (numberOfLeadingZeros > 65) {
            return j10 * j11;
        }
        long j12 = ((j10 ^ j11) >>> 63) + Long.MAX_VALUE;
        boolean z12 = false;
        if (numberOfLeadingZeros < 64) {
            z10 = true;
        } else {
            z10 = false;
        }
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 < 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (j11 == Long.MIN_VALUE) {
            z12 = true;
        }
        if (z10 | (z12 & z11)) {
            return j12;
        }
        long j13 = j10 * j11;
        if (i10 != 0 && j13 / j10 != j11) {
            return j12;
        }
        return j13;
    }
}
