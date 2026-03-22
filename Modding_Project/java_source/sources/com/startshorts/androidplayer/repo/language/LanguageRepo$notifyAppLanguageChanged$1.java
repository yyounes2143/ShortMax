package com.startshorts.androidplayer.repo.language;

import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LanguageRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.language.LanguageRepo$notifyAppLanguageChanged$1", f = "LanguageRepo.kt", l = {21}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LanguageRepo$notifyAppLanguageChanged$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44184h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f44185i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageRepo$notifyAppLanguageChanged$1(Function0<Unit> function0, c<? super LanguageRepo$notifyAppLanguageChanged$1> cVar) {
        super(2, cVar);
        this.f44185i = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new LanguageRepo$notifyAppLanguageChanged$1(this.f44185i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((LanguageRepo$notifyAppLanguageChanged$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LanguageRemoteDS e10;
        Object f10 = a.f();
        int i10 = this.f44184h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            e10 = LanguageRepo.f44181a.e();
            this.f44184h = 1;
            if (e10.a(this) == f10) {
                return f10;
            }
        }
        this.f44185i.invoke();
        return Unit.f60915a;
    }
}
