package com.startshorts.androidplayer.ui.activity.download.data;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
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
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.DownloadDB$insert$1", f = "DownloadDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadDB$insert$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45216h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DownloadTaskInfo f45217i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadDB$insert$1(DownloadTaskInfo downloadTaskInfo, c<? super DownloadDB$insert$1> cVar) {
        super(2, cVar);
        this.f45217i = downloadTaskInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DownloadDB$insert$1(this.f45217i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DownloadDB$insert$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45216h == 0) {
            f.b(obj);
            i.f69880a.a(u.f51776a.b()).e().c(this.f45217i);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
