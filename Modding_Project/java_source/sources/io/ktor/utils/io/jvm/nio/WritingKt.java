package io.ktor.utils.io.jvm.nio;

import io.ktor.utils.io.ByteReadChannel;
import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* compiled from: Writing.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/nio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes8.dex */
public final class WritingKt {
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
        if (r7.l() == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0094 -> B:36:0x0097). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.utils.io.ByteReadChannel r7, @org.jetbrains.annotations.NotNull final java.nio.channels.WritableByteChannel r8, final long r9, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Long> r11) {
        /*
            boolean r0 = r11 instanceof io.ktor.utils.io.jvm.nio.WritingKt$copyTo$1
            if (r0 == 0) goto L13
            r0 = r11
            io.ktor.utils.io.jvm.nio.WritingKt$copyTo$1 r0 = (io.ktor.utils.io.jvm.nio.WritingKt$copyTo$1) r0
            int r1 = r0.f59633m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59633m = r1
            goto L18
        L13:
            io.ktor.utils.io.jvm.nio.WritingKt$copyTo$1 r0 = new io.ktor.utils.io.jvm.nio.WritingKt$copyTo$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f59632l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59633m
            r3 = 1
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            long r7 = r0.f59631k
            java.lang.Object r9 = r0.f59630j
            kotlin.jvm.functions.Function1 r9 = (kotlin.jvm.functions.Function1) r9
            java.lang.Object r10 = r0.f59629i
            kotlin.jvm.internal.Ref$LongRef r10 = (kotlin.jvm.internal.Ref.LongRef) r10
            java.lang.Object r2 = r0.f59628h
            io.ktor.utils.io.ByteReadChannel r2 = (io.ktor.utils.io.ByteReadChannel) r2
            kotlin.f.b(r11)
            r11 = r10
            r6 = r2
            r2 = r9
            r9 = r7
            r7 = r6
            goto L97
        L3c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L44:
            kotlin.f.b(r11)
            r4 = 0
            int r11 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r11 < 0) goto Lab
            boolean r11 = r8 instanceof java.nio.channels.SelectableChannel
            if (r11 == 0) goto L63
            r11 = r8
            java.nio.channels.SelectableChannel r11 = (java.nio.channels.SelectableChannel) r11
            boolean r11 = r11.isBlocking()
            if (r11 == 0) goto L5b
            goto L63
        L5b:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "Non-blocking channels are not supported"
            r7.<init>(r8)
            throw r7
        L63:
            boolean r11 = r7.l()
            if (r11 == 0) goto L75
            java.lang.Throwable r7 = r7.h()
            if (r7 != 0) goto L74
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.a.e(r4)
            return r7
        L74:
            throw r7
        L75:
            kotlin.jvm.internal.Ref$LongRef r11 = new kotlin.jvm.internal.Ref$LongRef
            r11.<init>()
            io.ktor.utils.io.jvm.nio.WritingKt$copyTo$copy$1 r2 = new io.ktor.utils.io.jvm.nio.WritingKt$copyTo$copy$1
            r2.<init>()
        L7f:
            long r4 = r11.element
            int r8 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r8 >= 0) goto L9d
            r0.f59628h = r7
            r0.f59629i = r11
            r0.f59630j = r2
            r0.f59631k = r9
            r0.f59633m = r3
            r8 = 0
            java.lang.Object r8 = r7.d(r8, r2, r0)
            if (r8 != r1) goto L97
            return r1
        L97:
            boolean r8 = r7.l()
            if (r8 == 0) goto L7f
        L9d:
            java.lang.Throwable r7 = r7.h()
            if (r7 != 0) goto Laa
            long r7 = r11.element
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.a.e(r7)
            return r7
        Laa:
            throw r7
        Lab:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Limit shouldn't be negative: "
            r7.append(r8)
            r7.append(r9)
            java.lang.String r7 = r7.toString()
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r7 = r7.toString()
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.jvm.nio.WritingKt.a(io.ktor.utils.io.ByteReadChannel, java.nio.channels.WritableByteChannel, long, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object b(ByteReadChannel byteReadChannel, WritableByteChannel writableByteChannel, long j10, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = Long.MAX_VALUE;
        }
        return a(byteReadChannel, writableByteChannel, j10, cVar);
    }
}
