package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextUnit.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextUnitKt {
    private static final long UNIT_MASK = 1095216660480L;
    private static final long UNIT_TYPE_EM = 8589934592L;
    private static final long UNIT_TYPE_SP = 4294967296L;
    private static final long UNIT_TYPE_UNSPECIFIED = 0;

    @ExperimentalUnitApi
    /* renamed from: TextUnit-anM5pPY  reason: not valid java name */
    public static final long m4242TextUnitanM5pPY(float f10, long j10) {
        return pack(j10, f10);
    }

    /* renamed from: checkArithmetic--R2X_6o  reason: not valid java name */
    public static final void m4243checkArithmeticR2X_6o(long j10) {
        if (!m4248isUnspecifiedR2X_6o(j10)) {
            return;
        }
        throw new IllegalArgumentException("Cannot perform operation for Unspecified type.");
    }

    /* renamed from: checkArithmetic-NB67dxo  reason: not valid java name */
    public static final void m4244checkArithmeticNB67dxo(long j10, long j11) {
        if (!m4248isUnspecifiedR2X_6o(j10) && !m4248isUnspecifiedR2X_6o(j11)) {
            if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), TextUnit.m4229getTypeUIouoOA(j11))) {
                return;
            }
            throw new IllegalArgumentException(("Cannot perform operation for " + ((Object) TextUnitType.m4260toStringimpl(TextUnit.m4229getTypeUIouoOA(j10))) + " and " + ((Object) TextUnitType.m4260toStringimpl(TextUnit.m4229getTypeUIouoOA(j11)))).toString());
        }
        throw new IllegalArgumentException("Cannot perform operation for Unspecified type.");
    }

    /* renamed from: checkArithmetic-vU-0ePk  reason: not valid java name */
    public static final void m4245checkArithmeticvU0ePk(long j10, long j11, long j12) {
        if (!m4248isUnspecifiedR2X_6o(j10) && !m4248isUnspecifiedR2X_6o(j11) && !m4248isUnspecifiedR2X_6o(j12)) {
            if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j10), TextUnit.m4229getTypeUIouoOA(j11)) && TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(j11), TextUnit.m4229getTypeUIouoOA(j12))) {
                return;
            }
            throw new IllegalArgumentException(("Cannot perform operation for " + ((Object) TextUnitType.m4260toStringimpl(TextUnit.m4229getTypeUIouoOA(j10))) + " and " + ((Object) TextUnitType.m4260toStringimpl(TextUnit.m4229getTypeUIouoOA(j11)))).toString());
        }
        throw new IllegalArgumentException("Cannot perform operation for Unspecified type.");
    }

    public static final long getEm(float f10) {
        return pack(UNIT_TYPE_EM, f10);
    }

    @Stable
    public static /* synthetic */ void getEm$annotations(double d10) {
    }

    public static final long getSp(float f10) {
        return pack(UNIT_TYPE_SP, f10);
    }

    @Stable
    public static /* synthetic */ void getSp$annotations(double d10) {
    }

    /* renamed from: isSpecified--R2X_6o  reason: not valid java name */
    public static final boolean m4246isSpecifiedR2X_6o(long j10) {
        return !m4248isUnspecifiedR2X_6o(j10);
    }

    /* renamed from: isUnspecified--R2X_6o  reason: not valid java name */
    public static final boolean m4248isUnspecifiedR2X_6o(long j10) {
        if (TextUnit.m4228getRawTypeimpl(j10) == 0) {
            return true;
        }
        return false;
    }

    @Stable
    /* renamed from: lerp-C3pnCVY  reason: not valid java name */
    public static final long m4250lerpC3pnCVY(long j10, long j11, float f10) {
        m4244checkArithmeticNB67dxo(j10, j11);
        return pack(TextUnit.m4228getRawTypeimpl(j10), MathHelpersKt.lerp(TextUnit.m4230getValueimpl(j10), TextUnit.m4230getValueimpl(j11), f10));
    }

    public static final long pack(long j10, float f10) {
        return TextUnit.m4222constructorimpl(j10 | (Float.floatToIntBits(f10) & 4294967295L));
    }

    /* renamed from: takeOrElse-eAf_CNQ  reason: not valid java name */
    public static final long m4251takeOrElseeAf_CNQ(long j10, @NotNull Function0<TextUnit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (m4248isUnspecifiedR2X_6o(j10)) {
            return block.invoke().m4239unboximpl();
        }
        return j10;
    }

    @Stable
    /* renamed from: times-mpE4wyQ  reason: not valid java name */
    public static final long m4253timesmpE4wyQ(float f10, long j10) {
        m4243checkArithmeticR2X_6o(j10);
        return pack(TextUnit.m4228getRawTypeimpl(j10), f10 * TextUnit.m4230getValueimpl(j10));
    }

    public static final long getEm(double d10) {
        return pack(UNIT_TYPE_EM, (float) d10);
    }

    @Stable
    public static /* synthetic */ void getEm$annotations(float f10) {
    }

    public static final long getSp(double d10) {
        return pack(UNIT_TYPE_SP, (float) d10);
    }

    @Stable
    public static /* synthetic */ void getSp$annotations(float f10) {
    }

    public static final long getEm(int i10) {
        return pack(UNIT_TYPE_EM, i10);
    }

    @Stable
    public static /* synthetic */ void getEm$annotations(int i10) {
    }

    public static final long getSp(int i10) {
        return pack(UNIT_TYPE_SP, i10);
    }

    @Stable
    public static /* synthetic */ void getSp$annotations(int i10) {
    }

    @Stable
    /* renamed from: times-mpE4wyQ  reason: not valid java name */
    public static final long m4252timesmpE4wyQ(double d10, long j10) {
        m4243checkArithmeticR2X_6o(j10);
        return pack(TextUnit.m4228getRawTypeimpl(j10), ((float) d10) * TextUnit.m4230getValueimpl(j10));
    }

    @Stable
    /* renamed from: times-mpE4wyQ  reason: not valid java name */
    public static final long m4254timesmpE4wyQ(int i10, long j10) {
        m4243checkArithmeticR2X_6o(j10);
        return pack(TextUnit.m4228getRawTypeimpl(j10), i10 * TextUnit.m4230getValueimpl(j10));
    }

    @Stable
    /* renamed from: isSpecified--R2X_6o$annotations  reason: not valid java name */
    public static /* synthetic */ void m4247isSpecifiedR2X_6o$annotations(long j10) {
    }

    @Stable
    /* renamed from: isUnspecified--R2X_6o$annotations  reason: not valid java name */
    public static /* synthetic */ void m4249isUnspecifiedR2X_6o$annotations(long j10) {
    }
}
