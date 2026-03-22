package com.google.firebase.sessions;

import android.util.Log;
import androidx.datastore.core.DataStore;
import com.google.firebase.sessions.SharedSessionRepositoryImpl;
import gt.g0;
import j9.d0;
import j9.s;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: SharedSessionRepository.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1", f = "SharedSessionRepository.kt", l = {135, 186}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class SharedSessionRepositoryImpl$appForeground$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21548h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SharedSessionRepositoryImpl f21549i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ i f21550j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharedSessionRepository.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1", f = "SharedSessionRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<i, rs.c<? super i>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f21551h;

        /* renamed from: i  reason: collision with root package name */
        /* synthetic */ Object f21552i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ SharedSessionRepositoryImpl f21553j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.f21553j = sharedSessionRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f21553j, cVar);
            anonymousClass1.f21552i = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(i iVar, rs.c<? super i> cVar) {
            return ((AnonymousClass1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean p10;
            boolean n10;
            boolean o10;
            Map<String, h> e10;
            s sVar;
            j f10;
            d0 d0Var;
            s sVar2;
            s sVar3;
            s sVar4;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f21551h == 0) {
                kotlin.f.b(obj);
                i iVar = (i) this.f21552i;
                p10 = this.f21553j.p(iVar);
                n10 = this.f21553j.n(iVar);
                o10 = this.f21553j.o(iVar);
                if (n10) {
                    sVar4 = this.f21553j.f21530g;
                    e10 = sVar4.d();
                } else if (o10) {
                    sVar = this.f21553j.f21530g;
                    e10 = sVar.e(iVar.e());
                } else {
                    e10 = iVar.e();
                }
                if (n10) {
                    f10 = null;
                } else {
                    f10 = iVar.f();
                }
                if (!p10 && !n10) {
                    if (o10) {
                        sVar3 = this.f21553j.f21530g;
                        return i.c(iVar, null, null, sVar3.e(e10), 3, null);
                    }
                    return iVar;
                }
                j a10 = this.f21553j.f21526c.a(f10);
                d0Var = this.f21553j.f21527d;
                d0Var.a(a10);
                sVar2 = this.f21553j.f21530g;
                sVar2.f();
                return iVar.b(a10, null, e10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$appForeground$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, i iVar, rs.c<? super SharedSessionRepositoryImpl$appForeground$1> cVar) {
        super(2, cVar);
        this.f21549i = sharedSessionRepositoryImpl;
        this.f21550j = iVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SharedSessionRepositoryImpl$appForeground$1(this.f21549i, this.f21550j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SharedSessionRepositoryImpl$appForeground$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean p10;
        d0 d0Var;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f21548h;
        try {
        } catch (Exception e10) {
            Log.d("FirebaseSessions", "App foregrounded, failed to update data. Message: " + e10.getMessage());
            p10 = this.f21549i.p(this.f21550j);
            if (p10) {
                j a10 = this.f21549i.f21526c.a(this.f21550j.f());
                this.f21549i.r(i.c(this.f21550j, a10, null, null, 4, null));
                d0Var = this.f21549i.f21527d;
                d0Var.a(a10);
                SharedSessionRepositoryImpl sharedSessionRepositoryImpl = this.f21549i;
                String b10 = a10.b();
                SharedSessionRepositoryImpl.NotificationType notificationType = SharedSessionRepositoryImpl.NotificationType.FALLBACK;
                this.f21548h = 2;
                if (sharedSessionRepositoryImpl.q(b10, notificationType, this) == f10) {
                    return f10;
                }
            }
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            DataStore dataStore = this.f21549i.f21529f;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f21549i, null);
            this.f21548h = 1;
            if (dataStore.updateData(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
