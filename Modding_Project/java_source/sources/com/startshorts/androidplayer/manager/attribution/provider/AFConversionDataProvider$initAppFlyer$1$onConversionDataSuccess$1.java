package com.startshorts.androidplayer.manager.attribution.provider;

import com.google.gson.Gson;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: AFConversionDataProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1", f = "AFConversionDataProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41961h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AFConversionDataProvider f41962i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Map<String, Object> f41963j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1(AFConversionDataProvider aFConversionDataProvider, Map<String, Object> map, rs.c<? super AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1> cVar) {
        super(2, cVar);
        this.f41962i = aFConversionDataProvider;
        this.f41963j = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1(this.f41962i, this.f41963j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AFConversionDataProvider$initAppFlyer$1$onConversionDataSuccess$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Gson D;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41961h == 0) {
            f.b(obj);
            D = this.f41962i.D();
            String json = D.toJson(this.f41963j);
            Logger logger = Logger.f41511a;
            logger.h("CampaignNewTag", "UdlAFConversionDataProvider onConversionDataSuccess conversionData: " + json);
            if (!ud.b.f68412a.o()) {
                this.f41962i.f41944k = json;
                this.f41962i.f41946m = DeviceUtil.f48146a.L();
                this.f41962i.J(json);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
