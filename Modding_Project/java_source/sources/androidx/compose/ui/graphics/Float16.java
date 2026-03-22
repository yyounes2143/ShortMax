package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
/* compiled from: Float16.kt */
@Metadata
/* loaded from: classes.dex */
public final class Float16 implements Comparable<Float16> {
    private static final int FP16_COMBINED = 32767;
    private static final int FP16_EXPONENT_BIAS = 15;
    private static final int FP16_EXPONENT_MASK = 31;
    private static final int FP16_EXPONENT_MAX = 31744;
    private static final int FP16_EXPONENT_SHIFT = 10;
    private static final int FP16_SIGNIFICAND_MASK = 1023;
    private static final int FP16_SIGN_MASK = 32768;
    private static final int FP16_SIGN_SHIFT = 15;
    private static final float FP32_DENORMAL_FLOAT;
    private static final int FP32_DENORMAL_MAGIC = 1056964608;
    private static final int FP32_EXPONENT_BIAS = 127;
    private static final int FP32_EXPONENT_MASK = 255;
    private static final int FP32_EXPONENT_SHIFT = 23;
    private static final int FP32_QNAN_MASK = 4194304;
    private static final int FP32_SIGNIFICAND_MASK = 8388607;
    private static final int FP32_SIGN_SHIFT = 31;
    public static final int MaxExponent = 15;
    public static final int MinExponent = -14;
    public static final int Size = 16;
    private final short halfValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final short Epsilon = m1937constructorimpl((short) 5120);
    private static final short LowestValue = m1937constructorimpl((short) -1025);
    private static final short MaxValue = m1937constructorimpl((short) 31743);
    private static final short MinNormal = m1937constructorimpl((short) 1024);
    private static final short MinValue = m1937constructorimpl((short) 1);
    private static final short NaN = m1937constructorimpl((short) 32256);
    private static final short NegativeInfinity = m1937constructorimpl((short) -1024);
    private static final short NegativeZero = m1937constructorimpl((short) ShortCompanionObject.MIN_VALUE);
    private static final short PositiveInfinity = m1937constructorimpl((short) 31744);
    private static final short PositiveZero = m1937constructorimpl((short) 0);
    private static final short One = m1936constructorimpl(1.0f);
    private static final short NegativeOne = m1936constructorimpl(-1.0f);

    /* compiled from: Float16.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final short floatToHalf(float f10) {
            int i10;
            int floatToRawIntBits = Float.floatToRawIntBits(f10);
            int i11 = floatToRawIntBits >>> 31;
            int i12 = (floatToRawIntBits >>> 23) & 255;
            int i13 = Float16.FP32_SIGNIFICAND_MASK & floatToRawIntBits;
            int i14 = 31;
            int i15 = 0;
            if (i12 == 255) {
                if (i13 != 0) {
                    i15 = 512;
                }
            } else {
                int i16 = i12 - 112;
                if (i16 >= 31) {
                    i14 = 49;
                } else if (i16 <= 0) {
                    if (i16 >= -10) {
                        int i17 = (8388608 | i13) >> (1 - i16);
                        if ((i17 & 4096) != 0) {
                            i17 += 8192;
                        }
                        i14 = 0;
                        i15 = i17 >> 13;
                    } else {
                        i14 = 0;
                    }
                } else {
                    i15 = i13 >> 13;
                    if ((floatToRawIntBits & 4096) != 0) {
                        i10 = (((i16 << 10) | i15) + 1) | (i11 << 15);
                        return (short) i10;
                    }
                    i14 = i16;
                }
            }
            i10 = (i11 << 15) | (i14 << 10) | i15;
            return (short) i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int toCompareValue(short s10) {
            if ((s10 & ShortCompanionObject.MIN_VALUE) != 0) {
                return 32768 - (s10 & 65535);
            }
            return s10 & 65535;
        }

        /* renamed from: getEpsilon-slo4al4  reason: not valid java name */
        public final short m1964getEpsilonslo4al4() {
            return Float16.Epsilon;
        }

        /* renamed from: getLowestValue-slo4al4  reason: not valid java name */
        public final short m1965getLowestValueslo4al4() {
            return Float16.LowestValue;
        }

