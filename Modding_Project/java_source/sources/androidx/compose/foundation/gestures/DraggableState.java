package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
public interface DraggableState {

    /* compiled from: Draggable.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Object drag$default(DraggableState draggableState, MutatePriority mutatePriority, Function2 function2, c cVar, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                mutatePriority = MutatePriority.Default;
            }
            return draggableState.drag(mutatePriority, function2, cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drag");
    }

    void dispatchRawDelta(float f10);

    @Nullable
    Object drag(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super DragScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar);
}
