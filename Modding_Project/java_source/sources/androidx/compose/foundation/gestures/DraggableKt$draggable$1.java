package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
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
@d(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$1", f = "Draggable.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DraggableKt$draggable$1 extends SuspendLambda implements n<g0, Offset, c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DraggableKt$draggable$1(c<? super DraggableKt$draggable$1> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, Offset offset, c<? super Unit> cVar) {
        return m306invoked4ec7I(g0Var, offset.m1616unboximpl(), cVar);
    }

    @Nullable
    /* renamed from: invoke-d-4ec7I  reason: not valid java name */
    public final Object m306invoked4ec7I(@NotNull g0 g0Var, long j10, @Nullable c<? super Unit> cVar) {
        return new DraggableKt$draggable$1(cVar).invokeSuspend(Unit.f60915a);
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
}
