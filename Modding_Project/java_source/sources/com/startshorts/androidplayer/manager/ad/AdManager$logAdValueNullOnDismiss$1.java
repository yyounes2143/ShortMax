package com.startshorts.androidplayer.manager.ad;

import android.os.Bundle;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.ad.AdManager$logAdValueNullOnDismiss$1", f = "AdManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdManager$logAdValueNullOnDismiss$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41680h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ca.d f41681i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f41682j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdManager$logAdValueNullOnDismiss$1(ca.d dVar, String str, c<? super AdManager$logAdValueNullOnDismiss$1> cVar) {
        super(2, cVar);
        this.f41681i = dVar;
        this.f41682j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdManager$logAdValueNullOnDismiss$1(this.f41681i, this.f41682j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AdManager$logAdValueNullOnDismiss$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f41680h == 0) {
            f.b(obj);
            boolean f02 = DeviceUtil.f48146a.f0();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            ca.d dVar = this.f41681i;
            String str = this.f41682j;
            bundle.putString("type", jk.a.a(dVar.h()));
            bundle.putString("scene", str);
            bundle.putString("ad_unit_id", dVar.c());
            bundle.putString("ad_unit_name", dVar.j());
            bundle.putString("network_enable", String.valueOf(f02));
            bundle.putString("ad_platform", jk.a.b(dVar));
            bundle.putString("ad_mediation_name", dVar.f().a());
            bundle.putString("ad_placement", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_value_null_on_dismiss", bundle, 0L, 4, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
