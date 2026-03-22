package androidx.compose.ui.platform;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInfo.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1", f = "WindowInfo.kt", l = {47}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class WindowInfoKt$WindowFocusObserver$1$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ State<Function1<Boolean, Unit>> $callback;
    final /* synthetic */ WindowInfo $windowInfo;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WindowInfoKt$WindowFocusObserver$1$1(WindowInfo windowInfo, State<? extends Function1<? super Boolean, Unit>> state, rs.c<? super WindowInfoKt$WindowFocusObserver$1$1> cVar) {
        super(2, cVar);
        this.$windowInfo = windowInfo;
        this.$callback = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new WindowInfoKt$WindowFocusObserver$1$1(this.$windowInfo, this.$callback, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((WindowInfoKt$WindowFocusObserver$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            final WindowInfo windowInfo = this.$windowInfo;
            kt.b snapshotFlow = SnapshotStateKt.snapshotFlow(new Function0<Boolean>() { // from class: androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1.1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(WindowInfo.this.isWindowFocused());
                }
            });
            final State<Function1<Boolean, Unit>> state = this.$callback;
            kt.c<Boolean> cVar = new kt.c<Boolean>() { // from class: androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1.2
                @Override // kt.c
                public /* bridge */ /* synthetic */ Object emit(Boolean bool, rs.c cVar2) {
                    return emit(bool.booleanValue(), cVar2);
                }

                @Nullable
                public final Object emit(boolean z10, @NotNull rs.c<? super Unit> cVar2) {
                    Unit invoke = state.getValue().invoke(kotlin.coroutines.jvm.internal.a.a(z10));
                    return invoke == kotlin.coroutines.intrinsics.a.f() ? invoke : Unit.f60915a;
                }
            };
            this.label = 1;
            if (snapshotFlow.collect(cVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
