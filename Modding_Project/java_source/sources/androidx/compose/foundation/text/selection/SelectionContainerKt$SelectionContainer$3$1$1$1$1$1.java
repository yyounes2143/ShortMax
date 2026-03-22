package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SelectionContainer.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$3$1$1$1$1$1", f = "SelectionContainer.kt", l = {126}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class SelectionContainerKt$SelectionContainer$3$1$1$1$1$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionContainerKt$SelectionContainer$3$1$1$1$1$1(TextDragObserver textDragObserver, c<? super SelectionContainerKt$SelectionContainer$3$1$1$1$1$1> cVar) {
        super(2, cVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SelectionContainerKt$SelectionContainer$3$1$1$1$1$1 selectionContainerKt$SelectionContainer$3$1$1$1$1$1 = new SelectionContainerKt$SelectionContainer$3$1$1$1$1$1(this.$observer, cVar);
        selectionContainerKt$SelectionContainer$3$1$1$1$1$1.L$0 = obj;
        return selectionContainerKt$SelectionContainer$3$1$1$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((SelectionContainerKt$SelectionContainer$3$1$1$1$1$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            TextDragObserver textDragObserver = this.$observer;
            this.label = 1;
            if (LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver((PointerInputScope) this.L$0, textDragObserver, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
