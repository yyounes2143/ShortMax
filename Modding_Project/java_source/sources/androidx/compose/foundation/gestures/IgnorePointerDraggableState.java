package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
final class IgnorePointerDraggableState implements PointerAwareDraggableState, PointerAwareDragScope {
    @Nullable
    private DragScope latestConsumptionScope;
    @NotNull
    private final DraggableState origin;

    public IgnorePointerDraggableState(@NotNull DraggableState origin) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.origin = origin;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    public void dispatchRawDelta(float f10) {
        this.origin.dispatchRawDelta(f10);
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    @Nullable
    public Object drag(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super PointerAwareDragScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object drag = this.origin.drag(mutatePriority, new IgnorePointerDraggableState$drag$2(this, function2, null), cVar);
        if (drag == a.f()) {
            return drag;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDragScope
    /* renamed from: dragBy-Uv8p0NA  reason: not valid java name */
    public void mo310dragByUv8p0NA(float f10, long j10) {
        DragScope dragScope = this.latestConsumptionScope;
        if (dragScope != null) {
            dragScope.dragBy(f10);
        }
    }

    @Nullable
    public final DragScope getLatestConsumptionScope() {
        return this.latestConsumptionScope;
    }

    @NotNull
    public final DraggableState getOrigin() {
        return this.origin;
    }

    public final void setLatestConsumptionScope(@Nullable DragScope dragScope) {
        this.latestConsumptionScope = dragScope;
    }
}
