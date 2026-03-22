package com.startshorts.androidplayer.utils;

import com.jiuzhou.cdn.CdnHelper;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceHandler.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.ResourceHandler$updateCdn$1", f = "ResourceHandler.kt", l = {87}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ResourceHandler$updateCdn$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48173h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f48174i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceHandler$updateCdn$1(boolean z10, c<? super ResourceHandler$updateCdn$1> cVar) {
        super(2, cVar);
        this.f48174i = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ResourceHandler$updateCdn$1(this.f48174i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ResourceHandler$updateCdn$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48173h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CdnHelper cdnHelper = CdnHelper.f25532a;
            boolean z10 = this.f48174i;
            this.f48173h = 1;
            if (cdnHelper.u(z10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
