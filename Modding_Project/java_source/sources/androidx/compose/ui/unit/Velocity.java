package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Velocity.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Velocity {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = VelocityKt.Velocity(0.0f, 0.0f);
    private final long packedValue;

    /* compiled from: Velocity.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getZero-9UxMQ8M  reason: not valid java name */
        public final long m4285getZero9UxMQ8M() {
            return Velocity.Zero;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getZero-9UxMQ8M$annotations  reason: not valid java name */
        public static /* synthetic */ void m4284getZero9UxMQ8M$annotations() {
        }
    }

    private /* synthetic */ Velocity(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Velocity m4265boximpl(long j10) {
        return new Velocity(j10);
    }

    @Stable
    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m4266component1impl(long j10) {
        return m4274getXimpl(j10);
    }

    @Stable
    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m4267component2impl(long j10) {
        return m4275getYimpl(j10);
    }

    /* renamed from: copy-OhffZ5M  reason: not valid java name */
    public static final long m4269copyOhffZ5M(long j10, float f10, float f11) {
        return VelocityKt.Velocity(f10, f11);
    }

    /* renamed from: copy-OhffZ5M$default  reason: not valid java name */
    public static /* synthetic */ long m4270copyOhffZ5M$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m4274getXimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m4275getYimpl(j10);
        }
        return m4269copyOhffZ5M(j10, f10, f11);
    }

    @Stable
    /* renamed from: div-adjELrA  reason: not valid java name */
    public static final long m4271divadjELrA(long j10, float f10) {
        return VelocityKt.Velocity(m4274getXimpl(j10) / f10, m4275getYimpl(j10) / f10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4272equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Velocity) || j10 != ((Velocity) obj).m4283unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4273equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getX-impl  reason: not valid java name */
    public static final float m4274getXimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: getY-impl  reason: not valid java name */
    public static final float m4275getYimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4276hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @Stable
    /* renamed from: minus-AH228Gc  reason: not valid java name */
    public static final long m4277minusAH228Gc(long j10, long j11) {
        return VelocityKt.Velocity(m4274getXimpl(j10) - m4274getXimpl(j11), m4275getYimpl(j10) - m4275getYimpl(j11));
    }

    @Stable
    /* renamed from: plus-AH228Gc  reason: not valid java name */
    public static final long m4278plusAH228Gc(long j10, long j11) {
        return VelocityKt.Velocity(m4274getXimpl(j10) + m4274getXimpl(j11), m4275getYimpl(j10) + m4275getYimpl(j11));
    }

    @Stable
    /* renamed from: rem-adjELrA  reason: not valid java name */
    public static final long m4279remadjELrA(long j10, float f10) {
        return VelocityKt.Velocity(m4274getXimpl(j10) % f10, m4275getYimpl(j10) % f10);
    }

    @Stable
    /* renamed from: times-adjELrA  reason: not valid java name */
    public static final long m4280timesadjELrA(long j10, float f10) {
        return VelocityKt.Velocity(m4274getXimpl(j10) * f10, m4275getYimpl(j10) * f10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4281toStringimpl(long j10) {
        return '(' + m4274getXimpl(j10) + ", " + m4275getYimpl(j10) + ") px/sec";
    }

    @Stable
    /* renamed from: unaryMinus-9UxMQ8M  reason: not valid java name */
    public static final long m4282unaryMinus9UxMQ8M(long j10) {
        return VelocityKt.Velocity(-m4274getXimpl(j10), -m4275getYimpl(j10));
    }

    public boolean equals(Object obj) {
        return m4272equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m4276hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m4281toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4283unboximpl() {
        return this.packedValue;
    }

    @Stable
    public static /* synthetic */ void getX$annotations() {
    }

    @Stable
    public static /* synthetic */ void getY$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4268constructorimpl(long j10) {
        return j10;
    }
}
