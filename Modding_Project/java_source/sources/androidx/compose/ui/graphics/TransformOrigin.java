package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: TransformOrigin.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TransformOrigin {
    private final long packedValue;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Center = TransformOriginKt.TransformOrigin(0.5f, 0.5f);

    /* compiled from: TransformOrigin.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getCenter-SzJe1aQ  reason: not valid java name */
        public final long m2184getCenterSzJe1aQ() {
            return TransformOrigin.Center;
        }

        private Companion() {
        }
    }

    private /* synthetic */ TransformOrigin(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TransformOrigin m2171boximpl(long j10) {
        return new TransformOrigin(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m2172component1impl(long j10) {
        return m2179getPivotFractionXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m2173component2impl(long j10) {
        return m2180getPivotFractionYimpl(j10);
    }

    /* renamed from: copy-zey9I6w  reason: not valid java name */
    public static final long m2175copyzey9I6w(long j10, float f10, float f11) {
        return TransformOriginKt.TransformOrigin(f10, f11);
    }

    /* renamed from: copy-zey9I6w$default  reason: not valid java name */
    public static /* synthetic */ long m2176copyzey9I6w$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m2179getPivotFractionXimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m2180getPivotFractionYimpl(j10);
        }
        return m2175copyzey9I6w(j10, f10, f11);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2177equalsimpl(long j10, Object obj) {
        if (!(obj instanceof TransformOrigin) || j10 != ((TransformOrigin) obj).m2183unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2178equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getPivotFractionX-impl  reason: not valid java name */
    public static final float m2179getPivotFractionXimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: getPivotFractionY-impl  reason: not valid java name */
    public static final float m2180getPivotFractionYimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2181hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2182toStringimpl(long j10) {
        return "TransformOrigin(packedValue=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m2177equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m2181hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m2182toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m2183unboximpl() {
        return this.packedValue;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2174constructorimpl(long j10) {
        return j10;
    }
}
