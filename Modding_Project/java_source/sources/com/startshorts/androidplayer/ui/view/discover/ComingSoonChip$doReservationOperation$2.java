package com.startshorts.androidplayer.ui.view.discover;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComingSoonChip.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2", f = "ComingSoonChip.kt", l = {108, 111, 117, 120}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ComingSoonChip$doReservationOperation$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f47220h;

    /* renamed from: i  reason: collision with root package name */
    int f47221i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f47222j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ComingSoonChip f47223k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f47224l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Function1<Boolean, Unit> f47225m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ComingSoonChip$doReservationOperation$2(boolean z10, ComingSoonChip comingSoonChip, int i10, Function1<? super Boolean, Unit> function1, c<? super ComingSoonChip$doReservationOperation$2> cVar) {
        super(2, cVar);
        this.f47222j = z10;
        this.f47223k = comingSoonChip;
        this.f47224l = i10;
        this.f47225m = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ComingSoonChip$doReservationOperation$2(this.f47222j, this.f47223k, this.f47224l, this.f47225m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ComingSoonChip$doReservationOperation$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f47221i
            r2 = 0
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L37
            if (r1 == r6) goto L2d
            if (r1 == r5) goto L28
            if (r1 == r4) goto L1e
            if (r1 != r3) goto L16
            goto L28
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
            goto L93
        L28:
            kotlin.f.b(r9)
            goto Lc3
        L2d:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
            goto L51
        L37:
            kotlin.f.b(r9)
            boolean r9 = r8.f47222j
            if (r9 == 0) goto L80
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo r9 = com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.f43745a
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip r1 = r8.f47223k
            android.content.Context r1 = r1.getContext()
            int r3 = r8.f47224l
            r8.f47221i = r6
            java.lang.Object r9 = r9.b(r1, r3, r8)
            if (r9 != r0) goto L51
            return r0
        L51:
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip r1 = r8.f47223k
            int r3 = r8.f47224l
            kotlin.jvm.functions.Function1<java.lang.Boolean, kotlin.Unit> r4 = r8.f47225m
            boolean r7 = kotlin.Result.j(r9)
            if (r7 == 0) goto Lc3
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip.E(r1, r6)
            au.c r1 = au.c.d()
            com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent r7 = new com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent
            r7.<init>(r3, r6)
            r1.l(r7)
            gt.j1 r1 = gt.q0.c()
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2$1$1 r3 = new com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2$1$1
            r3.<init>(r4, r2)
            r8.f47220h = r9
            r8.f47221i = r5
            java.lang.Object r9 = gt.e.g(r1, r3, r8)
            if (r9 != r0) goto Lc3
            return r0
        L80:
            com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo r9 = com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo.f43745a
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip r1 = r8.f47223k
            android.content.Context r1 = r1.getContext()
            int r5 = r8.f47224l
            r8.f47221i = r4
            java.lang.Object r9 = r9.c(r1, r5, r8)
            if (r9 != r0) goto L93
            return r0
        L93:
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip r1 = r8.f47223k
            int r4 = r8.f47224l
            kotlin.jvm.functions.Function1<java.lang.Boolean, kotlin.Unit> r5 = r8.f47225m
            boolean r6 = kotlin.Result.j(r9)
            if (r6 == 0) goto Lc3
            r6 = 0
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip.E(r1, r6)
            au.c r1 = au.c.d()
            com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent r7 = new com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent
            r7.<init>(r4, r6)
            r1.l(r7)
            gt.j1 r1 = gt.q0.c()
            com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2$2$1 r4 = new com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2$2$1
            r4.<init>(r5, r2)
            r8.f47220h = r9
            r8.f47221i = r3
            java.lang.Object r9 = gt.e.g(r1, r4, r8)
            if (r9 != r0) goto Lc3
            return r0
        Lc3:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
