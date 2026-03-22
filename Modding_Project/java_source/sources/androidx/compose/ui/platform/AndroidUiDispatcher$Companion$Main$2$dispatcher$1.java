package androidx.compose.ui.platform;

import android.view.Choreographer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidUiDispatcher.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.AndroidUiDispatcher$Companion$Main$2$dispatcher$1", f = "AndroidUiDispatcher.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class AndroidUiDispatcher$Companion$Main$2$dispatcher$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Choreographer>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidUiDispatcher$Companion$Main$2$dispatcher$1(rs.c<? super AndroidUiDispatcher$Companion$Main$2$dispatcher$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Choreographer> cVar) {
        return ((AndroidUiDispatcher$Companion$Main$2$dispatcher$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            return Choreographer.getInstance();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
