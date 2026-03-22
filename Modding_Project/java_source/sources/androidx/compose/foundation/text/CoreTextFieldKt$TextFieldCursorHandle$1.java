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
/* compiled from: CoreTextField.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1", f = "CoreTextField.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_HTTP2_REUSED}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class CoreTextFieldKt$TextFieldCursorHandle$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$TextFieldCursorHandle$1(TextDragObserver textDragObserver, c<? super CoreTextFieldKt$TextFieldCursorHandle$1> cVar) {
        super(2, cVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        CoreTextFieldKt$TextFieldCursorHandle$1 coreTextFieldKt$TextFieldCursorHandle$1 = new CoreTextFieldKt$TextFieldCursorHandle$1(this.$observer, cVar);
        coreTextFieldKt$TextFieldCursorHandle$1.L$0 = obj;
        return coreTextFieldKt$TextFieldCursorHandle$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((CoreTextFieldKt$TextFieldCursorHandle$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
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
            TextDragObserver textDragObserver = this.$observer;
            this.label = 1;
            if (LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver((PointerInputScope) this.L$0, textDragObserver, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
