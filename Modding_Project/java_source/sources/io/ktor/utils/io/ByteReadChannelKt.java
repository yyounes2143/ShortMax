package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteReadChannel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteReadChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,265:1\n74#2:266\n*S KotlinDebug\n*F\n+ 1 ByteReadChannel.kt\nio/ktor/utils/io/ByteReadChannelKt\n*L\n210#1:266\n*E\n"})
/* loaded from: classes8.dex */
public final class ByteReadChannelKt {
    public static final boolean a(@NotNull ByteReadChannel byteReadChannel) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        return byteReadChannel.cancel(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull io.ktor.utils.io.ByteReadChannel r4, @org.jetbrains.annotations.NotNull io.ktor.utils.io.e r5, long r6, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Long> r8) {
        /*
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteReadChannelKt$copyAndClose$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.utils.io.ByteReadChannelKt$copyAndClose$1 r0 = (io.ktor.utils.io.ByteReadChannelKt$copyAndClose$1) r0
            int r1 = r0.f59490j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59490j = r1
            goto L18
        L13:
            io.ktor.utils.io.ByteReadChannelKt$copyAndClose$1 r0 = new io.ktor.utils.io.ByteReadChannelKt$copyAndClose$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f59489i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59490j
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.f59488h
            r5 = r4
            io.ktor.utils.io.e r5 = (io.ktor.utils.io.e) r5
            kotlin.f.b(r8)
            goto L44
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.f.b(r8)
            r0.f59488h = r5
            r0.f59490j = r3
            java.lang.Object r8 = io.ktor.utils.io.ByteReadChannelJVMKt.b(r4, r5, r6, r0)
            if (r8 != r1) goto L44
            return r1
        L44:
            java.lang.Number r8 = (java.lang.Number) r8
            long r6 = r8.longValue()
            io.ktor.utils.io.f.a(r5)
            java.lang.Long r4 = kotlin.coroutines.jvm.internal.a.e(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteReadChannelKt.b(io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.e, long, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object c(ByteReadChannel byteReadChannel, e eVar, long j10, rs.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = Long.MAX_VALUE;
        }
        return b(byteReadChannel, eVar, j10, cVar);
    }

    @Nullable
    public static final Object d(@NotNull ByteReadChannel byteReadChannel, @NotNull byte[] bArr, @NotNull rs.c<? super Integer> cVar) {
        return byteReadChannel.e(bArr, 0, bArr.length, cVar);
    }
}
