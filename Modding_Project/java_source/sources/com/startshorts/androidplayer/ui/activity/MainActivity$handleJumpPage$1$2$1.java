package com.startshorts.androidplayer.ui.activity;

import ce.j;
import com.startshorts.androidplayer.bean.act.ActResource;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1$2$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$handleJumpPage$1$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44890h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44891i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ActResource f44892j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$handleJumpPage$1$2$1(MainActivity mainActivity, ActResource actResource, c<? super MainActivity$handleJumpPage$1$2$1> cVar) {
        super(2, cVar);
        this.f44891i = mainActivity;
        this.f44892j = actResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$handleJumpPage$1$2$1(this.f44891i, this.f44892j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$handleJumpPage$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44890h == 0) {
            f.b(obj);
            j jVar = j.f3485a;
            j.o(jVar, this.f44891i, "bf_appopen_show", this.f44892j, null, 8, null);
            jVar.x(null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
