package com.startshorts.androidplayer.manager.attribution;

import android.content.Context;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import fk.u;
import gt.g0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignProvider$queryAsync$1", f = "CampaignProvider.kt", l = {73}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignProvider$queryAsync$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41876h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignType f41877i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignProvider$queryAsync$1(CampaignType campaignType, rs.c<? super CampaignProvider$queryAsync$1> cVar) {
        super(2, cVar);
        this.f41877i = campaignType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignProvider$queryAsync$1(this.f41877i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignProvider$queryAsync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List f10;
        Object obj2;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41876h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            f10 = CampaignProvider.f41870a.f();
            CampaignType campaignType = this.f41877i;
            Iterator it = f10.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj2 = it.next();
                    if (Intrinsics.areEqual(((BaseCampaignProvider) obj2).a().getValue(), campaignType.getValue())) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            BaseCampaignProvider baseCampaignProvider = (BaseCampaignProvider) obj2;
            if (baseCampaignProvider != null) {
                Context b10 = u.f51776a.b();
                this.f41876h = 1;
                if (baseCampaignProvider.j(b10, this) == f11) {
                    return f11;
                }
            }
        }
        return Unit.f60915a;
    }
}
