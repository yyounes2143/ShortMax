package com.startshorts.androidplayer.manager.attribution.provider;

import com.adjust.sdk.AdjustAttribution;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AJConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$initAdjust$1$1", f = "AJConversionDataProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AJConversionDataProvider$initAdjust$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41996h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AdjustAttribution f41997i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AJConversionDataProvider f41998j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$initAdjust$1$1(AdjustAttribution adjustAttribution, AJConversionDataProvider aJConversionDataProvider, rs.c<? super AJConversionDataProvider$initAdjust$1$1> cVar) {
        super(2, cVar);
        this.f41997i = adjustAttribution;
        this.f41998j = aJConversionDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AJConversionDataProvider$initAdjust$1$1(this.f41997i, this.f41998j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AJConversionDataProvider$initAdjust$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41996h == 0) {
            f.b(obj);
            AdjustAttribution adjustAttribution = this.f41997i;
            String str = adjustAttribution.jsonResponse;
            String str2 = adjustAttribution.trackerName;
            if (str2 == null) {
                str2 = "";
            }
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "AJConversionDataProvider onAttributionChangedListener trackerName: " + str2 + ", conversionData: " + str);
            this.f41998j.f41977j = str;
            this.f41998j.f41979l = DeviceUtil.f48146a.L();
            this.f41998j.L(str);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
