package io.ktor.utils.io.internal;

import gt.s;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AwaitingSlot.kt */
@Metadata
/* loaded from: classes8.dex */
public final class AwaitingSlot {

    /* renamed from: a  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f59516a = AtomicReferenceFieldUpdater.newUpdater(AwaitingSlot.class, Object.class, "suspension");
    @NotNull
    private volatile /* synthetic */ Object suspension = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(kotlin.jvm.functions.Function0<java.lang.Boolean> r7, rs.c<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.internal.AwaitingSlot$trySuspend$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.internal.AwaitingSlot$trySuspend$1 r0 = (io.ktor.utils.io.internal.AwaitingSlot$trySuspend$1) r0
            int r1 = r0.f59524k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59524k = r1
            goto L18
        L13:
            io.ktor.utils.io.internal.AwaitingSlot$trySuspend$1 r0 = new io.ktor.utils.io.internal.AwaitingSlot$trySuspend$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f59522i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59524k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            int r7 = r0.f59521h
            kotlin.f.b(r8)
            goto L5e
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L34:
            kotlin.f.b(r8)
            r8 = 0
            gt.s r2 = kotlinx.coroutines.t.b(r8, r4, r8)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = io.ktor.utils.io.internal.AwaitingSlot.f59516a
            boolean r8 = androidx.concurrent.futures.a.a(r5, r6, r8, r2)
            if (r8 == 0) goto L5d
            java.lang.Object r7 = r7.invoke()
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L5d
            r0.f59521h = r4
            r0.f59524k = r4
            java.lang.Object r7 = r2.join(r0)
            if (r7 != r1) goto L5b
            return r1
        L5b:
            r7 = r4
            goto L5e
        L5d:
            r7 = r3
        L5e:
            if (r7 == 0) goto L61
            r3 = r4
        L61:
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.internal.AwaitingSlot.e(kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }

    public final void b(@Nullable Throwable th2) {
        s sVar = (s) f59516a.getAndSet(this, null);
        if (sVar == null) {
            return;
        }
        if (th2 != null) {
            sVar.d(th2);
        } else {
            sVar.complete();
        }
    }

    public final void c() {
        s sVar = (s) f59516a.getAndSet(this, null);
        if (sVar != null) {
            sVar.complete();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<java.lang.Boolean> r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.io.internal.AwaitingSlot$sleep$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.utils.io.internal.AwaitingSlot$sleep$1 r0 = (io.ktor.utils.io.internal.AwaitingSlot$sleep$1) r0
            int r1 = r0.f59520k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59520k = r1
            goto L18
        L13:
            io.ktor.utils.io.internal.AwaitingSlot$sleep$1 r0 = new io.ktor.utils.io.internal.AwaitingSlot$sleep$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f59518i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59520k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f59517h
            io.ktor.utils.io.internal.AwaitingSlot r5 = (io.ktor.utils.io.internal.AwaitingSlot) r5
            kotlin.f.b(r6)
            goto L44
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            r0.f59517h = r4
            r0.f59520k = r3
            java.lang.Object r6 = r4.e(r5, r0)
            if (r6 != r1) goto L43
            return r1
        L43:
            r5 = r4
        L44:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L4f
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        L4f:
            r5.c()
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.internal.AwaitingSlot.d(kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }
}
