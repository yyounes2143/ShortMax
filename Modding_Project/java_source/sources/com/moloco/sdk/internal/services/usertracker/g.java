package com.moloco.sdk.internal.services.usertracker;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nUserTrackerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserTrackerService.kt\ncom/moloco/sdk/internal/services/usertracker/UserTrackerServiceImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,42:1\n116#2,11:43\n116#2,11:54\n*S KotlinDebug\n*F\n+ 1 UserTrackerService.kt\ncom/moloco/sdk/internal/services/usertracker/UserTrackerServiceImpl\n*L\n28#1:43,11\n32#1:54,11\n*E\n"})
/* loaded from: classes6.dex */
public final class g implements e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final d f33523a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.usertracker.b f33524b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final qt.a f33525c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.usertracker.UserTrackerServiceImpl", f = "UserTrackerService.kt", l = {48, 33, 36}, m = "getIdentifier")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33526h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33527i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f33528j;

        /* renamed from: l  reason: collision with root package name */
        public int f33530l;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33528j = obj;
            this.f33530l |= Integer.MIN_VALUE;
            return g.this.c(this);
        }
    }

    public g(@NotNull d idGenerator, @NotNull com.moloco.sdk.internal.services.usertracker.b idRepository) {
        Intrinsics.checkNotNullParameter(idGenerator, "idGenerator");
        Intrinsics.checkNotNullParameter(idRepository, "idRepository");
        this.f33523a = idGenerator;
        this.f33524b = idRepository;
        this.f33525c = qt.d.b(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089 A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:21:0x004c, B:34:0x0085, B:36:0x0089), top: B:47:0x004c }] */
    @Override // com.moloco.sdk.internal.services.usertracker.e
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super java.lang.String> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.moloco.sdk.internal.services.usertracker.g.b
            if (r0 == 0) goto L13
            r0 = r9
            com.moloco.sdk.internal.services.usertracker.g$b r0 = (com.moloco.sdk.internal.services.usertracker.g.b) r0
            int r1 = r0.f33530l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f33530l = r1
            goto L18
        L13:
            com.moloco.sdk.internal.services.usertracker.g$b r0 = new com.moloco.sdk.internal.services.usertracker.g$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f33528j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f33530l
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L5f
            if (r2 == r5) goto L52
            if (r2 == r4) goto L44
            if (r2 != r3) goto L3c
            java.lang.Object r1 = r0.f33527i
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.f33526h
            qt.a r0 = (qt.a) r0
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L39
            goto La0
        L39:
            r9 = move-exception
            goto La8
        L3c:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L44:
            java.lang.Object r2 = r0.f33527i
            qt.a r2 = (qt.a) r2
            java.lang.Object r4 = r0.f33526h
            com.moloco.sdk.internal.services.usertracker.g r4 = (com.moloco.sdk.internal.services.usertracker.g) r4
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L50
            goto L85
        L50:
            r9 = move-exception
            goto La9
        L52:
            java.lang.Object r2 = r0.f33527i
            qt.a r2 = (qt.a) r2
            java.lang.Object r5 = r0.f33526h
            com.moloco.sdk.internal.services.usertracker.g r5 = (com.moloco.sdk.internal.services.usertracker.g) r5
            kotlin.f.b(r9)
            r9 = r2
            goto L72
        L5f:
            kotlin.f.b(r9)
            qt.a r9 = r8.f33525c
            r0.f33526h = r8
            r0.f33527i = r9
            r0.f33530l = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 != r1) goto L71
            return r1
        L71:
            r5 = r8
        L72:
            com.moloco.sdk.internal.services.usertracker.b r2 = r5.f33524b     // Catch: java.lang.Throwable -> La4
            r0.f33526h = r5     // Catch: java.lang.Throwable -> La4
            r0.f33527i = r9     // Catch: java.lang.Throwable -> La4
            r0.f33530l = r4     // Catch: java.lang.Throwable -> La4
            java.lang.Object r2 = r2.c(r0)     // Catch: java.lang.Throwable -> La4
            if (r2 != r1) goto L81
            return r1
        L81:
            r4 = r5
            r7 = r2
            r2 = r9
            r9 = r7
        L85:
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> L50
            if (r9 != 0) goto L9e
            com.moloco.sdk.internal.services.usertracker.d r9 = r4.f33523a     // Catch: java.lang.Throwable -> L50
            java.lang.String r9 = r9.a()     // Catch: java.lang.Throwable -> L50
            com.moloco.sdk.internal.services.usertracker.b r4 = r4.f33524b     // Catch: java.lang.Throwable -> L50
            r0.f33526h = r2     // Catch: java.lang.Throwable -> L50
            r0.f33527i = r9     // Catch: java.lang.Throwable -> L50
            r0.f33530l = r3     // Catch: java.lang.Throwable -> L50
            java.lang.Object r0 = r4.b(r9, r0)     // Catch: java.lang.Throwable -> L50
            if (r0 != r1) goto L9e
            return r1
        L9e:
            r1 = r9
            r0 = r2
        La0:
            r0.unlock(r6)
            return r1
        La4:
            r0 = move-exception
            r7 = r0
            r0 = r9
            r9 = r7
        La8:
            r2 = r0
        La9:
            r2.unlock(r6)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.usertracker.g.c(rs.c):java.lang.Object");
    }
}
