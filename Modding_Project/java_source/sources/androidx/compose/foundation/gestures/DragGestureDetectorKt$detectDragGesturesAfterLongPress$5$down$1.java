package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DragGestureDetector.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1", f = "DragGestureDetector.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_READ_MODE}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super PointerInputChange>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1(c<? super DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1 dragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1 = new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1(cVar);
        dragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1.L$0 = obj;
        return dragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super PointerInputChange> cVar) {
        return ((DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
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
            this.label = 1;
            obj = TapGestureDetectorKt.awaitFirstDown((AwaitPointerEventScope) this.L$0, false, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
