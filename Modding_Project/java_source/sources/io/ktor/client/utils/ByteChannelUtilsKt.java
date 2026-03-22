package io.ktor.client.utils;

import at.n;
import gt.e1;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.CoroutinesKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ByteChannelUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ByteChannelUtilsKt {
    @NotNull
    public static final ByteReadChannel a(@NotNull ByteReadChannel byteReadChannel, @NotNull CoroutineContext context, @Nullable Long l10, @NotNull n<? super Long, ? super Long, ? super c<? super Unit>, ? extends Object> listener) {
        Intrinsics.checkNotNullParameter(byteReadChannel, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        return CoroutinesKt.d(e1.f52533a, context, true, new ByteChannelUtilsKt$observable$1(l10, byteReadChannel, listener, null)).getChannel();
    }
}
