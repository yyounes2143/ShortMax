package com.startshorts.androidplayer.ui.activity.download.data;

import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import fk.u;
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
import wh.i;
/* compiled from: DownloadDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.DownloadDB$getAllTasks$2", f = "DownloadDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DownloadDB$getAllTasks$2 extends SuspendLambda implements Function2<g0, c<? super List<DownloadTaskInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45215h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadDB$getAllTasks$2(c<? super DownloadDB$getAllTasks$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DownloadDB$getAllTasks$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super List<DownloadTaskInfo>> cVar) {
        return ((DownloadDB$getAllTasks$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45215h == 0) {
            f.b(obj);
            return i.f69880a.a(u.f51776a.b()).e().d();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
