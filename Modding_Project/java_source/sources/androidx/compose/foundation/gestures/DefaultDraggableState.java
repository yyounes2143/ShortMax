package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
public final class DefaultDraggableState implements DraggableState {
    @NotNull
    private final DragScope dragScope;
    @NotNull
    private final Function1<Float, Unit> onDelta;
    @NotNull
    private final MutatorMutex scrollMutex;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultDraggableState(@NotNull Function1<? super Float, Unit> onDelta) {
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        this.onDelta = onDelta;
        this.dragScope = new DragScope() { // from class: androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void dragBy(float f10) {
                DefaultDraggableState.this.getOnDelta().invoke(Float.valueOf(f10));
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void dispatchRawDelta(float f10) {
        this.onDelta.invoke(Float.valueOf(f10));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    @Nullable
    public Object drag(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super DragScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new DefaultDraggableState$drag$2(this, mutatePriority, function2, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<Float, Unit> getOnDelta() {
        return this.onDelta;
    }
}
