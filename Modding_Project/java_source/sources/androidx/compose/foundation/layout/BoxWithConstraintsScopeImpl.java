package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BoxWithConstraints.kt */
@Metadata
/* loaded from: classes.dex */
final class BoxWithConstraintsScopeImpl implements BoxWithConstraintsScope, BoxScope {
    private final /* synthetic */ BoxScopeInstance $$delegate_0;
    private final long constraints;
    @NotNull
    private final Density density;

    public /* synthetic */ BoxWithConstraintsScopeImpl(Density density, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(density, j10);
    }

    private final Density component1() {
        return this.density;
    }

    /* renamed from: copy-0kLqBqw$default  reason: not valid java name */
    public static /* synthetic */ BoxWithConstraintsScopeImpl m424copy0kLqBqw$default(BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl, Density density, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            density = boxWithConstraintsScopeImpl.density;
        }
        if ((i10 & 2) != 0) {
            j10 = boxWithConstraintsScopeImpl.mo419getConstraintsmsEJaDk();
        }
        return boxWithConstraintsScopeImpl.m426copy0kLqBqw(density, j10);
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier align(@NotNull Modifier modifier, @NotNull Alignment alignment) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return this.$$delegate_0.align(modifier, alignment);
    }

    /* renamed from: component2-msEJaDk  reason: not valid java name */
    public final long m425component2msEJaDk() {
        return mo419getConstraintsmsEJaDk();
    }

    @NotNull
    /* renamed from: copy-0kLqBqw  reason: not valid java name */
    public final BoxWithConstraintsScopeImpl m426copy0kLqBqw(@NotNull Density density, long j10) {
        Intrinsics.checkNotNullParameter(density, "density");
        return new BoxWithConstraintsScopeImpl(density, j10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxWithConstraintsScopeImpl)) {
            return false;
        }
        BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
        if (Intrinsics.areEqual(this.density, boxWithConstraintsScopeImpl.density) && Constraints.m3998equalsimpl0(mo419getConstraintsmsEJaDk(), boxWithConstraintsScopeImpl.mo419getConstraintsmsEJaDk())) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* renamed from: getConstraints-msEJaDk */
    public long mo419getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* renamed from: getMaxHeight-D9Ej5fM */
    public float mo420getMaxHeightD9Ej5fM() {
        Density density = this.density;
        if (Constraints.m4000getHasBoundedHeightimpl(mo419getConstraintsmsEJaDk())) {
            return density.mo339toDpu2uoSUM(Constraints.m4004getMaxHeightimpl(mo419getConstraintsmsEJaDk()));
        }
        return Dp.Companion.m4068getInfinityD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* renamed from: getMaxWidth-D9Ej5fM */
    public float mo421getMaxWidthD9Ej5fM() {
        Density density = this.density;
        if (Constraints.m4001getHasBoundedWidthimpl(mo419getConstraintsmsEJaDk())) {
            return density.mo339toDpu2uoSUM(Constraints.m4005getMaxWidthimpl(mo419getConstraintsmsEJaDk()));
        }
        return Dp.Companion.m4068getInfinityD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* renamed from: getMinHeight-D9Ej5fM */
    public float mo422getMinHeightD9Ej5fM() {
        return this.density.mo339toDpu2uoSUM(Constraints.m4006getMinHeightimpl(mo419getConstraintsmsEJaDk()));
    }

    @Override // androidx.compose.foundation.layout.BoxWithConstraintsScope
    /* renamed from: getMinWidth-D9Ej5fM */
    public float mo423getMinWidthD9Ej5fM() {
        return this.density.mo339toDpu2uoSUM(Constraints.m4007getMinWidthimpl(mo419getConstraintsmsEJaDk()));
    }

    public int hashCode() {
        return (this.density.hashCode() * 31) + Constraints.m4008hashCodeimpl(mo419getConstraintsmsEJaDk());
    }

    @Override // androidx.compose.foundation.layout.BoxScope
    @Stable
    @NotNull
    public Modifier matchParentSize(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return this.$$delegate_0.matchParentSize(modifier);
    }

    @NotNull
    public String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.density + ", constraints=" + ((Object) Constraints.m4010toStringimpl(mo419getConstraintsmsEJaDk())) + ')';
    }

    private BoxWithConstraintsScopeImpl(Density density, long j10) {
        this.density = density;
        this.constraints = j10;
        this.$$delegate_0 = BoxScopeInstance.INSTANCE;
    }
}
