package io.ktor.utils.io.jvm.javaio;

import gt.e1;
import gt.q0;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.CoroutinesKt;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Reading.kt */
@Metadata
@SourceDebugExtension({"SMAP\nReading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reading.kt\nio/ktor/utils/io/jvm/javaio/ReadingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"})
/* loaded from: classes8.dex */
public final class ReadingKt {
    @NotNull
    public static final ByteReadChannel a(@NotNull InputStream inputStream, @NotNull CoroutineContext context, @NotNull io.ktor.utils.io.pool.b<ByteBuffer> pool) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pool, "pool");
        return CoroutinesKt.d(e1.f52533a, context, true, new ReadingKt$toByteReadChannel$1(pool, inputStream, null)).getChannel();
    }

    @NotNull
    public static final ByteReadChannel b(@NotNull InputStream inputStream, @NotNull CoroutineContext context, @NotNull io.ktor.utils.io.pool.b<byte[]> pool) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pool, "pool");
        return CoroutinesKt.d(e1.f52533a, context, true, new ReadingKt$toByteReadChannel$2(pool, inputStream, null)).getChannel();
    }

    public static /* synthetic */ ByteReadChannel c(InputStream inputStream, CoroutineContext coroutineContext, io.ktor.utils.io.pool.b bVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = q0.b();
        }
        if ((i10 & 2) != 0) {
            bVar = js.a.a();
        }
        return b(inputStream, coroutineContext, bVar);
    }
}
