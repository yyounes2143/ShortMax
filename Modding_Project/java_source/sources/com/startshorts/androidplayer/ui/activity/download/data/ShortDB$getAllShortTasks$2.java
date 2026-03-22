package com.startshorts.androidplayer.ui.activity.download.data;

import com.startshorts.androidplayer.bean.download.ShortTaskInfo;
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
import wh.o;
/* compiled from: ShortDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.ShortDB$getAllShortTasks$2", f = "ShortDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ShortDB$getAllShortTasks$2 extends SuspendLambda implements Function2<g0, c<? super List<ShortTaskInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45224h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShortDB$getAllShortTasks$2(c<? super ShortDB$getAllShortTasks$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ShortDB$getAllShortTasks$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super List<ShortTaskInfo>> cVar) {
        return ((ShortDB$getAllShortTasks$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45224h == 0) {
            f.b(obj);
            return o.f69891a.a(u.f51776a.b()).e().c();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
