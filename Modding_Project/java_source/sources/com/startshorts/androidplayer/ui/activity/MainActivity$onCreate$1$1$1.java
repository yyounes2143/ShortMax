package com.startshorts.androidplayer.ui.activity;

import fk.c0;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$onCreate$1$1$1", f = "MainActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$onCreate$1$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44895h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<String> f44896i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$1$1$1(List<String> list, c<? super MainActivity$onCreate$1$1$1> cVar) {
        super(2, cVar);
        this.f44896i = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$onCreate$1$1$1(this.f44896i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$onCreate$1$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44895h == 0) {
            f.b(obj);
            c0.f51709a.g(u.f51776a.b(), this.f44896i);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
