package com.unity3d.ads.core.domain;

import com.unity3d.services.core.misc.Utilities;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CommonSafeCallbackInvoke.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.CommonSafeCallbackInvoke$invoke$1", f = "CommonSafeCallbackInvoke.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class CommonSafeCallbackInvoke$invoke$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $block;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonSafeCallbackInvoke$invoke$1(Function0<Unit> function0, c<? super CommonSafeCallbackInvoke$invoke$1> cVar) {
        super(2, cVar);
        this.$block = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CommonSafeCallbackInvoke$invoke$1(this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((CommonSafeCallbackInvoke$invoke$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            final Function0<Unit> function0 = this.$block;
            Utilities.wrapCustomerListener(new Runnable() { // from class: com.unity3d.ads.core.domain.a
                @Override // java.lang.Runnable
                public final void run() {
                    Function0.this.invoke();
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
