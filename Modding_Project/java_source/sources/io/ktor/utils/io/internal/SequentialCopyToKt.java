package io.ktor.utils.io.internal;

import kotlin.Metadata;
/* compiled from: SequentialCopyTo.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SequentialCopyToKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ff  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00d8 -> B:50:0x00fa). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00de -> B:49:0x00f3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f0 -> B:49:0x00f3). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull io.ktor.utils.io.ByteChannelSequentialBase r18, @org.jetbrains.annotations.NotNull io.ktor.utils.io.ByteChannelSequentialBase r19, long r20, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Long> r22) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.internal.SequentialCopyToKt.b(io.ktor.utils.io.ByteChannelSequentialBase, io.ktor.utils.io.ByteChannelSequentialBase, long, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081 A[Catch: all -> 0x0098, TRY_LEAVE, TryCatch #1 {all -> 0x0098, blocks: (B:26:0x0078, B:28:0x0081, B:33:0x009b, B:23:0x005e), top: B:45:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009b A[Catch: all -> 0x0098, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0098, blocks: (B:26:0x0078, B:28:0x0081, B:33:0x009b, B:23:0x005e), top: B:45:0x005e }] */
    /* JADX WARN: Type inference failed for: r9v10, types: [is.a] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(io.ktor.utils.io.ByteChannelSequentialBase r8, io.ktor.utils.io.ByteChannelSequentialBase r9, long r10, rs.c<? super java.lang.Long> r12) {
        /*
            boolean r0 = r12 instanceof io.ktor.utils.io.internal.SequentialCopyToKt$copyToTail$1
            if (r0 == 0) goto L13
            r0 = r12
            io.ktor.utils.io.internal.SequentialCopyToKt$copyToTail$1 r0 = (io.ktor.utils.io.internal.SequentialCopyToKt$copyToTail$1) r0
            int r1 = r0.f59536l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59536l = r1
            goto L18
        L13:
            io.ktor.utils.io.internal.SequentialCopyToKt$copyToTail$1 r0 = new io.ktor.utils.io.internal.SequentialCopyToKt$copyToTail$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f59535k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59536l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4f
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            int r8 = r0.f59534j
            java.lang.Object r9 = r0.f59532h
            is.a r9 = (is.a) r9
            kotlin.f.b(r12)     // Catch: java.lang.Throwable -> L33
            goto Lac
        L33:
            r8 = move-exception
            goto Lbb
        L36:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3e:
            java.lang.Object r8 = r0.f59533i
            r9 = r8
            is.a r9 = (is.a) r9
            java.lang.Object r8 = r0.f59532h
            io.ktor.utils.io.ByteChannelSequentialBase r8 = (io.ktor.utils.io.ByteChannelSequentialBase) r8
            kotlin.f.b(r12)     // Catch: java.lang.Throwable -> L33
            r7 = r9
            r9 = r8
            r8 = r12
            r12 = r7
            goto L78
        L4f:
            kotlin.f.b(r12)
            is.a$d r12 = is.a.f60072j
            io.ktor.utils.io.pool.b r12 = r12.c()
            java.lang.Object r12 = r12.p0()
            is.a r12 = (is.a) r12
            int r2 = r12.e()     // Catch: java.lang.Throwable -> L98
            long r5 = (long) r2     // Catch: java.lang.Throwable -> L98
            long r10 = kotlin.ranges.e.k(r10, r5)     // Catch: java.lang.Throwable -> L98
            int r10 = (int) r10     // Catch: java.lang.Throwable -> L98
            r12.s(r10)     // Catch: java.lang.Throwable -> L98
            r0.f59532h = r9     // Catch: java.lang.Throwable -> L98
            r0.f59533i = r12     // Catch: java.lang.Throwable -> L98
            r0.f59536l = r4     // Catch: java.lang.Throwable -> L98
            java.lang.Object r8 = r8.f(r12, r0)     // Catch: java.lang.Throwable -> L98
            if (r8 != r1) goto L78
            return r1
        L78:
            java.lang.Number r8 = (java.lang.Number) r8     // Catch: java.lang.Throwable -> L98
            int r8 = r8.intValue()     // Catch: java.lang.Throwable -> L98
            r10 = -1
            if (r8 != r10) goto L9b
            is.a$d r8 = is.a.f60072j     // Catch: java.lang.Throwable -> L98
            io.ktor.utils.io.pool.b r9 = r8.c()     // Catch: java.lang.Throwable -> L98
            r12.A(r9)     // Catch: java.lang.Throwable -> L98
            r9 = 0
            java.lang.Long r9 = kotlin.coroutines.jvm.internal.a.e(r9)     // Catch: java.lang.Throwable -> L98
            io.ktor.utils.io.pool.b r8 = r8.c()
            r12.A(r8)
            return r9
        L98:
            r8 = move-exception
            r9 = r12
            goto Lbb
        L9b:
            r0.f59532h = r12     // Catch: java.lang.Throwable -> L98
            r10 = 0
            r0.f59533i = r10     // Catch: java.lang.Throwable -> L98
            r0.f59534j = r8     // Catch: java.lang.Throwable -> L98
            r0.f59536l = r3     // Catch: java.lang.Throwable -> L98
            java.lang.Object r9 = r9.m(r12, r0)     // Catch: java.lang.Throwable -> L98
            if (r9 != r1) goto Lab
            return r1
        Lab:
            r9 = r12
        Lac:
            long r10 = (long) r8
            java.lang.Long r8 = kotlin.coroutines.jvm.internal.a.e(r10)     // Catch: java.lang.Throwable -> L33
            is.a$d r10 = is.a.f60072j
            io.ktor.utils.io.pool.b r10 = r10.c()
            r9.A(r10)
            return r8
        Lbb:
            is.a$d r10 = is.a.f60072j
            io.ktor.utils.io.pool.b r10 = r10.c()
            r9.A(r10)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.internal.SequentialCopyToKt.c(io.ktor.utils.io.ByteChannelSequentialBase, io.ktor.utils.io.ByteChannelSequentialBase, long, rs.c):java.lang.Object");
    }
}
