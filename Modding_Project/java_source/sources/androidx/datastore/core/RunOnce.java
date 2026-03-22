package androidx.datastore.core;

import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
/* compiled from: DataStoreImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDataStoreImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/RunOnce\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,538:1\n120#2,10:539\n*S KotlinDebug\n*F\n+ 1 DataStoreImpl.kt\nandroidx/datastore/core/RunOnce\n*L\n495#1:539,10\n*E\n"})
/* loaded from: classes2.dex */
public abstract class RunOnce {
    @NotNull
    private final qt.a runMutex = d.b(false, 1, null);
    @NotNull
    private final p<Unit> didRun = r.b(null, 1, null);

    @Nullable
    public final Object awaitComplete(@NotNull c<? super Unit> cVar) {
        Object await = this.didRun.await(cVar);
        if (await == kotlin.coroutines.intrinsics.a.f()) {
            return await;
        }
        return Unit.f60915a;
    }

    @Nullable
    protected abstract Object doRun(@NotNull c<? super Unit> cVar);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #1 {all -> 0x0078, blocks: (B:28:0x006a, B:30:0x0072, B:35:0x007c), top: B:46:0x006a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007c A[Catch: all -> 0x0078, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0078, blocks: (B:28:0x006a, B:30:0x0072, B:35:0x007c), top: B:46:0x006a }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object runIfNeeded(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.datastore.core.RunOnce$runIfNeeded$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.datastore.core.RunOnce$runIfNeeded$1 r0 = (androidx.datastore.core.RunOnce$runIfNeeded$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.RunOnce$runIfNeeded$1 r0 = new androidx.datastore.core.RunOnce$runIfNeeded$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r1 = r0.L$1
            qt.a r1 = (qt.a) r1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.RunOnce r0 = (androidx.datastore.core.RunOnce) r0
            kotlin.f.b(r7)     // Catch: java.lang.Throwable -> L35
            goto L8b
        L35:
            r7 = move-exception
            goto L96
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3f:
            java.lang.Object r2 = r0.L$1
            qt.a r2 = (qt.a) r2
            java.lang.Object r4 = r0.L$0
            androidx.datastore.core.RunOnce r4 = (androidx.datastore.core.RunOnce) r4
            kotlin.f.b(r7)
            r7 = r2
            goto L6a
        L4c:
            kotlin.f.b(r7)
            gt.p<kotlin.Unit> r7 = r6.didRun
            boolean r7 = r7.isCompleted()
            if (r7 == 0) goto L5a
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L5a:
            qt.a r7 = r6.runMutex
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r2 = r7.lock(r5, r0)
            if (r2 != r1) goto L69
            return r1
        L69:
            r4 = r6
        L6a:
            gt.p<kotlin.Unit> r2 = r4.didRun     // Catch: java.lang.Throwable -> L78
            boolean r2 = r2.isCompleted()     // Catch: java.lang.Throwable -> L78
            if (r2 == 0) goto L7c
            kotlin.Unit r0 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L78
            r7.unlock(r5)
            return r0
        L78:
            r0 = move-exception
            r1 = r7
            r7 = r0
            goto L96
        L7c:
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L78
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L78
            r0.label = r3     // Catch: java.lang.Throwable -> L78
            java.lang.Object r0 = r4.doRun(r0)     // Catch: java.lang.Throwable -> L78
            if (r0 != r1) goto L89
            return r1
        L89:
            r1 = r7
            r0 = r4
        L8b:
            gt.p<kotlin.Unit> r7 = r0.didRun     // Catch: java.lang.Throwable -> L35
            kotlin.Unit r0 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L35
            r7.i(r0)     // Catch: java.lang.Throwable -> L35
            r1.unlock(r5)
            return r0
        L96:
            r1.unlock(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.RunOnce.runIfNeeded(rs.c):java.lang.Object");
    }
}
