package com.unity3d.ads.core.extensions;

import java.net.URLConnection;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StringExtensionsKt {
    @NotNull
    public static final String getSHA256Hash(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        String hex = ByteString.of(Arrays.copyOf(bytes, bytes.length)).sha256().hex();
        Intrinsics.checkNotNullExpressionValue(hex, "bytes.sha256().hex()");
        return hex;
    }

    @Nullable
    public static final String guessMimeType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return URLConnection.guessContentTypeFromName(str);
    }
}
