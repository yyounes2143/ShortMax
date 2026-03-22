package com.startshorts.androidplayer.ui.activity.download.data;

import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import wh.i;
/* compiled from: DownloadDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.DownloadDB$deleteCancelData$2", f = "DownloadDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadDB$deleteCancelData$2 extends SuspendLambda implements Function2<g0, c<? super Integer>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45214h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadDB$deleteCancelData$2(c<? super DownloadDB$deleteCancelData$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DownloadDB$deleteCancelData$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Integer> cVar) {
        return ((DownloadDB$deleteCancelData$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45214h == 0) {
            f.b(obj);
            return kotlin.coroutines.jvm.internal.a.d(i.f69880a.a(u.f51776a.b()).e().e(6));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
