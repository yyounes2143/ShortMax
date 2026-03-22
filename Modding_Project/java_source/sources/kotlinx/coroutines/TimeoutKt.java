package kotlinx.coroutines;

import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Timeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class TimeoutKt {
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
        if (r4 == null) goto L10;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlinx.coroutines.TimeoutCancellationException a(long r2, @org.jetbrains.annotations.NotNull gt.m0 r4, @org.jetbrains.annotations.NotNull kotlinx.coroutines.r r5) {
        /*
            boolean r0 = r4 instanceof gt.n0
            if (r0 == 0) goto L7
            gt.n0 r4 = (gt.n0) r4
            goto L8
        L7:
            r4 = 0
        L8:
            if (r4 == 0) goto L18
            kotlin.time.b$a r0 = kotlin.time.b.f61250b
            kotlin.time.DurationUnit r0 = kotlin.time.DurationUnit.MILLISECONDS
            long r0 = kotlin.time.c.t(r2, r0)
            java.lang.String r4 = r4.l(r0)
            if (r4 != 0) goto L2e
        L18:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = "Timed out waiting for "
            r4.append(r0)
            r4.append(r2)
            java.lang.String r2 = " ms"
            r4.append(r2)
            java.lang.String r4 = r4.toString()
        L2e:
            kotlinx.coroutines.TimeoutCancellationException r2 = new kotlinx.coroutines.TimeoutCancellationException
            r2.<init>(r4, r5)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.a(long, gt.m0, kotlinx.coroutines.r):kotlinx.coroutines.TimeoutCancellationException");
    }

    private static final <U, T extends U> Object b(z<U, ? super T> zVar, Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2) {
        t.j(zVar, DelayKt.d(zVar.f62707d.getContext()).c(zVar.f61922e, zVar, zVar.getContext()));
        return nt.b.e(zVar, zVar, function2);
    }

    @Nullable
    public static final <T> Object c(long j10, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        if (j10 > 0) {
            Object b10 = b(new z(j10, cVar), function2);
            if (b10 == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(cVar);
            }
            return b10;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }

    @Nullable
    public static final <T> Object d(long j10, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return c(DelayKt.e(j10), function2, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0076 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.z, T] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object e(long r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super gt.g0, ? super rs.c<? super T>, ? extends java.lang.Object> r9, @org.jetbrains.annotations.NotNull rs.c<? super T> r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 r0 = (kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1) r0
            int r1 = r0.f61310l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f61310l = r1
            goto L18
        L13:
            kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1 r0 = new kotlinx.coroutines.TimeoutKt$withTimeoutOrNull$1
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f61309k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f61310l
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L34
            java.lang.Object r7 = r0.f61308j
            kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
            java.lang.Object r8 = r0.f61307i
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            kotlin.f.b(r10)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L32
            goto L6f
        L32:
            r8 = move-exception
            goto L70
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.f.b(r10)
            r5 = 0
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 > 0) goto L46
            return r3
        L46:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            r0.f61307i = r9     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            r0.f61308j = r10     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            r0.f61306h = r7     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            r0.f61310l = r4     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            kotlinx.coroutines.z r2 = new kotlinx.coroutines.z     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            r2.<init>(r7, r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            r10.element = r2     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            java.lang.Object r7 = b(r2, r9)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            java.lang.Object r8 = kotlin.coroutines.intrinsics.a.f()     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            if (r7 != r8) goto L6b
            kotlin.coroutines.jvm.internal.f.c(r0)     // Catch: kotlinx.coroutines.TimeoutCancellationException -> L68
            goto L6b
        L68:
            r8 = move-exception
            r7 = r10
            goto L70
        L6b:
            if (r7 != r1) goto L6e
            return r1
        L6e:
            r10 = r7
        L6f:
            return r10
        L70:
            kotlinx.coroutines.r r9 = r8.f61305a
            T r7 = r7.element
            if (r9 != r7) goto L77
            return r3
        L77:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutKt.e(long, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public static final <T> Object f(long j10, @NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> function2, @NotNull rs.c<? super T> cVar) {
        return e(DelayKt.e(j10), function2, cVar);
    }
}
