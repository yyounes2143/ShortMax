package com.startshorts.androidplayer.ui.activity;

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
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1 extends SuspendLambda implements Function2<g0, c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44893h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44894i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1(MainActivity mainActivity, c<? super MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1> cVar) {
        super(2, cVar);
        this.f44894i = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1(this.f44894i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Boolean> cVar) {
        return ((MainActivity$handleJumpPage$1$handleNotificationNavigatorCache$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean n02;
        a.f();
        if (this.f44893h == 0) {
            f.b(obj);
            n02 = this.f44894i.n0();
            return kotlin.coroutines.jvm.internal.a.a(n02);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
