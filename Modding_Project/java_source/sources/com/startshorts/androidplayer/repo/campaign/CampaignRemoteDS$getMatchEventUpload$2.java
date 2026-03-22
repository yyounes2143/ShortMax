package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo;
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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$getMatchEventUpload$2", f = "CampaignRemoteDS.kt", l = {198}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$getMatchEventUpload$2 extends SuspendLambda implements Function1<c<? super ServerResult<AFEventUploadInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43584h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43585i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$getMatchEventUpload$2(String str, c<? super CampaignRemoteDS$getMatchEventUpload$2> cVar) {
        super(1, cVar);
        this.f43585i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new CampaignRemoteDS$getMatchEventUpload$2(this.f43585i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43584h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a i11 = k.f41787a.i();
            String str = this.f43585i;
            this.f43584h = 1;
            obj = i11.X(str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<AFEventUploadInfo>> cVar) {
        return ((CampaignRemoteDS$getMatchEventUpload$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
