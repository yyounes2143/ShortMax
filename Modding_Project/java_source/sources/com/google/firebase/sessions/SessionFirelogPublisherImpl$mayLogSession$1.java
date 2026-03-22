package com.google.firebase.sessions;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: SessionFirelogPublisher.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1", f = "SessionFirelogPublisher.kt", l = {70, 71, 77}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class SessionFirelogPublisherImpl$mayLogSession$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f21512h;

    /* renamed from: i  reason: collision with root package name */
    Object f21513i;

    /* renamed from: j  reason: collision with root package name */
    Object f21514j;

    /* renamed from: k  reason: collision with root package name */
    Object f21515k;

    /* renamed from: l  reason: collision with root package name */
    Object f21516l;

    /* renamed from: m  reason: collision with root package name */
    Object f21517m;

    /* renamed from: n  reason: collision with root package name */
    int f21518n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ SessionFirelogPublisherImpl f21519o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ j f21520p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionFirelogPublisherImpl$mayLogSession$1(SessionFirelogPublisherImpl sessionFirelogPublisherImpl, j jVar, rs.c<? super SessionFirelogPublisherImpl$mayLogSession$1> cVar) {
        super(2, cVar);
        this.f21519o = sessionFirelogPublisherImpl;
        this.f21520p = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new SessionFirelogPublisherImpl$mayLogSession$1(this.f21519o, this.f21520p, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((SessionFirelogPublisherImpl$mayLogSession$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0096  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.f21518n
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L45
            if (r1 == r4) goto L41
            if (r1 == r3) goto L3d
            if (r1 != r2) goto L35
            java.lang.Object r0 = r10.f21517m
            com.google.firebase.sessions.settings.SessionsSettings r0 = (com.google.firebase.sessions.settings.SessionsSettings) r0
            java.lang.Object r1 = r10.f21516l
            com.google.firebase.sessions.j r1 = (com.google.firebase.sessions.j) r1
            java.lang.Object r2 = r10.f21515k
            com.google.firebase.f r2 = (com.google.firebase.f) r2
            java.lang.Object r3 = r10.f21514j
            j9.c0 r3 = (j9.c0) r3
            java.lang.Object r4 = r10.f21513i
            com.google.firebase.sessions.SessionFirelogPublisherImpl r4 = (com.google.firebase.sessions.SessionFirelogPublisherImpl) r4
            java.lang.Object r5 = r10.f21512h
            com.google.firebase.sessions.InstallationId r5 = (com.google.firebase.sessions.InstallationId) r5
            kotlin.f.b(r11)
            r7 = r4
            r8 = r3
            r3 = r0
            r0 = r8
            r9 = r2
            r2 = r1
            r1 = r9
            goto L9d
        L35:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3d:
            kotlin.f.b(r11)
            goto L6c
        L41:
            kotlin.f.b(r11)
            goto L53
        L45:
            kotlin.f.b(r11)
            com.google.firebase.sessions.SessionFirelogPublisherImpl r11 = r10.f21519o
            r10.f21518n = r4
            java.lang.Object r11 = com.google.firebase.sessions.SessionFirelogPublisherImpl.f(r11, r10)
            if (r11 != r0) goto L53
            return r0
        L53:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto Lb0
            com.google.firebase.sessions.InstallationId$Companion r11 = com.google.firebase.sessions.InstallationId.f21497c
            com.google.firebase.sessions.SessionFirelogPublisherImpl r1 = r10.f21519o
            x8.e r1 = com.google.firebase.sessions.SessionFirelogPublisherImpl.d(r1)
            r10.f21518n = r3
            java.lang.Object r11 = r11.a(r1, r10)
            if (r11 != r0) goto L6c
            return r0
        L6c:
            r5 = r11
            com.google.firebase.sessions.InstallationId r5 = (com.google.firebase.sessions.InstallationId) r5
            com.google.firebase.sessions.SessionFirelogPublisherImpl r4 = r10.f21519o
            j9.c0 r3 = j9.c0.f60289a
            com.google.firebase.f r11 = com.google.firebase.sessions.SessionFirelogPublisherImpl.c(r4)
            com.google.firebase.sessions.j r1 = r10.f21520p
            com.google.firebase.sessions.SessionFirelogPublisherImpl r6 = r10.f21519o
            com.google.firebase.sessions.settings.SessionsSettings r6 = com.google.firebase.sessions.SessionFirelogPublisherImpl.e(r6)
            com.google.firebase.sessions.api.FirebaseSessionsDependencies r7 = com.google.firebase.sessions.api.FirebaseSessionsDependencies.f21590a
            r10.f21512h = r5
            r10.f21513i = r4
            r10.f21514j = r3
            r10.f21515k = r11
            r10.f21516l = r1
            r10.f21517m = r6
            r10.f21518n = r2
            java.lang.Object r2 = r7.c(r10)
            if (r2 != r0) goto L96
            return r0
        L96:
            r0 = r3
            r7 = r4
            r3 = r6
            r8 = r1
            r1 = r11
            r11 = r2
            r2 = r8
        L9d:
            r4 = r11
            java.util.Map r4 = (java.util.Map) r4
            java.lang.String r11 = r5.b()
            java.lang.String r6 = r5.a()
            r5 = r11
            j9.b0 r11 = r0.a(r1, r2, r3, r4, r5, r6)
            com.google.firebase.sessions.SessionFirelogPublisherImpl.b(r7, r11)
        Lb0:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
