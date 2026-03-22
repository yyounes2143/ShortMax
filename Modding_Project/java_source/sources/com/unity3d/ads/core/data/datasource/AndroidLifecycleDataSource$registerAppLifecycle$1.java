package com.unity3d.ads.core.data.datasource;

import androidx.lifecycle.ProcessLifecycleOwner;
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
/* compiled from: AndroidLifecycleDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidLifecycleDataSource$registerAppLifecycle$1", f = "AndroidLifecycleDataSource.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidLifecycleDataSource$registerAppLifecycle$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidLifecycleDataSource this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLifecycleDataSource$registerAppLifecycle$1(AndroidLifecycleDataSource androidLifecycleDataSource, c<? super AndroidLifecycleDataSource$registerAppLifecycle$1> cVar) {
        super(2, cVar);
        this.this$0 = androidLifecycleDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidLifecycleDataSource$registerAppLifecycle$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidLifecycleDataSource$registerAppLifecycle$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            ProcessLifecycleOwner.Companion.get().getLifecycle().addObserver(this.this$0);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
