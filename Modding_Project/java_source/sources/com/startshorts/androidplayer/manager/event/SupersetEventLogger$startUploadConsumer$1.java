package com.startshorts.androidplayer.manager.event;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SupersetEventLogger.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger$startUploadConsumer$1", f = "SupersetEventLogger.kt", l = {145, 148, 149, 150}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class SupersetEventLogger$startUploadConsumer$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42530h;

    /* renamed from: i  reason: collision with root package name */
    int f42531i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SupersetEventLogger f42532j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupersetEventLogger$startUploadConsumer$1(SupersetEventLogger supersetEventLogger, c<? super SupersetEventLogger$startUploadConsumer$1> cVar) {
        super(2, cVar);
        this.f42532j = supersetEventLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SupersetEventLogger$startUploadConsumer$1(this.f42532j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SupersetEventLogger$startUploadConsumer$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007e -> B:44:0x00cd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0095 -> B:44:0x00cd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00a8 -> B:44:0x00cd). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00b1 -> B:44:0x00cd). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.f42531i
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L3a
            if (r1 == r5) goto L32
            if (r1 == r4) goto L2d
            if (r1 == r3) goto L28
            if (r1 != r2) goto L20
            java.lang.Object r1 = r10.f42530h
            jt.f r1 = (jt.f) r1
        L18:
            kotlin.f.b(r11)     // Catch: java.lang.Throwable -> L1d
            goto Lcd
        L1d:
            r11 = move-exception
            goto Lb1
        L20:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L28:
            java.lang.Object r1 = r10.f42530h
            jt.f r1 = (jt.f) r1
            goto L18
        L2d:
            java.lang.Object r1 = r10.f42530h
            jt.f r1 = (jt.f) r1
            goto L18
        L32:
            java.lang.Object r1 = r10.f42530h
            jt.f r1 = (jt.f) r1
            kotlin.f.b(r11)
            goto L55
        L3a:
            kotlin.f.b(r11)
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r11 = r10.f42532j
            jt.d r11 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.j(r11)
            jt.f r11 = r11.iterator()
        L47:
            r10.f42530h = r11
            r10.f42531i = r5
            java.lang.Object r1 = r11.a(r10)
            if (r1 != r0) goto L52
            return r0
        L52:
            r9 = r1
            r1 = r11
            r11 = r9
        L55:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto Ld0
            java.lang.Object r11 = r1.next()
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b r11 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger.b) r11
            boolean r6 = r11 instanceof com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.a     // Catch: java.lang.Throwable -> L1d
            if (r6 == 0) goto L81
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r6 = r10.f42532j     // Catch: java.lang.Throwable -> L1d
            r7 = r11
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$a r7 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.a) r7     // Catch: java.lang.Throwable -> L1d
            boolean r7 = r7.a()     // Catch: java.lang.Throwable -> L1d
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$a r11 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.a) r11     // Catch: java.lang.Throwable -> L1d
            java.lang.String r11 = r11.b()     // Catch: java.lang.Throwable -> L1d
            r10.f42530h = r1     // Catch: java.lang.Throwable -> L1d
            r10.f42531i = r4     // Catch: java.lang.Throwable -> L1d
            java.lang.Object r11 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.l(r6, r7, r11, r10)     // Catch: java.lang.Throwable -> L1d
            if (r11 != r0) goto Lcd
            return r0
        L81:
            boolean r6 = r11 instanceof com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.C0623b     // Catch: java.lang.Throwable -> L1d
            if (r6 == 0) goto L98
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r6 = r10.f42532j     // Catch: java.lang.Throwable -> L1d
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$b r11 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.C0623b) r11     // Catch: java.lang.Throwable -> L1d
            java.util.List r11 = r11.a()     // Catch: java.lang.Throwable -> L1d
            r10.f42530h = r1     // Catch: java.lang.Throwable -> L1d
            r10.f42531i = r3     // Catch: java.lang.Throwable -> L1d
            java.lang.Object r11 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.m(r6, r11, r10)     // Catch: java.lang.Throwable -> L1d
            if (r11 != r0) goto Lcd
            return r0
        L98:
            boolean r6 = r11 instanceof com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.c     // Catch: java.lang.Throwable -> L1d
            if (r6 == 0) goto Lab
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r6 = r10.f42532j     // Catch: java.lang.Throwable -> L1d
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$c r11 = (com.startshorts.androidplayer.manager.event.SupersetEventLogger.b.c) r11     // Catch: java.lang.Throwable -> L1d
            r10.f42530h = r1     // Catch: java.lang.Throwable -> L1d
            r10.f42531i = r2     // Catch: java.lang.Throwable -> L1d
            java.lang.Object r11 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.n(r6, r11, r10)     // Catch: java.lang.Throwable -> L1d
            if (r11 != r0) goto Lcd
            return r0
        Lab:
            kotlin.NoWhenBranchMatchedException r11 = new kotlin.NoWhenBranchMatchedException     // Catch: java.lang.Throwable -> L1d
            r11.<init>()     // Catch: java.lang.Throwable -> L1d
            throw r11     // Catch: java.lang.Throwable -> L1d
        Lb1:
            com.startshorts.androidplayer.log.Logger r6 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Error processing upload intent: "
            r7.append(r8)
            java.lang.String r11 = r11.getMessage()
            r7.append(r11)
            java.lang.String r11 = r7.toString()
            java.lang.String r7 = "SupersetEventLogger"
            r6.e(r7, r11)
        Lcd:
            r11 = r1
            goto L47
        Ld0:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.event.SupersetEventLogger$startUploadConsumer$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
