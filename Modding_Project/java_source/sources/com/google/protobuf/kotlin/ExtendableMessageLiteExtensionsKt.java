package com.google.protobuf.kotlin;

import com.google.protobuf.ExtensionLite;
import com.google.protobuf.GeneratedMessageLite;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExtendableMessageLiteExtensions.kt */
@Metadata
/* loaded from: classes5.dex */
public final class ExtendableMessageLiteExtensionsKt {
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MorBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>> boolean contains(@NotNull MorBT morbt, @NotNull ExtensionLite<M, ?> extension) {
        Intrinsics.checkNotNullParameter(morbt, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        return morbt.hasExtension(extension);
    }

    @NotNull
    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, ?>, MOrBT extends GeneratedMessageLite.ExtendableMessageOrBuilder<M, ?>, T> T get(@NotNull MOrBT morbt, @NotNull ExtensionLite<M, T> extension) {
        Intrinsics.checkNotNullParameter(morbt, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        T t10 = (T) morbt.getExtension(extension);
        Intrinsics.checkNotNullExpressionValue(t10, "getExtension(extension)");
        return t10;
    }

    public static final <M extends GeneratedMessageLite.ExtendableMessage<M, B>, B extends GeneratedMessageLite.ExtendableBuilder<M, B>, T> void set(@NotNull B b10, @NotNull ExtensionLite<M, T> extension, @NotNull T value) {
        Intrinsics.checkNotNullParameter(b10, "<this>");
        Intrinsics.checkNotNullParameter(extension, "extension");
        Intrinsics.checkNotNullParameter(value, "value");
        b10.setExtension(extension, value);
    }
}
