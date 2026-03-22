package com.startshorts.androidplayer.repo.config.appConfig;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.ApiBuilder;
import com.startshorts.androidplayer.manager.api.base.k;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TurboLinkRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$openEvent$1", f = "TurboLinkRepo.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class TurboLinkRepo$openEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43859h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TurboLinkRepo.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$openEvent$1$1", f = "TurboLinkRepo.kt", l = {37}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo$openEvent$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43860h;

        AnonymousClass1(c<? super AnonymousClass1> cVar) {
            super(1, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = a.f();
            int i10 = this.f43860h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                k.a j10 = k.f41787a.j();
                this.f43860h = 1;
                obj = j10.Q(this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(c<? super ServerResult<Object>> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TurboLinkRepo$openEvent$1(c<? super TurboLinkRepo$openEvent$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new TurboLinkRepo$openEvent$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((TurboLinkRepo$openEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43859h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ApiBuilder n10 = new ApiBuilder().n();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
            this.f43859h = 1;
            if (n10.o(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
