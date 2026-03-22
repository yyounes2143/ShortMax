package com.google.firebase.sessions;

import android.util.Log;
import androidx.datastore.core.DataStore;
import gt.g0;
import j9.m0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: SharedSessionRepository.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1", f = "SharedSessionRepository.kt", l = {112}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class SharedSessionRepositoryImpl$appBackground$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21543h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SharedSessionRepositoryImpl f21544i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedSessionRepository.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1", f = "SharedSessionRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<i, rs.c<? super i>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f21545h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f21546i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ SharedSessionRepositoryImpl f21547j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f21547j = sharedSessionRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f21547j, cVar);
            anonymousClass1.f21546i = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(i iVar, rs.c<? super i> cVar) {
            return ((AnonymousClass1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            m0 m0Var;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f21545h == 0) {
                kotlin.f.b(obj);
                i iVar = (i) this.f21546i;
                m0Var = this.f21547j.f21528e;
                return i.c(iVar, null, m0Var.a(), null, 5, null);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$appBackground$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, rs.c<? super SharedSessionRepositoryImpl$appBackground$1> cVar) {
        super(2, cVar);
        this.f21544i = sharedSessionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SharedSessionRepositoryImpl$appBackground$1(this.f21544i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SharedSessionRepositoryImpl$appBackground$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        m0 m0Var;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f21543h;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                DataStore dataStore = this.f21544i.f21529f;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f21544i, null);
                this.f21543h = 1;
                if (dataStore.updateData(anonymousClass1, this) == f10) {
                    return f10;
                }
            }
        } catch (Exception e10) {
            Log.d("FirebaseSessions", "App backgrounded, failed to update data. Message: " + e10.getMessage());
            SharedSessionRepositoryImpl sharedSessionRepositoryImpl = this.f21544i;
            i m10 = sharedSessionRepositoryImpl.m();
            m0Var = this.f21544i.f21528e;
            sharedSessionRepositoryImpl.r(i.c(m10, null, m0Var.a(), null, 5, null));
        }
        return Unit.f60915a;
    }
}
