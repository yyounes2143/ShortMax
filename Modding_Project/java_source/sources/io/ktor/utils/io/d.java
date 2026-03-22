package io.ktor.utils.io;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {

    /* compiled from: ByteChannel.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends ByteBufferChannel {

        /* renamed from: q */
        final /* synthetic */ Function1<Throwable, Throwable> f59510q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(boolean z10, Function1<? super Throwable, ? extends Throwable> function1) {
            super(z10, null, 0, 6, null);
            this.f59510q = function1;
        }

        @Override // io.ktor.utils.io.ByteBufferChannel, io.ktor.utils.io.e
        public boolean a(@Nullable Throwable th2) {
            return super.a(this.f59510q.invoke(th2));
        }
    }

    @NotNull
    public static final b a(boolean z10) {
        return new ByteBufferChannel(z10, null, 0, 6, null);
    }

    @NotNull
    public static final b b(boolean z10, @NotNull Function1<? super Throwable, ? extends Throwable> exceptionMapper) {
        Intrinsics.checkNotNullParameter(exceptionMapper, "exceptionMapper");
        return new a(z10, exceptionMapper);
    }

    public static /* synthetic */ b c(boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return a(z10);
    }

    public static /* synthetic */ b d(boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return b(z10, function1);
    }

    @NotNull
    public static final ByteReadChannel e(@NotNull byte[] content, int i10, int i11) {
        Intrinsics.checkNotNullParameter(content, "content");
        ByteBuffer wrap = ByteBuffer.wrap(content, i10, i11);
        Intrinsics.checkNotNullExpressionValue(wrap, "wrap(content, offset, length)");
        return new ByteBufferChannel(wrap);
    }
}
