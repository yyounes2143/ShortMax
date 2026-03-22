package com.startshorts.androidplayer.repo.config.appConfig;

import gt.c0;
import gt.e;
import gt.g0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfig.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$init$1", f = "RemoteConfig.kt", l = {37}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RemoteConfig$init$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43841h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43842i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteConfig.kt */
    @Metadata
    @d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$init$1$1", f = "RemoteConfig.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$init$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f43843h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ RemoteConfig f43844i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RemoteConfig remoteConfig, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f43844i = remoteConfig;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(this.f43844i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object i10;
            Object f10 = a.f();
            int i11 = this.f43843h;
            if (i11 != 0) {
                if (i11 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                RemoteConfig remoteConfig = this.f43844i;
                this.f43843h = 1;
                i10 = remoteConfig.i(this);
                if (i10 == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$init$1(RemoteConfig remoteConfig, c<? super RemoteConfig$init$1> cVar) {
        super(2, cVar);
        this.f43842i = remoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfig$init$1(this.f43842i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfig$init$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43841h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            c0 b10 = q0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f43842i, null);
            this.f43841h = 1;
            if (e.g(b10, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
