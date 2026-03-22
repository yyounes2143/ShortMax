package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import bt.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntOffset.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class IntOffset {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = IntOffsetKt.IntOffset(0, 0);
    private final long packedValue;

    /* compiled from: IntOffset.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-nOcc-ac  reason: not valid java name */
        public final long m4177getZeronOccac() {
            return IntOffset.Zero;
        }

        private Companion() {
        }
    }

    private /* synthetic */ IntOffset(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ IntOffset m4158boximpl(long j10) {
        return new IntOffset(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final int m4159component1impl(long j10) {
        return m4167getXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final int m4160component2impl(long j10) {
        return m4168getYimpl(j10);
    }

    /* renamed from: copy-iSbpLlY  reason: not valid java name */
    public static final long m4162copyiSbpLlY(long j10, int i10, int i11) {
        return IntOffsetKt.IntOffset(i10, i11);
    }

    /* renamed from: copy-iSbpLlY$default  reason: not valid java name */
    public static /* synthetic */ long m4163copyiSbpLlY$default(long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = m4167getXimpl(j10);
        }
        if ((i12 & 2) != 0) {
            i11 = m4168getYimpl(j10);
        }
        return m4162copyiSbpLlY(j10, i10, i11);
    }

    @Stable
    /* renamed from: div-Bjo55l4  reason: not valid java name */
    public static final long m4164divBjo55l4(long j10, float f10) {
        return IntOffsetKt.IntOffset(a.c(m4167getXimpl(j10) / f10), a.c(m4168getYimpl(j10) / f10));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4165equalsimpl(long j10, Object obj) {
        if (!(obj instanceof IntOffset) || j10 != ((IntOffset) obj).m4176unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4166equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getX-impl  reason: not valid java name */
    public static final int m4167getXimpl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: getY-impl  reason: not valid java name */
    public static final int m4168getYimpl(long j10) {
        return (int) (j10 & 4294967295L);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4169hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: minus-qkQi6aY  reason: not valid java name */
    public static final long m4170minusqkQi6aY(long j10, long j11) {
        return IntOffsetKt.IntOffset(m4167getXimpl(j10) - m4167getXimpl(j11), m4168getYimpl(j10) - m4168getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-qkQi6aY  reason: not valid java name */
    public static final long m4171plusqkQi6aY(long j10, long j11) {
        return IntOffsetKt.IntOffset(m4167getXimpl(j10) + m4167getXimpl(j11), m4168getYimpl(j10) + m4168getYimpl(j11));
    }

    @Stable
    /* renamed from: rem-Bjo55l4  reason: not valid java name */
    public static final long m4172remBjo55l4(long j10, int i10) {
        return IntOffsetKt.IntOffset(m4167getXimpl(j10) % i10, m4168getYimpl(j10) % i10);
    }

    @Stable
    /* renamed from: times-Bjo55l4  reason: not valid java name */
    public static final long m4173timesBjo55l4(long j10, float f10) {
        return IntOffsetKt.IntOffset(a.c(m4167getXimpl(j10) * f10), a.c(m4168getYimpl(j10) * f10));
    }

    @Stable
    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4174toStringimpl(long j10) {
        return '(' + m4167getXimpl(j10) + ", " + m4168getYimpl(j10) + ')';
    }

    @Stable
    /* renamed from: unaryMinus-nOcc-ac  reason: not valid java name */
    public static final long m4175unaryMinusnOccac(long j10) {
        return IntOffsetKt.IntOffset(-m4167getXimpl(j10), -m4168getYimpl(j10));
    }

    public boolean equals(Object obj) {
        return m4165equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4169hashCodeimpl(this.packedValue);
    }

    @Stable
    @NotNull
    public String toString() {
        return m4174toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4176unboximpl() {
        return this.packedValue;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void getX$annotations() {
    }

    @Stable
    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4161constructorimpl(long j10) {
        return j10;
    }
}
