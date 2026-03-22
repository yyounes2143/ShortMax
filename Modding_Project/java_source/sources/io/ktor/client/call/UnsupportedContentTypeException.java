package io.ktor.client.call;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import xr.b;
/* compiled from: utils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UnsupportedContentTypeException extends IllegalStateException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnsupportedContentTypeException(@NotNull b content) {
        super("Failed to write body: " + Reflection.getOrCreateKotlinClass(content.getClass()));
        Intrinsics.checkNotNullParameter(content, "content");
    }
}
