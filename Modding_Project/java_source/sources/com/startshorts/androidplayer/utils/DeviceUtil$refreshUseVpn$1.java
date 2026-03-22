package com.startshorts.androidplayer.utils;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.DeviceUtil$refreshUseVpn$1", f = "DeviceUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DeviceUtil$refreshUseVpn$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48158h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceUtil$refreshUseVpn$1(c<? super DeviceUtil$refreshUseVpn$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DeviceUtil$refreshUseVpn$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DeviceUtil$refreshUseVpn$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean h02;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48158h == 0) {
            f.b(obj);
            ud.a aVar = ud.a.f68411a;
            h02 = DeviceUtil.f48146a.h0();
            aVar.T0(h02);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
