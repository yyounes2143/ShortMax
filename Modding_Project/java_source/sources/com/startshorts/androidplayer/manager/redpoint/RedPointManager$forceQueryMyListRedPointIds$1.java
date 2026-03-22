package com.startshorts.androidplayer.manager.redpoint;

import com.startshorts.androidplayer.bean.eventbus.RefreshMyListRedPointEvent;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RedPointManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.redpoint.RedPointManager$forceQueryMyListRedPointIds$1", f = "RedPointManager.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class RedPointManager$forceQueryMyListRedPointIds$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42938h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RedPointManager$forceQueryMyListRedPointIds$1(c<? super RedPointManager$forceQueryMyListRedPointIds$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RedPointManager$forceQueryMyListRedPointIds$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RedPointManager$forceQueryMyListRedPointIds$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Object f10 = a.f();
        int i10 = this.f42938h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RedPointManager redPointManager = RedPointManager.f42937a;
            this.f42938h = 1;
            e10 = redPointManager.e(this);
            if (e10 == f10) {
                return f10;
            }
        }
        List<Integer> e12 = b.f68412a.e1();
        if (e12 == null) {
            e12 = new ArrayList<>();
        }
        au.c.d().l(new RefreshMyListRedPointEvent(e12));
        Logger logger = Logger.f41511a;
        logger.h("RedPointManager", "forceQueryMyListRedPointIds:" + e12);
        return Unit.f60915a;
    }
}
