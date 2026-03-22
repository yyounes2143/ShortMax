package androidx.compose.ui.viewinterop;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.unit.Velocity;
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
@d(c = "androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedFling$1", f = "AndroidViewHolder.android.kt", l = {470, 475}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class AndroidViewHolder$onNestedFling$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ boolean $consumed;
    final /* synthetic */ long $viewVelocity;
    int label;
    final /* synthetic */ AndroidViewHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$onNestedFling$1(boolean z10, AndroidViewHolder androidViewHolder, long j10, c<? super AndroidViewHolder$onNestedFling$1> cVar) {
        super(2, cVar);
        this.$consumed = z10;
        this.this$0 = androidViewHolder;
        this.$viewVelocity = j10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidViewHolder$onNestedFling$1(this.$consumed, this.this$0, this.$viewVelocity, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidViewHolder$onNestedFling$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        NestedScrollDispatcher nestedScrollDispatcher;
        NestedScrollDispatcher nestedScrollDispatcher2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            if (!this.$consumed) {
                nestedScrollDispatcher2 = this.this$0.dispatcher;
                long m4285getZero9UxMQ8M = Velocity.Companion.m4285getZero9UxMQ8M();
                long j10 = this.$viewVelocity;
                this.label = 1;
                if (nestedScrollDispatcher2.m3097dispatchPostFlingRZ2iAVY(m4285getZero9UxMQ8M, j10, this) == f10) {
                    return f10;
                }
            } else {
                nestedScrollDispatcher = this.this$0.dispatcher;
                long j11 = this.$viewVelocity;
                long m4285getZero9UxMQ8M2 = Velocity.Companion.m4285getZero9UxMQ8M();
                this.label = 2;
                if (nestedScrollDispatcher.m3097dispatchPostFlingRZ2iAVY(j11, m4285getZero9UxMQ8M2, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
