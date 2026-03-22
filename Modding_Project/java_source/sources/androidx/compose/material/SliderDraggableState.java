package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Slider.kt */
@Metadata
/* loaded from: classes.dex */
final class SliderDraggableState implements DraggableState {
    @NotNull
    private final DragScope dragScope;
    @NotNull
    private final MutableState isDragging$delegate;
    @NotNull
    private final Function1<Float, Unit> onDelta;
    @NotNull
    private final MutatorMutex scrollMutex;

    /* JADX WARN: Multi-variable type inference failed */
    public SliderDraggableState(@NotNull Function1<? super Float, Unit> onDelta) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        this.onDelta = onDelta;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isDragging$delegate = mutableStateOf$default;
        this.dragScope = new DragScope() { // from class: androidx.compose.material.SliderDraggableState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void dragBy(float f10) {
                SliderDraggableState.this.getOnDelta().invoke(Float.valueOf(f10));
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDragging(boolean z10) {
        this.isDragging$delegate.setValue(Boolean.valueOf(z10));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void dispatchRawDelta(float f10) {
        this.onDelta.invoke(Float.valueOf(f10));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    @Nullable
    public Object drag(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super DragScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new SliderDraggableState$drag$2(this, mutatePriority, function2, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<Float, Unit> getOnDelta() {
        return this.onDelta;
    }

    public final boolean isDragging() {
        return ((Boolean) this.isDragging$delegate.getValue()).booleanValue();
    }
}
