package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportDDLInfo$2", f = "CampaignRemoteDS.kt", l = {214}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportDDLInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43633h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43634i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43635j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43636k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportDDLInfo$2(String str, String str2, String str3, c<? super CampaignRemoteDS$reportDDLInfo$2> cVar) {
        super(1, cVar);
        this.f43634i = str;
        this.f43635j = str2;
        this.f43636k = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$reportDDLInfo$2(this.f43634i, this.f43635j, this.f43636k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43633h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a i11 = k.f41787a.i();
            String str = this.f43634i;
            String str2 = this.f43635j;
            String str3 = this.f43636k;
            this.f43633h = 1;
            obj = k.a.C0617a.w(i11, str, null, str2, null, str3, false, null, this, 106, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((CampaignRemoteDS$reportDDLInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
