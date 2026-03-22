package com.startshorts.androidplayer.manager.player.cdn;

import com.jiuzhou.cdn.model.request.CdnEvent;
import com.jiuzhou.cdn.repo.CdnRepo;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: CdnEventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.player.cdn.CdnEventManager$logPlayEnd$2", f = "CdnEventManager.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class CdnEventManager$logPlayEnd$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42686h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<CdnEvent> f42687i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CdnEventManager$logPlayEnd$2(List<CdnEvent> list, c<? super CdnEventManager$logPlayEnd$2> cVar) {
        super(2, cVar);
        this.f42687i = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CdnEventManager$logPlayEnd$2(this.f42687i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CdnEventManager$logPlayEnd$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42686h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CdnRepo cdnRepo = CdnRepo.f25579a;
            List<CdnEvent> list = this.f42687i;
            this.f42686h = 1;
            if (cdnRepo.f(list, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
