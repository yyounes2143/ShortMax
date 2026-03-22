package io.ktor.utils.io;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteWriteChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public interface e {
    boolean a(@Nullable Throwable th2);

    @Nullable
    Object b(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Unit> cVar);

    void flush();

    boolean g();

    @Nullable
    Object i(@NotNull ByteBuffer byteBuffer, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object m(@NotNull hs.a aVar, @NotNull rs.c<? super Unit> cVar);
}
