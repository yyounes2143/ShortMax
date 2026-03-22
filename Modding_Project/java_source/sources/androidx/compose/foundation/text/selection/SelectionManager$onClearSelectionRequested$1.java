package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectionManager.kt */
@Metadata
@d(c = "androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1", f = "SelectionManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SelectionManager$onClearSelectionRequested$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $block;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SelectionManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionManager$onClearSelectionRequested$1(SelectionManager selectionManager, Function0<Unit> function0, c<? super SelectionManager$onClearSelectionRequested$1> cVar) {
        super(2, cVar);
        this.this$0 = selectionManager;
        this.$block = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        SelectionManager$onClearSelectionRequested$1 selectionManager$onClearSelectionRequested$1 = new SelectionManager$onClearSelectionRequested$1(this.this$0, this.$block, cVar);
        selectionManager$onClearSelectionRequested$1.L$0 = obj;
        return selectionManager$onClearSelectionRequested$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((SelectionManager$onClearSelectionRequested$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object detectNonConsumingTap;
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
            SelectionManager selectionManager = this.this$0;
            final Function0<Unit> function0 = this.$block;
            Function1<Offset, Unit> function1 = new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager$onClearSelectionRequested$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                    m867invokek4lQ0M(offset.m1616unboximpl());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
                public final void m867invokek4lQ0M(long j10) {
                    function0.invoke();
                }
            };
            this.label = 1;
            detectNonConsumingTap = selectionManager.detectNonConsumingTap((PointerInputScope) this.L$0, function1, this);
            if (detectNonConsumingTap == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