        /* renamed from: getMaxValue-slo4al4  reason: not valid java name */
        public final short m1966getMaxValueslo4al4() {
            return Float16.MaxValue;
        }

        /* renamed from: getMinNormal-slo4al4  reason: not valid java name */
        public final short m1967getMinNormalslo4al4() {
            return Float16.MinNormal;
        }

        /* renamed from: getMinValue-slo4al4  reason: not valid java name */
        public final short m1968getMinValueslo4al4() {
            return Float16.MinValue;
        }

        /* renamed from: getNaN-slo4al4  reason: not valid java name */
        public final short m1969getNaNslo4al4() {
            return Float16.NaN;
        }

        /* renamed from: getNegativeInfinity-slo4al4  reason: not valid java name */
        public final short m1970getNegativeInfinityslo4al4() {
            return Float16.NegativeInfinity;
        }

        /* renamed from: getNegativeZero-slo4al4  reason: not valid java name */
        public final short m1971getNegativeZeroslo4al4() {
            return Float16.NegativeZero;
        }

        /* renamed from: getPositiveInfinity-slo4al4  reason: not valid java name */
        public final short m1972getPositiveInfinityslo4al4() {
            return Float16.PositiveInfinity;
        }

        /* renamed from: getPositiveZero-slo4al4  reason: not valid java name */
        public final short m1973getPositiveZeroslo4al4() {
            return Float16.PositiveZero;
        }

