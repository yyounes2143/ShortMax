package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo$fetchImmersionBackShortsTitle$1", f = "ImmersionRepo.kt", l = {240}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRepo$fetchImmersionBackShortsTitle$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44132h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmersionRepo$fetchImmersionBackShortsTitle$1(c<? super ImmersionRepo$fetchImmersionBackShortsTitle$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionRepo$fetchImmersionBackShortsTitle$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionRepo$fetchImmersionBackShortsTitle$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ImmersionRemoteDS l10;
        Object e10;
        a k10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44132h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            l10 = ImmersionRepo.f44129a.l();
            this.f44132h = 1;
            e10 = l10.e(this);
            if (e10 == f10) {
                return f10;
            }
        }
        if (Result.j(e10)) {
            ImmersionBackConfig immersionBackConfig = (ImmersionBackConfig) e10;
            ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
            k10 = immersionRepo.k();
            k10.m((immersionBackConfig == null || (r2 = immersionBackConfig.getPopupTitle()) == null) ? "" : "");
            immersionRepo.z(immersionBackConfig);
        }
        return Unit.f60915a;
    }
}
