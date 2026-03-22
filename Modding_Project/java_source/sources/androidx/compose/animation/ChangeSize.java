package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ChangeSize {
    @NotNull
    private final Alignment alignment;
    @NotNull
    private final FiniteAnimationSpec<IntSize> animationSpec;
    private final boolean clip;
    @NotNull
    private final Function1<IntSize, IntSize> size;

    /* JADX WARN: Multi-variable type inference failed */
    public ChangeSize(@NotNull Alignment alignment, @NotNull Function1<? super IntSize, IntSize> size, @NotNull FiniteAnimationSpec<IntSize> animationSpec, boolean z10) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        this.alignment = alignment;
        this.size = size;
        this.animationSpec = animationSpec;
        this.clip = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChangeSize copy$default(ChangeSize changeSize, Alignment alignment, Function1 function1, FiniteAnimationSpec finiteAnimationSpec, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            alignment = changeSize.alignment;
        }
        if ((i10 & 2) != 0) {
            function1 = changeSize.size;
        }
        if ((i10 & 4) != 0) {
            finiteAnimationSpec = changeSize.animationSpec;
        }
        if ((i10 & 8) != 0) {
            z10 = changeSize.clip;
        }
        return changeSize.copy(alignment, function1, finiteAnimationSpec, z10);
    }

    @NotNull
    public final Alignment component1() {
        return this.alignment;
    }

    @NotNull
    public final Function1<IntSize, IntSize> component2() {
        return this.size;
    }

    @NotNull
    public final FiniteAnimationSpec<IntSize> component3() {
        return this.animationSpec;
    }

    public final boolean component4() {
        return this.clip;
    }

    @NotNull
    public final ChangeSize copy(@NotNull Alignment alignment, @NotNull Function1<? super IntSize, IntSize> size, @NotNull FiniteAnimationSpec<IntSize> animationSpec, boolean z10) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return new ChangeSize(alignment, size, animationSpec, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChangeSize)) {
            return false;
        }
        ChangeSize changeSize = (ChangeSize) obj;
        if (Intrinsics.areEqual(this.alignment, changeSize.alignment) && Intrinsics.areEqual(this.size, changeSize.size) && Intrinsics.areEqual(this.animationSpec, changeSize.animationSpec) && this.clip == changeSize.clip) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Alignment getAlignment() {
        return this.alignment;
    }

    @NotNull
    public final FiniteAnimationSpec<IntSize> getAnimationSpec() {
        return this.animationSpec;
    }

    public final boolean getClip() {
        return this.clip;
    }

    @NotNull
    public final Function1<IntSize, IntSize> getSize() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.alignment.hashCode() * 31) + this.size.hashCode()) * 31) + this.animationSpec.hashCode()) * 31;
        boolean z10 = this.clip;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "ChangeSize(alignment=" + this.alignment + ", size=" + this.size + ", animationSpec=" + this.animationSpec + ", clip=" + this.clip + ')';
    }

    public /* synthetic */ ChangeSize(Alignment alignment, Function1 function1, FiniteAnimationSpec finiteAnimationSpec, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignment, (i10 & 2) != 0 ? new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.ChangeSize.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ IntSize invoke(IntSize intSize) {
                return IntSize.m4201boximpl(m72invokemzRDjE0(intSize.m4213unboximpl()));
            }

            /* renamed from: invoke-mzRDjE0  reason: not valid java name */
            public final long m72invokemzRDjE0(long j10) {
                return IntSizeKt.IntSize(0, 0);
            }
        } : function1, finiteAnimationSpec, (i10 & 8) != 0 ? true : z10);
    }
}
