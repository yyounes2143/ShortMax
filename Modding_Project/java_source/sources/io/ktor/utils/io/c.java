package io.ktor.utils.io;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ByteChannelCtor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nByteChannelCtor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelCtor.kt\nio/ktor/utils/io/ByteChannelCtorKt\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,66:1\n8#2,3:67\n*S KotlinDebug\n*F\n+ 1 ByteChannelCtor.kt\nio/ktor/utils/io/ByteChannelCtorKt\n*L\n65#1:67,3\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    @NotNull
    public static final ByteReadChannel a(@NotNull byte[] content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return d.e(content, 0, content.length);
    }
}
