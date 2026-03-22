package com.unity3d.services;

import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.GetAdObject;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnityAdsSDK.kt */
@Metadata
@d(c = "com.unity3d.services.UnityAdsSDK$finishOMIDSession$2", f = "UnityAdsSDK.kt", l = {203}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nUnityAdsSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsSDK.kt\ncom/unity3d/services/UnityAdsSDK$finishOMIDSession$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,215:1\n1#2:216\n*E\n"})
/* loaded from: classes7.dex */
public final class UnityAdsSDK$finishOMIDSession$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ i<GetAdObject> $getAdObject$delegate;
    final /* synthetic */ i<OmFinishSession> $omFinishSession$delegate;
    final /* synthetic */ g0 $omidScope;
    final /* synthetic */ String $opportunityId;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UnityAdsSDK$finishOMIDSession$2(String str, g0 g0Var, i<? extends GetAdObject> iVar, i<? extends OmFinishSession> iVar2, c<? super UnityAdsSDK$finishOMIDSession$2> cVar) {
        super(2, cVar);
        this.$opportunityId = str;
        this.$omidScope = g0Var;
        this.$getAdObject$delegate = iVar;
        this.$omFinishSession$delegate = iVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new UnityAdsSDK$finishOMIDSession$2(this.$opportunityId, this.$omidScope, this.$getAdObject$delegate, this.$omFinishSession$delegate, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((UnityAdsSDK$finishOMIDSession$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GetAdObject finishOMIDSession$lambda$18;
        OmFinishSession finishOMIDSession$lambda$19;
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
            finishOMIDSession$lambda$18 = UnityAdsSDK.finishOMIDSession$lambda$18(this.$getAdObject$delegate);
            AdObject invoke = finishOMIDSession$lambda$18.invoke(this.$opportunityId);
            if (invoke != null) {
                finishOMIDSession$lambda$19 = UnityAdsSDK.finishOMIDSession$lambda$19(this.$omFinishSession$delegate);
                this.label = 1;
                if (finishOMIDSession$lambda$19.invoke(invoke, this) == f10) {
                    return f10;
                }
            }
        }
        kotlinx.coroutines.i.e(this.$omidScope, null, 1, null);
        return Unit.f60915a;
    }
}
