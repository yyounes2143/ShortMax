package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GlobalSnapshotManager.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ jt.d<Unit> $channel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalSnapshotManager$ensureStarted$1(jt.d<Unit> dVar, rs.c<? super GlobalSnapshotManager$ensureStarted$1> cVar) {
        super(2, cVar);
        this.$channel = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new GlobalSnapshotManager$ensureStarted$1(this.$channel, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull gt.g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((GlobalSnapshotManager$ensureStarted$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #1 {all -> 0x0017, blocks: (B:6:0x0013, B:17:0x0038, B:19:0x0040, B:14:0x002b, B:13:0x0026), top: B:29:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0035 -> B:17:0x0038). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L21
            if (r1 != r2) goto L19
            java.lang.Object r1 = r4.L$1
            jt.f r1 = (jt.f) r1
            java.lang.Object r3 = r4.L$0
            jt.i r3 = (jt.i) r3
            kotlin.f.b(r5)     // Catch: java.lang.Throwable -> L17
            goto L38
        L17:
            r5 = move-exception
            goto L53
        L19:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L21:
            kotlin.f.b(r5)
            jt.d<kotlin.Unit> r3 = r4.$channel
            jt.f r5 = r3.iterator()     // Catch: java.lang.Throwable -> L17
            r1 = r5
        L2b:
            r4.L$0 = r3     // Catch: java.lang.Throwable -> L17
            r4.L$1 = r1     // Catch: java.lang.Throwable -> L17
            r4.label = r2     // Catch: java.lang.Throwable -> L17
            java.lang.Object r5 = r1.a(r4)     // Catch: java.lang.Throwable -> L17
            if (r5 != r0) goto L38
            return r0
        L38:
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L17
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L17
            if (r5 == 0) goto L4c
            java.lang.Object r5 = r1.next()     // Catch: java.lang.Throwable -> L17
            kotlin.Unit r5 = (kotlin.Unit) r5     // Catch: java.lang.Throwable -> L17
            androidx.compose.runtime.snapshots.Snapshot$Companion r5 = androidx.compose.runtime.snapshots.Snapshot.Companion     // Catch: java.lang.Throwable -> L17
            r5.sendApplyNotifications()     // Catch: java.lang.Throwable -> L17
            goto L2b
        L4c:
            r5 = 0
            kotlinx.coroutines.channels.c.a(r3, r5)
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        L53:
            throw r5     // Catch: java.lang.Throwable -> L54
        L54:
            r0 = move-exception
            kotlinx.coroutines.channels.c.a(r3, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
