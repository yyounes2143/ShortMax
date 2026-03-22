package androidx.compose.ui.viewinterop;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidViewHolder.android.kt */
@Metadata
@d(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1", f = "AndroidViewHolder.android.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_DISABLE_MC_REUSE}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class AndroidViewHolder$onNestedPreFling$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ long $toBeConsumed;
    int label;
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$onNestedPreFling$1(AndroidViewHolder androidViewHolder, long j10, c<? super AndroidViewHolder$onNestedPreFling$1> cVar) {
        super(2, cVar);
        this.this$0 = androidViewHolder;
        this.$toBeConsumed = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidViewHolder$onNestedPreFling$1(this.this$0, this.$toBeConsumed, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidViewHolder$onNestedPreFling$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        NestedScrollDispatcher nestedScrollDispatcher;
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
            nestedScrollDispatcher = this.this$0.dispatcher;
            long j10 = this.$toBeConsumed;
            this.label = 1;
            if (nestedScrollDispatcher.m3099dispatchPreFlingQWom1Mo(j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
