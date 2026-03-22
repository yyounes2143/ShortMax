package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Shadow.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Shadow {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Shadow None = new Shadow(0, 0, 0.0f, 7, null);
    private final float blurRadius;
    private final long color;
    private final long offset;

    /* compiled from: Shadow.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Shadow getNone() {
            return Shadow.None;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getNone$annotations() {
        }
    }

    public /* synthetic */ Shadow(long j10, long j11, float f10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, f10);
    }

    /* renamed from: copy-qcb84PM$default  reason: not valid java name */
    public static /* synthetic */ Shadow m2122copyqcb84PM$default(Shadow shadow, long j10, long j11, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = shadow.color;
        }
        long j12 = j10;
        if ((i10 & 2) != 0) {
            j11 = shadow.offset;
        }
        long j13 = j11;
        if ((i10 & 4) != 0) {
            f10 = shadow.blurRadius;
        }
        return shadow.m2125copyqcb84PM(j12, j13, f10);
    }

    @NotNull
    /* renamed from: copy-qcb84PM  reason: not valid java name */
    public final Shadow m2125copyqcb84PM(long j10, long j11, float f10) {
        return new Shadow(j10, j11, f10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        if (Color.m1843equalsimpl0(this.color, shadow.color) && Offset.m1603equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius) {
            return true;
        }
        return false;
    }

    public final float getBlurRadius() {
        return this.blurRadius;
    }

    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public final long m2126getColor0d7_KjU() {
        return this.color;
    }

    /* renamed from: getOffset-F1C5BW0  reason: not valid java name */
    public final long m2127getOffsetF1C5BW0() {
        return this.offset;
    }

    public int hashCode() {
        return (((Color.m1849hashCodeimpl(this.color) * 31) + Offset.m1608hashCodeimpl(this.offset)) * 31) + Float.hashCode(this.blurRadius);
    }

    @NotNull
    public String toString() {
        return "Shadow(color=" + ((Object) Color.m1850toStringimpl(this.color)) + ", offset=" + ((Object) Offset.m1614toStringimpl(this.offset)) + ", blurRadius=" + this.blurRadius + ')';
    }

    private Shadow(long j10, long j11, float f10) {
        this.color = j10;
        this.offset = j11;
        this.blurRadius = f10;
    }

    public /* synthetic */ Shadow(long j10, long j11, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? ColorKt.Color(4278190080L) : j10, (i10 & 2) != 0 ? Offset.Companion.m1622getZeroF1C5BW0() : j11, (i10 & 4) != 0 ? 0.0f : f10, null);
    }

    @Stable
    public static /* synthetic */ void getBlurRadius$annotations() {
    }

    @Stable
    /* renamed from: getColor-0d7_KjU$annotations  reason: not valid java name */
    public static /* synthetic */ void m2123getColor0d7_KjU$annotations() {
    }

    @Stable
    /* renamed from: getOffset-F1C5BW0$annotations  reason: not valid java name */
    public static /* synthetic */ void m2124getOffsetF1C5BW0$annotations() {
    }
}
