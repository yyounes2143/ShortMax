package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CoreText.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.TextController$update$2", f = "CoreText.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class TextController$update$2 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TextController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextController$update$2(TextController textController, c<? super TextController$update$2> cVar) {
        super(2, cVar);
        this.this$0 = textController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        TextController$update$2 textController$update$2 = new TextController$update$2(this.this$0, cVar);
        textController$update$2.L$0 = obj;
        return textController$update$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((TextController$update$2) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            TextDragObserver longPressDragObserver = this.this$0.getLongPressDragObserver();
            this.label = 1;
            if (LongPressTextDragObserverKt.detectDragGesturesAfterLongPressWithObserver((PointerInputScope) this.L$0, longPressDragObserver, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
