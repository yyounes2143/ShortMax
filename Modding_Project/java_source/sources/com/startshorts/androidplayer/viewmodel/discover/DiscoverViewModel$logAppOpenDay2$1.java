package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.g0;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$logAppOpenDay2$1", f = "DiscoverViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverViewModel$logAppOpenDay2$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48483h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DiscoverViewModel$logAppOpenDay2$1(rs.c<? super DiscoverViewModel$logAppOpenDay2$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverViewModel$logAppOpenDay2$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverViewModel$logAppOpenDay2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48483h == 0) {
            kotlin.f.b(obj);
            ud.b bVar = ud.b.f68412a;
            long l10 = TimeUtil.l(TimeUtil.f48175a, new Date(bVar.M0()), null, 2, null);
            long K = DeviceUtil.f48146a.K();
            if (K >= l10 && K <= l10 + 86400000) {
                bVar.R3(true);
                EventManager.s0(EventManager.f42463a, "app_open_day2", null, 0L, 6, null);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
