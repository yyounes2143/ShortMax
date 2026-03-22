package androidx.room;

import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.room.CoroutinesRoom;
import androidx.room.coroutines.FlowUtil;
import androidx.sqlite.SQLiteConnection;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutinesRoom.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class CoroutinesRoom {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: CoroutinesRoom.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutinesRoom.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesRoom.android.kt\nandroidx/room/CoroutinesRoom$Companion\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,93:1\n318#2,11:94\n*S KotlinDebug\n*F\n+ 1 CoroutinesRoom.android.kt\nandroidx/room/CoroutinesRoom$Companion\n*L\n65#1:94,11\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Object createFlow$lambda$1(Callable callable, SQLiteConnection it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return callable.call();
        }

        @ms.c
        @NotNull
        public final <R> kt.b<R> createFlow(@NotNull RoomDatabase db2, boolean z10, @NotNull String[] tableNames, @NotNull final Callable<R> callable) {
            Intrinsics.checkNotNullParameter(db2, "db");
            Intrinsics.checkNotNullParameter(tableNames, "tableNames");
            Intrinsics.checkNotNullParameter(callable, "callable");
            return FlowUtil.createFlow(db2, z10, tableNames, new Function1() { // from class: androidx.room.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Object createFlow$lambda$1;
                    createFlow$lambda$1 = CoroutinesRoom.Companion.createFlow$lambda$1(callable, (SQLiteConnection) obj);
                    return createFlow$lambda$1;
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006e A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x006f A[PHI: r9 
          PHI: (r9v8 java.lang.Object) = (r9v7 java.lang.Object), (r9v1 java.lang.Object) binds: [B:26:0x006c, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
        @ms.c
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final <R> java.lang.Object execute(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r6, boolean r7, @org.jetbrains.annotations.NotNull java.util.concurrent.Callable<R> r8, @org.jetbrains.annotations.NotNull rs.c<? super R> r9) {
            /*
                r5 = this;
                boolean r0 = r9 instanceof androidx.room.CoroutinesRoom$Companion$execute$1
                if (r0 == 0) goto L13
                r0 = r9
                androidx.room.CoroutinesRoom$Companion$execute$1 r0 = (androidx.room.CoroutinesRoom$Companion$execute$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.room.CoroutinesRoom$Companion$execute$1 r0 = new androidx.room.CoroutinesRoom$Companion$execute$1
                r0.<init>(r5, r9)
            L18:
                java.lang.Object r9 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L3d
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.f.b(r9)
                goto L6f
            L2c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L34:
                java.lang.Object r6 = r0.L$0
                r8 = r6
                java.util.concurrent.Callable r8 = (java.util.concurrent.Callable) r8
                kotlin.f.b(r9)
                goto L5c
            L3d:
                kotlin.f.b(r9)
                boolean r9 = r6.isOpenInternal$room_runtime()
                if (r9 == 0) goto L51
                boolean r9 = r6.inTransaction()
                if (r9 == 0) goto L51
                java.lang.Object r6 = r8.call()
                return r6
            L51:
                r0.L$0 = r8
                r0.label = r4
                java.lang.Object r9 = androidx.room.util.DBUtil.getCoroutineContext(r6, r7, r0)
                if (r9 != r1) goto L5c
                return r1
            L5c:
                kotlin.coroutines.CoroutineContext r9 = (kotlin.coroutines.CoroutineContext) r9
                androidx.room.CoroutinesRoom$Companion$execute$2 r6 = new androidx.room.CoroutinesRoom$Companion$execute$2
                r7 = 0
                r6.<init>(r8, r7)
                r0.L$0 = r7
                r0.label = r3
                java.lang.Object r9 = gt.e.g(r9, r6, r0)
                if (r9 != r1) goto L6f
                return r1
            L6f:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom.Companion.execute(androidx.room.RoomDatabase, boolean, java.util.concurrent.Callable, rs.c):java.lang.Object");
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00cc A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00cd A[PHI: r1 
          PHI: (r1v7 java.lang.Object) = (r1v6 java.lang.Object), (r1v1 java.lang.Object) binds: [B:28:0x00ca, B:12:0x0030] A[DONT_GENERATE, DONT_INLINE], RETURN] */
        @ms.c
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final <R> java.lang.Object execute(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r17, boolean r18, @org.jetbrains.annotations.Nullable android.os.CancellationSignal r19, @org.jetbrains.annotations.NotNull java.util.concurrent.Callable<R> r20, @org.jetbrains.annotations.NotNull rs.c<? super R> r21) {
            /*
                r16 = this;
                r0 = r17
                r1 = r21
                boolean r2 = r1 instanceof androidx.room.CoroutinesRoom$Companion$execute$3
                if (r2 == 0) goto L19
                r2 = r1
                androidx.room.CoroutinesRoom$Companion$execute$3 r2 = (androidx.room.CoroutinesRoom$Companion$execute$3) r2
                int r3 = r2.label
                r4 = -2147483648(0xffffffff80000000, float:-0.0)
                r5 = r3 & r4
                if (r5 == 0) goto L19
                int r3 = r3 - r4
                r2.label = r3
                r3 = r16
                goto L20
            L19:
                androidx.room.CoroutinesRoom$Companion$execute$3 r2 = new androidx.room.CoroutinesRoom$Companion$execute$3
                r3 = r16
                r2.<init>(r3, r1)
            L20:
                java.lang.Object r1 = r2.result
                java.lang.Object r4 = kotlin.coroutines.intrinsics.a.f()
                int r5 = r2.label
                r6 = 2
                r7 = 1
                if (r5 == 0) goto L62
                if (r5 == r7) goto L4d
                if (r5 != r6) goto L45
                java.lang.Object r0 = r2.L$3
                kotlin.coroutines.CoroutineContext r0 = (kotlin.coroutines.CoroutineContext) r0
                java.lang.Object r0 = r2.L$2
                java.util.concurrent.Callable r0 = (java.util.concurrent.Callable) r0
                java.lang.Object r0 = r2.L$1
                android.os.CancellationSignal r0 = (android.os.CancellationSignal) r0
                java.lang.Object r0 = r2.L$0
                androidx.room.RoomDatabase r0 = (androidx.room.RoomDatabase) r0
                kotlin.f.b(r1)
                goto Lcd
            L45:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
                r0.<init>(r1)
                throw r0
            L4d:
                java.lang.Object r0 = r2.L$2
                java.util.concurrent.Callable r0 = (java.util.concurrent.Callable) r0
                java.lang.Object r5 = r2.L$1
                android.os.CancellationSignal r5 = (android.os.CancellationSignal) r5
                java.lang.Object r8 = r2.L$0
                androidx.room.RoomDatabase r8 = (androidx.room.RoomDatabase) r8
                kotlin.f.b(r1)
                r15 = r5
                r5 = r0
                r0 = r8
                r8 = r1
                r1 = r15
                goto L8b
            L62:
                kotlin.f.b(r1)
                boolean r1 = r17.isOpenInternal$room_runtime()
                if (r1 == 0) goto L76
                boolean r1 = r17.inTransaction()
                if (r1 == 0) goto L76
                java.lang.Object r0 = r20.call()
                return r0
            L76:
                r2.L$0 = r0
                r1 = r19
                r2.L$1 = r1
                r5 = r20
                r2.L$2 = r5
                r2.label = r7
                r8 = r18
                java.lang.Object r8 = androidx.room.util.DBUtil.getCoroutineContext(r0, r8, r2)
                if (r8 != r4) goto L8b
                return r4
            L8b:
                r10 = r8
                kotlin.coroutines.CoroutineContext r10 = (kotlin.coroutines.CoroutineContext) r10
                r2.L$0 = r0
                r2.L$1 = r1
                r2.L$2 = r5
                r2.L$3 = r10
                r2.label = r6
                kotlinx.coroutines.e r6 = new kotlinx.coroutines.e
                rs.c r8 = kotlin.coroutines.intrinsics.a.c(r2)
                r6.<init>(r8, r7)
                r6.H()
                gt.g0 r9 = r0.getCoroutineScope()
                androidx.room.CoroutinesRoom$Companion$execute$4$job$1 r12 = new androidx.room.CoroutinesRoom$Companion$execute$4$job$1
                r0 = 0
                r12.<init>(r5, r6, r0)
                r13 = 2
                r14 = 0
                r11 = 0
                kotlinx.coroutines.r r0 = gt.e.d(r9, r10, r11, r12, r13, r14)
                androidx.room.CoroutinesRoom$Companion$execute$4$1 r5 = new androidx.room.CoroutinesRoom$Companion$execute$4$1
                r5.<init>()
                r6.u(r5)
                java.lang.Object r1 = r6.B()
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                if (r1 != r0) goto Lca
                kotlin.coroutines.jvm.internal.f.c(r2)
            Lca:
                if (r1 != r4) goto Lcd
                return r4
            Lcd:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom.Companion.execute(androidx.room.RoomDatabase, boolean, android.os.CancellationSignal, java.util.concurrent.Callable, rs.c):java.lang.Object");
        }
    }

    private CoroutinesRoom() {
    }

    @ms.c
    @NotNull
    public static final <R> kt.b<R> createFlow(@NotNull RoomDatabase roomDatabase, boolean z10, @NotNull String[] strArr, @NotNull Callable<R> callable) {
        return Companion.createFlow(roomDatabase, z10, strArr, callable);
    }

    @ms.c
    @Nullable
    public static final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z10, @Nullable CancellationSignal cancellationSignal, @NotNull Callable<R> callable, @NotNull rs.c<? super R> cVar) {
        return Companion.execute(roomDatabase, z10, cancellationSignal, callable, cVar);
    }

    @ms.c
    @Nullable
    public static final <R> Object execute(@NotNull RoomDatabase roomDatabase, boolean z10, @NotNull Callable<R> callable, @NotNull rs.c<? super R> cVar) {
        return Companion.execute(roomDatabase, z10, callable, cVar);
    }
}
