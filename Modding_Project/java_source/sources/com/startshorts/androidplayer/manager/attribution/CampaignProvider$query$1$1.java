package com.startshorts.androidplayer.manager.attribution;

import android.content.Context;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignProvider$query$1$1", f = "CampaignProvider.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignProvider$query$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41873h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseCampaignProvider f41874i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f41875j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignProvider$query$1$1(BaseCampaignProvider baseCampaignProvider, Context context, rs.c<? super CampaignProvider$query$1$1> cVar) {
        super(2, cVar);
        this.f41874i = baseCampaignProvider;
        this.f41875j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignProvider$query$1$1(this.f41874i, this.f41875j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignProvider$query$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41873h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            BaseCampaignProvider baseCampaignProvider = this.f41874i;
            Context context = this.f41875j;
            this.f41873h = 1;
            if (baseCampaignProvider.j(context, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
