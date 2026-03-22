package com.startshorts.androidplayer.manager.attribution.provider;

import fk.j;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* compiled from: ClipboardProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider$queryInternal$2$clipboardInfo$1", f = "ClipboardProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class ClipboardProvider$queryInternal$2$clipboardInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super String>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42024h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClipboardProvider$queryInternal$2$clipboardInfo$1(rs.c<? super ClipboardProvider$queryInternal$2$clipboardInfo$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ClipboardProvider$queryInternal$2$clipboardInfo$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super String> cVar) {
        return ((ClipboardProvider$queryInternal$2$clipboardInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42024h == 0) {
            f.b(obj);
            return j.f51739a.c();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
