package com.startshorts.androidplayer.utils.campaign;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MatchEventUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.campaign.MatchEventUtil$logSubsEvent$1", f = "MatchEventUtil.kt", l = {110}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MatchEventUtil$logSubsEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48188h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f48189i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48190j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48191k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MatchEventUtil$logSubsEvent$1(String str, String str2, String str3, c<? super MatchEventUtil$logSubsEvent$1> cVar) {
        super(2, cVar);
        this.f48189i = str;
        this.f48190j = str2;
        this.f48191k = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MatchEventUtil$logSubsEvent$1(this.f48189i, this.f48190j, this.f48191k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MatchEventUtil$logSubsEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object u10;
        AFEventUploadInfo aFEventUploadInfo;
        Object f10 = a.f();
        int i10 = this.f48188h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                u10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            String str = this.f48189i;
            this.f48188h = 1;
            u10 = campaignRepo.u(str, this);
            if (u10 == f10) {
                return f10;
            }
        }
        String str2 = this.f48190j;
        String str3 = this.f48191k;
        if (Result.j(u10) && (aFEventUploadInfo = (AFEventUploadInfo) u10) != null) {
            String mmpType = aFEventUploadInfo.getMmpType();
            AFEventUploadInfo.Companion companion = AFEventUploadInfo.Companion;
            if (Intrinsics.areEqual(mmpType, companion.getTYPE_AJ())) {
                if (!aFEventUploadInfo.isMatch()) {
                    Logger logger = Logger.f41511a;
                    logger.h("MatchEventUtil", "logSubsEvent -> currency(" + str2 + ") value(" + str3 + ')');
                    MatchEventUtil.f48183a.f(str2, str3, u.f51776a.d(R$string.app_adjust_eventtoken_buy));
                } else {
                    Logger.f41511a.e("MatchEventUtil", "logSubsEvent failed -> getMatchEventUploadInfo is true");
                }
            } else if (Intrinsics.areEqual(mmpType, companion.getTYPE_AF())) {
                if (!aFEventUploadInfo.isMatch()) {
                    Logger logger2 = Logger.f41511a;
                    logger2.h("MatchEventUtil", "logSubsEvent -> currency(" + str2 + ") value(" + str3 + ')');
                    MatchEventUtil.e(MatchEventUtil.f48183a, str2, str3, 2, null, 8, null);
                } else {
                    Logger.f41511a.e("MatchEventUtil", "logSubsEvent failed -> getMatchEventUploadInfo is true");
                }
            }
        }
        String str4 = this.f48190j;
        String str5 = this.f48191k;
        if (Result.g(u10) != null) {
            Logger logger3 = Logger.f41511a;
            logger3.e("MatchEventUtil", "logSubsEvent -> currency(" + str4 + ") value(" + str5 + ") getAfEventUploadInfo fail");
        }
        return Unit.f60915a;
    }
}
