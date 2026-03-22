package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VelocityTracker.kt */
@Metadata
/* loaded from: classes.dex */
public final class VelocityEstimate {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final VelocityEstimate None;
    private final float confidence;
    private final long durationMillis;
    private final long offset;
    private final long pixelsPerSecond;

    /* compiled from: VelocityTracker.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final VelocityEstimate getNone() {
            return VelocityEstimate.None;
        }

        private Companion() {
        }
    }

    static {
        Offset.Companion companion = Offset.Companion;
        None = new VelocityEstimate(companion.m1622getZeroF1C5BW0(), 1.0f, 0L, companion.m1622getZeroF1C5BW0(), null);
    }

    public /* synthetic */ VelocityEstimate(long j10, float f10, long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, f10, j11, j12);
    }

    /* renamed from: copy-PZAlG8E$default  reason: not valid java name */
    public static /* synthetic */ VelocityEstimate m3303copyPZAlG8E$default(VelocityEstimate velocityEstimate, long j10, float f10, long j11, long j12, int i10, Object obj) {
        long j13;
        float f11;
        long j14;
        long j15;
        if ((i10 & 1) != 0) {
            j13 = velocityEstimate.pixelsPerSecond;
        } else {
            j13 = j10;
        }
        if ((i10 & 2) != 0) {
            f11 = velocityEstimate.confidence;
        } else {
            f11 = f10;
        }
        if ((i10 & 4) != 0) {
            j14 = velocityEstimate.durationMillis;
        } else {
            j14 = j11;
        }
        if ((i10 & 8) != 0) {
            j15 = velocityEstimate.offset;
        } else {
            j15 = j12;
        }
        return velocityEstimate.m3306copyPZAlG8E(j13, f11, j14, j15);
    }

    /* renamed from: component1-F1C5BW0  reason: not valid java name */
    public final long m3304component1F1C5BW0() {
        return this.pixelsPerSecond;
    }

    public final float component2() {
        return this.confidence;
    }

    public final long component3() {
        return this.durationMillis;
    }

    /* renamed from: component4-F1C5BW0  reason: not valid java name */
    public final long m3305component4F1C5BW0() {
        return this.offset;
    }

    @NotNull
    /* renamed from: copy-PZAlG8E  reason: not valid java name */
    public final VelocityEstimate m3306copyPZAlG8E(long j10, float f10, long j11, long j12) {
        return new VelocityEstimate(j10, f10, j11, j12, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VelocityEstimate)) {
            return false;
        }
        VelocityEstimate velocityEstimate = (VelocityEstimate) obj;
        if (Offset.m1603equalsimpl0(this.pixelsPerSecond, velocityEstimate.pixelsPerSecond) && Intrinsics.areEqual((Object) Float.valueOf(this.confidence), (Object) Float.valueOf(velocityEstimate.confidence)) && this.durationMillis == velocityEstimate.durationMillis && Offset.m1603equalsimpl0(this.offset, velocityEstimate.offset)) {
            return true;
        }
        return false;
    }

    public final float getConfidence() {
        return this.confidence;
    }

    public final long getDurationMillis() {
        return this.durationMillis;
    }

    /* renamed from: getOffset-F1C5BW0  reason: not valid java name */
    public final long m3307getOffsetF1C5BW0() {
        return this.offset;
    }

    /* renamed from: getPixelsPerSecond-F1C5BW0  reason: not valid java name */
    public final long m3308getPixelsPerSecondF1C5BW0() {
        return this.pixelsPerSecond;
    }

    public int hashCode() {
        return (((((Offset.m1608hashCodeimpl(this.pixelsPerSecond) * 31) + Float.hashCode(this.confidence)) * 31) + Long.hashCode(this.durationMillis)) * 31) + Offset.m1608hashCodeimpl(this.offset);
    }

    @NotNull
    public String toString() {
        return "VelocityEstimate(pixelsPerSecond=" + ((Object) Offset.m1614toStringimpl(this.pixelsPerSecond)) + ", confidence=" + this.confidence + ", durationMillis=" + this.durationMillis + ", offset=" + ((Object) Offset.m1614toStringimpl(this.offset)) + ')';
    }

    private VelocityEstimate(long j10, float f10, long j11, long j12) {
        this.pixelsPerSecond = j10;
        this.confidence = f10;
        this.durationMillis = j11;
        this.offset = j12;
    }
}
