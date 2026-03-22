package com.startshorts.androidplayer.manager.attribution.provider;

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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$fetchAttribution$1$1", f = "AJConversionDataProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AJConversionDataProvider$fetchAttribution$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41982h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AJConversionDataProvider f41983i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f41984j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AJConversionDataProvider$fetchAttribution$1$1(AJConversionDataProvider aJConversionDataProvider, String str, rs.c<? super AJConversionDataProvider$fetchAttribution$1$1> cVar) {
        super(2, cVar);
        this.f41983i = aJConversionDataProvider;
        this.f41984j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AJConversionDataProvider$fetchAttribution$1$1(this.f41983i, this.f41984j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AJConversionDataProvider$fetchAttribution$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41982h == 0) {
            f.b(obj);
            this.f41983i.f41977j = this.f41984j;
            this.f41983i.f41979l = DeviceUtil.f48146a.L();
            this.f41983i.L(this.f41984j);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
