package com.startshorts.androidplayer.manager.attribution.provider;

import android.net.Uri;
import com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignPullUp;
import com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AJConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$initAdjust$2$1", f = "AJConversionDataProvider.kt", l = {206}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AJConversionDataProvider$initAdjust$2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41999h;

    /* renamed from: i  reason: collision with root package name */
    int f42000i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Uri f42001j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ AJConversionDataProvider f42002k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$initAdjust$2$1(Uri uri, AJConversionDataProvider aJConversionDataProvider, rs.c<? super AJConversionDataProvider$initAdjust$2$1> cVar) {
        super(2, cVar);
        this.f42001j = uri;
        this.f42002k = aJConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AJConversionDataProvider$initAdjust$2$1(this.f42001j, this.f42002k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AJConversionDataProvider$initAdjust$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String uri;
        Object J;
        String str;
        String str2;
        String str3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42000i;
        if (i10 != 0) {
            if (i10 == 1) {
                str = (String) this.f41999h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            uri = this.f42001j.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "AJConversionDataProvider onDeepLinking subscribeData: " + uri);
            this.f42002k.f41978k = uri;
            this.f42002k.f41980m = DeviceUtil.f48146a.L();
            if (this.f42002k.I() != null) {
                logger.h("CampaignNewTag", "AJConversionDataProvider onDeepLinking callback listener");
                AJConversionDataProvider.b I = this.f42002k.I();
                if (I != null) {
                    I.a(uri);
                }
                this.f42002k.S(null);
            } else if (ABTestFactory.f42224a.u1().isEnable().invoke().booleanValue()) {
                logger.h("CampaignNewTag", "AJConversionDataProvider onDeepLinking allPullUp");
                CampaignInfo i11 = MatchEventUtil.f48183a.i(uri, AFEventUploadInfo.Companion.getTYPE_AJ());
                if (i11 != null) {
                    logger.h("CampaignNewTag", "AJConversionDataProvider onDeepLinking handleActiveJumpImmersion " + i11);
                    if (BaseCampaignProvider.f42007e.b().compareAndSet(false, true)) {
                        logger.h("CampaignNewTag", "Triggering CampaignPullUp.allPullUp (First time in this session)");
                        EventManager.s0(EventManager.f42463a, "udl_active_success", null, 0L, 6, null);
                        AJConversionDataProvider aJConversionDataProvider = this.f42002k;
                        this.f41999h = uri;
                        this.f42000i = 1;
                        J = aJConversionDataProvider.J(i11, this);
                        if (J == f10) {
                            return f10;
                        }
                        str = uri;
                    }
                    AJConversionDataProvider aJConversionDataProvider2 = this.f42002k;
                    str2 = aJConversionDataProvider2.f41981n;
                    aJConversionDataProvider2.M(uri, str2);
                }
            }
            return Unit.f60915a;
        }
        CampaignPullUp campaignPullUp = CampaignPullUp.f41878a;
        str3 = this.f42002k.f41981n;
        campaignPullUp.a(str, str3, false, false);
        uri = str;
        AJConversionDataProvider aJConversionDataProvider22 = this.f42002k;
        str2 = aJConversionDataProvider22.f41981n;
        aJConversionDataProvider22.M(uri, str2);
        return Unit.f60915a;
    }
}
