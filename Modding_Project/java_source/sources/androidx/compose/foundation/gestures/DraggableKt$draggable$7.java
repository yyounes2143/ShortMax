package androidx.compose.foundation.gestures;

import at.n;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Draggable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$7", f = "Draggable.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DraggableKt$draggable$7 extends SuspendLambda implements n<g0, Float, c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DraggableKt$draggable$7(c<? super DraggableKt$draggable$7> cVar) {
        super(3, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull g0 g0Var, float f10, @Nullable c<? super Unit> cVar) {
        return new DraggableKt$draggable$7(cVar).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Float f10, c<? super Unit> cVar) {
        return invoke(g0Var, f10.floatValue(), cVar);
    }
}
