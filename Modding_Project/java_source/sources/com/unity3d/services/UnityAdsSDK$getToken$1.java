package com.unity3d.services;

import gt.g0;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$getToken$1", f = "UnityAdsSDK.kt", l = {131}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnityAdsSDK$getToken$1 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {
    int label;
    final /* synthetic */ UnityAdsSDK this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsSDK$getToken$1(UnityAdsSDK unityAdsSDK, c<? super UnityAdsSDK$getToken$1> cVar) {
        super(2, cVar);
        this.this$0 = unityAdsSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$getToken$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super String> cVar) {
        return ((UnityAdsSDK$getToken$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
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
            UnityAdsSDK unityAdsSDK = this.this$0;
            this.label = 1;
            obj = unityAdsSDK.fetchToken("true", this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
