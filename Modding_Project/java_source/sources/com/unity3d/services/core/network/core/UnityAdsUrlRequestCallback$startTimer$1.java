package com.unity3d.services.core.network.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.chromium.net.UrlRequest;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsUrlRequestCallback.kt */
@Metadata
@d(c = "com.unity3d.services.core.network.core.UnityAdsUrlRequestCallback$startTimer$1", f = "UnityAdsUrlRequestCallback.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsUrlRequestCallback$startTimer$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ UrlRequest $request;
    int label;
    final /* synthetic */ UnityAdsUrlRequestCallback this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsUrlRequestCallback$startTimer$1(UnityAdsUrlRequestCallback unityAdsUrlRequestCallback, UrlRequest urlRequest, c<? super UnityAdsUrlRequestCallback$startTimer$1> cVar) {
        super(2, cVar);
        this.this$0 = unityAdsUrlRequestCallback;
        this.$request = urlRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsUrlRequestCallback$startTimer$1(this.this$0, this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsUrlRequestCallback$startTimer$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            long readTimeout = this.this$0.getReadTimeout();
            this.label = 1;
            if (DelayKt.b(readTimeout, this) == f10) {
                return f10;
            }
        }
        this.$request.cancel();
        return Unit.f60915a;
    }
}
