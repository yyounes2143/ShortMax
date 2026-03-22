package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.campaign.GoogleEventUploadInfo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$getGoogleMatchEventUploadInfo$1", f = "ImmersionViewModel.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_VR_PREDICT_ACCURACY_THRESHOLD}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionViewModel$getGoogleMatchEventUploadInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48553h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48554i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$getGoogleMatchEventUploadInfo$1(ImmersionViewModel immersionViewModel, rs.c<? super ImmersionViewModel$getGoogleMatchEventUploadInfo$1> cVar) {
        super(2, cVar);
        this.f48554i = immersionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$getGoogleMatchEventUploadInfo$1(this.f48554i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$getGoogleMatchEventUploadInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object q10;
        GoogleEventUploadInfo googleEventUploadInfo;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48553h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                q10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            this.f48553h = 1;
            q10 = campaignRepo.q(this);
            if (q10 == f10) {
                return f10;
            }
        }
        ImmersionViewModel immersionViewModel = this.f48554i;
        if (Result.j(q10) && (googleEventUploadInfo = (GoogleEventUploadInfo) q10) != null) {
            o.b(immersionViewModel.Q(), new d.a(googleEventUploadInfo));
        }
        return Unit.f60915a;
    }
}