        private Companion() {
        }
    }

    static {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        FP32_DENORMAL_FLOAT = Float.intBitsToFloat(FP32_DENORMAL_MAGIC);
    }

    private /* synthetic */ Float16(short s10) {
        this.halfValue = s10;
    }

    /* renamed from: absoluteValue-slo4al4  reason: not valid java name */
    public static final short m1931absoluteValueslo4al4(short s10) {
        return m1937constructorimpl((short) (s10 & ShortCompanionObject.MAX_VALUE));
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Float16 m1932boximpl(short s10) {
        return new Float16(s10);
    }

    /* renamed from: ceil-slo4al4  reason: not valid java name */
    public static final short m1933ceilslo4al4(short s10) {
        int i10 = 65535 & s10;
        int i11 = s10 & ShortCompanionObject.MAX_VALUE;
        int i12 = 1;
        if (i11 < 15360) {
            int i13 = s10 & ShortCompanionObject.MIN_VALUE;
            int i14 = ~(i10 >> 15);
            if (i11 == 0) {
                i12 = 0;
            }
            i10 = ((-(i14 & i12)) & 15360) | i13;
        } else if (i11 < 25600) {
            int i15 = (1 << (25 - (i11 >> 10))) - 1;
            i10 = (i10 + (((i10 >> 15) - 1) & i15)) & (~i15);
        }
        return m1937constructorimpl((short) i10);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static short m1937constructorimpl(short s10) {
        return s10;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1938equalsimpl(short s10, Object obj) {
        if (!(obj instanceof Float16) || s10 != ((Float16) obj).m1963unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1939equalsimpl0(short s10, short s11) {
        if (s10 == s11) {
            return true;
        }
        return false;
    }

    /* renamed from: floor-slo4al4  reason: not valid java name */
    public static final short m1940floorslo4al4(short s10) {
        int i10 = 65535;
        int i11 = s10 & 65535;
        int i12 = s10 & ShortCompanionObject.MAX_VALUE;
        if (i12 < 15360) {
            int i13 = s10 & ShortCompanionObject.MIN_VALUE;
            if (i11 <= 32768) {
                i10 = 0;
            }
            i11 = i13 | (i10 & 15360);
        } else if (i12 < 25600) {
            int i14 = (1 << (25 - (i12 >> 10))) - 1;
            i11 = (i11 + ((-(i11 >> 15)) & i14)) & (~i14);
        }
        return m1937constructorimpl((short) i11);
    }

    /* renamed from: getExponent-impl  reason: not valid java name */
    public static final int m1941getExponentimpl(short s10) {
        return ((s10 >>> 10) & 31) - 15;
    }

    /* renamed from: getSign-slo4al4  reason: not valid java name */
    public static final short m1942getSignslo4al4(short s10) {
        if (m1947isNaNimpl(s10)) {
            return NaN;
        }
        if (m1934compareTo41bOqos(s10, NegativeZero) < 0) {
            return NegativeOne;
        }
        if (m1934compareTo41bOqos(s10, PositiveZero) > 0) {
            return One;
        }
        return s10;
    }

    /* renamed from: getSignificand-impl  reason: not valid java name */
    public static final int m1943getSignificandimpl(short s10) {
        return s10 & 1023;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1944hashCodeimpl(short s10) {
        return Short.hashCode(s10);
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m1945isFiniteimpl(short s10) {
        if ((s10 & ShortCompanionObject.MAX_VALUE) != FP16_EXPONENT_MAX) {
            return true;
        }
        return false;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m1946isInfiniteimpl(short s10) {
        if ((s10 & ShortCompanionObject.MAX_VALUE) == FP16_EXPONENT_MAX) {
            return true;
        }
        return false;
    }

    /* renamed from: isNaN-impl  reason: not valid java name */
    public static final boolean m1947isNaNimpl(short s10) {
        if ((s10 & ShortCompanionObject.MAX_VALUE) > FP16_EXPONENT_MAX) {
            return true;
        }
        return false;
    }

    /* renamed from: isNormalized-impl  reason: not valid java name */
    public static final boolean m1948isNormalizedimpl(short s10) {
        int i10 = s10 & FP16_EXPONENT_MAX;
        if (i10 != 0 && i10 != FP16_EXPONENT_MAX) {
            return true;
        }
        return false;
    }

    /* renamed from: round-slo4al4  reason: not valid java name */
    public static final short m1949roundslo4al4(short s10) {
        int i10 = 65535;
        int i11 = s10 & 65535;
        int i12 = s10 & ShortCompanionObject.MAX_VALUE;
        if (i12 < 15360) {
            int i13 = s10 & ShortCompanionObject.MIN_VALUE;
            if (i12 < 14336) {
                i10 = 0;
            }
            i11 = i13 | (i10 & 15360);
        } else if (i12 < 25600) {
            int i14 = i12 >> 10;
            i11 = (i11 + (1 << (24 - i14))) & (~((1 << (25 - i14)) - 1));
        }
        return m1937constructorimpl((short) i11);
    }

    /* renamed from: toBits-impl  reason: not valid java name */
    public static final int m1950toBitsimpl(short s10) {
        if (m1947isNaNimpl(s10)) {
            return NaN;
        }
        return s10 & 65535;
    }

    /* renamed from: toByte-impl  reason: not valid java name */
    public static final byte m1951toByteimpl(short s10) {
        return (byte) m1953toFloatimpl(s10);
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    public static final double m1952toDoubleimpl(short s10) {
        return m1953toFloatimpl(s10);
    }

    /* renamed from: toFloat-impl  reason: not valid java name */
    public static final float m1953toFloatimpl(short s10) {
        int i10;
        int i11;
        int i12;
        int i13 = 32768 & s10;
        int i14 = ((65535 & s10) >>> 10) & 31;
        int i15 = s10 & 1023;
        if (i14 == 0) {
            if (i15 != 0) {
                FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
                float intBitsToFloat = Float.intBitsToFloat(i15 + FP32_DENORMAL_MAGIC) - FP32_DENORMAL_FLOAT;
                if (i13 != 0) {
                    return -intBitsToFloat;
                }
                return intBitsToFloat;
            }
            i12 = 0;
            i11 = 0;
        } else {
            int i16 = i15 << 13;
            if (i14 == 31) {
                i10 = 255;
                if (i16 != 0) {
                    i16 |= 4194304;
                }
            } else {
                i10 = i14 + 112;
            }
            int i17 = i10;
            i11 = i16;
            i12 = i17;
        }
        int i18 = (i12 << 23) | (i13 << 16) | i11;
        FloatCompanionObject floatCompanionObject2 = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat(i18);
    }

    @NotNull
    /* renamed from: toHexString-impl  reason: not valid java name */
    public static final String m1954toHexStringimpl(short s10) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 65535 & s10;
        int i11 = i10 >>> 15;
        int i12 = (i10 >>> 10) & 31;
        int i13 = s10 & 1023;
        if (i12 == 31) {
            if (i13 == 0) {
                if (i11 != 0) {
                    sb2.append('-');
                }
                sb2.append("Infinity");
            } else {
                sb2.append("NaN");
            }
        } else {
            if (i11 == 1) {
                sb2.append('-');
            }
            if (i12 == 0) {
                if (i13 == 0) {
                    sb2.append("0x0.0p0");
                } else {
                    sb2.append("0x0.");
                    String num = Integer.toString(i13, CharsKt.checkRadix(16));
                    Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
                    sb2.append(new Regex("0{2,}$").n(num, ""));
                    sb2.append("p-14");
                }
            } else {
                sb2.append("0x1.");
                String num2 = Integer.toString(i13, CharsKt.checkRadix(16));
                Intrinsics.checkNotNullExpressionValue(num2, "toString(this, checkRadix(radix))");
                sb2.append(new Regex("0{2,}$").n(num2, ""));
                sb2.append('p');
                sb2.append(String.valueOf(i12 - 15));
            }
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "o.toString()");
        return sb3;
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    public static final int m1955toIntimpl(short s10) {
        return (int) m1953toFloatimpl(s10);
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m1956toLongimpl(short s10) {
        return m1953toFloatimpl(s10);
    }

    /* renamed from: toRawBits-impl  reason: not valid java name */
    public static final int m1957toRawBitsimpl(short s10) {
        return s10 & 65535;
    }

    /* renamed from: toShort-impl  reason: not valid java name */
    public static final short m1958toShortimpl(short s10) {
        return (short) m1953toFloatimpl(s10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1959toStringimpl(short s10) {
        return String.valueOf(m1953toFloatimpl(s10));
    }

    /* renamed from: trunc-slo4al4  reason: not valid java name */
    public static final short m1960truncslo4al4(short s10) {
        int i10 = 65535 & s10;
        int i11 = s10 & ShortCompanionObject.MAX_VALUE;
        if (i11 < 15360) {
            i10 = 32768 & s10;
        } else if (i11 < 25600) {
            i10 &= ~((1 << (25 - (i11 >> 10))) - 1);
        }
        return m1937constructorimpl((short) i10);
    }

    /* renamed from: withSign-qCeQghg  reason: not valid java name */
    public static final short m1961withSignqCeQghg(short s10, short s11) {
        return m1937constructorimpl((short) ((s10 & ShortCompanionObject.MAX_VALUE) | (s11 & ShortCompanionObject.MIN_VALUE)));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Float16 float16) {
        return m1962compareTo41bOqos(float16.m1963unboximpl());
    }

    /* renamed from: compareTo-41bOqos  reason: not valid java name */
    public int m1962compareTo41bOqos(short s10) {
        return m1934compareTo41bOqos(this.halfValue, s10);
    }

    public boolean equals(Object obj) {
        return m1938equalsimpl(this.halfValue, obj);
    }

    public final short getHalfValue() {
        return this.halfValue;
    }

    public int hashCode() {
        return m1944hashCodeimpl(this.halfValue);
    }

    @NotNull
    public String toString() {
        return m1959toStringimpl(this.halfValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ short m1963unboximpl() {
        return this.halfValue;
    }

    /* renamed from: compareTo-41bOqos  reason: not valid java name */
    public static int m1934compareTo41bOqos(short s10, short s11) {
        if (m1947isNaNimpl(s10)) {
            return !m1947isNaNimpl(s11) ? 1 : 0;
        }
        if (m1947isNaNimpl(s11)) {
            return -1;
        }
        Companion companion = Companion;
        return Intrinsics.compare(companion.toCompareValue(s10), companion.toCompareValue(s11));
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static short m1936constructorimpl(float f10) {
        return m1937constructorimpl(Companion.floatToHalf(f10));
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static short m1935constructorimpl(double d10) {
        return m1936constructorimpl((float) d10);
    }
}
