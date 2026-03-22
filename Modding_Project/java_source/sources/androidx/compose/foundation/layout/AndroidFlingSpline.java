package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
/* loaded from: classes.dex */
final class AndroidFlingSpline {
    private static final int NbSamples = 100;
    @NotNull
    public static final AndroidFlingSpline INSTANCE = new AndroidFlingSpline();
    @NotNull
    private static final float[] SplinePositions = new float[101];
    @NotNull
    private static final float[] SplineTimes = new float[101];

    static {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18 = 0.0f;
        float f19 = 0.0f;
        for (int i10 = 0; i10 < 100; i10++) {
            float f20 = i10 / 100;
            float f21 = 1.0f;
            while (true) {
                f10 = ((f21 - f18) / 2.0f) + f18;
                f11 = 1.0f - f10;
                f12 = f10 * 3.0f * f11;
                f13 = f10 * f10 * f10;
                float f22 = (((f11 * 0.175f) + (f10 * 0.35000002f)) * f12) + f13;
                if (Math.abs(f22 - f20) < 1.0E-5d) {
                    break;
                } else if (f22 > f20) {
                    f21 = f10;
                } else {
                    f18 = f10;
                }
            }
            float f23 = 0.5f;
            SplinePositions[i10] = (f12 * ((f11 * 0.5f) + f10)) + f13;
            float f24 = 1.0f;
            while (true) {
                f14 = ((f24 - f19) / 2.0f) + f19;
                f15 = 1.0f - f14;
                f16 = f14 * 3.0f * f15;
                f17 = f14 * f14 * f14;
                float f25 = (((f15 * f23) + f14) * f16) + f17;
                if (Math.abs(f25 - f20) >= 1.0E-5d) {
                    if (f25 > f20) {
                        f24 = f14;
                    } else {
                        f19 = f14;
                    }
                    f23 = 0.5f;
                }
            }
            SplineTimes[i10] = (f16 * ((f15 * 0.175f) + (f14 * 0.35000002f))) + f17;
        }
        SplineTimes[100] = 1.0f;
        SplinePositions[100] = 1.0f;
    }

    private AndroidFlingSpline() {
    }

    public final double deceleration(float f10, float f11) {
        return Math.log((Math.abs(f10) * 0.35f) / f11);
    }

    /* renamed from: flingPosition-LfoxSSI  reason: not valid java name */
    public final long m382flingPositionLfoxSSI(float f10) {
        float f11;
        float f12;
        float f13 = 100;
        int i10 = (int) (f13 * f10);
        if (i10 < 100) {
            float f14 = i10 / f13;
            int i11 = i10 + 1;
            float f15 = i11 / f13;
            float[] fArr = SplinePositions;
            float f16 = fArr[i10];
            f12 = (fArr[i11] - f16) / (f15 - f14);
            f11 = f16 + ((f10 - f14) * f12);
        } else {
            f11 = 1.0f;
            f12 = 0.0f;
        }
        return FlingResult.m384constructorimpl((Float.floatToIntBits(f12) & 4294967295L) | (Float.floatToIntBits(f11) << 32));
    }

    /* compiled from: WindowInsetsConnection.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class FlingResult {
        private final long packedValue;

        private /* synthetic */ FlingResult(long j10) {
            this.packedValue = j10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ FlingResult m383boximpl(long j10) {
            return new FlingResult(j10);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m385equalsimpl(long j10, Object obj) {
            if (!(obj instanceof FlingResult) || j10 != ((FlingResult) obj).m391unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m386equalsimpl0(long j10, long j11) {
            if (j10 == j11) {
                return true;
            }
            return false;
        }

        /* renamed from: getDistanceCoefficient-impl  reason: not valid java name */
        public static final float m387getDistanceCoefficientimpl(long j10) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 >> 32));
        }

        /* renamed from: getVelocityCoefficient-impl  reason: not valid java name */
        public static final float m388getVelocityCoefficientimpl(long j10) {
            FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
            return Float.intBitsToFloat((int) (j10 & 4294967295L));
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m389hashCodeimpl(long j10) {
            return Long.hashCode(j10);
        }

        /* renamed from: toString-impl  reason: not valid java name */
        public static String m390toStringimpl(long j10) {
            return "FlingResult(packedValue=" + j10 + ')';
        }

        public boolean equals(Object obj) {
            return m385equalsimpl(this.packedValue, obj);
        }

        public int hashCode() {
            return m389hashCodeimpl(this.packedValue);
        }

        public String toString() {
            return m390toStringimpl(this.packedValue);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ long m391unboximpl() {
            return this.packedValue;
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        public static long m384constructorimpl(long j10) {
            return j10;
        }
    }
}
