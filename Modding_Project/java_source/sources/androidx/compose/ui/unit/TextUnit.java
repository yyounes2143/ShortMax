package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.TextUnitType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextUnit.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextUnit {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final TextUnitType[] TextUnitTypes;
    private static final long Unspecified;
    private final long packedValue;

    /* compiled from: TextUnit.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextUnitType[] getTextUnitTypes$ui_unit_release() {
            return TextUnit.TextUnitTypes;
        }

        /* renamed from: getUnspecified-XSAIIZE  reason: not valid java name */
        public final long m4241getUnspecifiedXSAIIZE() {
            return TextUnit.Unspecified;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getUnspecified-XSAIIZE$annotations  reason: not valid java name */
        public static /* synthetic */ void m4240getUnspecifiedXSAIIZE$annotations() {
        }
    }

    static {
        TextUnitType.Companion companion = TextUnitType.Companion;
        TextUnitTypes = new TextUnitType[]{TextUnitType.m4255boximpl(companion.m4264getUnspecifiedUIouoOA()), TextUnitType.m4255boximpl(companion.m4263getSpUIouoOA()), TextUnitType.m4255boximpl(companion.m4262getEmUIouoOA())};
        Unspecified = TextUnitKt.pack(0L, Float.NaN);
    }

    private /* synthetic */ TextUnit(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextUnit m4220boximpl(long j10) {
        return new TextUnit(j10);
    }

    /* renamed from: compareTo--R2X_6o  reason: not valid java name */
    public static final int m4221compareToR2X_6o(long j10, long j11) {
        TextUnitKt.m4244checkArithmeticNB67dxo(j10, j11);
        return Float.compare(m4230getValueimpl(j10), m4230getValueimpl(j11));
    }

    /* renamed from: div-kPz2Gy4  reason: not valid java name */
    public static final long m4224divkPz2Gy4(long j10, float f10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), m4230getValueimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4226equalsimpl(long j10, Object obj) {
        if (!(obj instanceof TextUnit) || j10 != ((TextUnit) obj).m4239unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4227equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getRawType-impl  reason: not valid java name */
    public static final long m4228getRawTypeimpl(long j10) {
        return j10 & 1095216660480L;
    }

    /* renamed from: getType-UIouoOA  reason: not valid java name */
    public static final long m4229getTypeUIouoOA(long j10) {
        return TextUnitTypes[(int) (m4228getRawTypeimpl(j10) >>> 32)].m4261unboximpl();
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    public static final float m4230getValueimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4231hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: isEm-impl  reason: not valid java name */
    public static final boolean m4232isEmimpl(long j10) {
        if (m4228getRawTypeimpl(j10) == 8589934592L) {
            return true;
        }
        return false;
    }

    /* renamed from: isSp-impl  reason: not valid java name */
    public static final boolean m4233isSpimpl(long j10) {
        if (m4228getRawTypeimpl(j10) == 4294967296L) {
            return true;
        }
        return false;
    }

    /* renamed from: times-kPz2Gy4  reason: not valid java name */
    public static final long m4235timeskPz2Gy4(long j10, float f10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), m4230getValueimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4237toStringimpl(long j10) {
        long m4229getTypeUIouoOA = m4229getTypeUIouoOA(j10);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4264getUnspecifiedUIouoOA())) {
            return "Unspecified";
        }
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4263getSpUIouoOA())) {
            return m4230getValueimpl(j10) + ".sp";
        } else if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4262getEmUIouoOA())) {
            return m4230getValueimpl(j10) + ".em";
        } else {
            return "Invalid";
        }
    }

    /* renamed from: unaryMinus-XSAIIZE  reason: not valid java name */
    public static final long m4238unaryMinusXSAIIZE(long j10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), -m4230getValueimpl(j10));
    }

    public boolean equals(Object obj) {
        return m4226equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4231hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m4237toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4239unboximpl() {
        return this.packedValue;
    }

    /* renamed from: div-kPz2Gy4  reason: not valid java name */
    public static final long m4223divkPz2Gy4(long j10, double d10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), (float) (m4230getValueimpl(j10) / d10));
    }

    /* renamed from: times-kPz2Gy4  reason: not valid java name */
    public static final long m4234timeskPz2Gy4(long j10, double d10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), (float) (m4230getValueimpl(j10) * d10));
    }

    /* renamed from: div-kPz2Gy4  reason: not valid java name */
    public static final long m4225divkPz2Gy4(long j10, int i10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), m4230getValueimpl(j10) / i10);
    }

    /* renamed from: times-kPz2Gy4  reason: not valid java name */
    public static final long m4236timeskPz2Gy4(long j10, int i10) {
        TextUnitKt.m4243checkArithmeticR2X_6o(j10);
        return TextUnitKt.pack(m4228getRawTypeimpl(j10), m4230getValueimpl(j10) * i10);
    }

    public static /* synthetic */ void getRawType$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4222constructorimpl(long j10) {
        return j10;
    }
}
