package com.applovin.shadow.okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: -DeprecatedUtf8.kt */
@ms.c
@Metadata
/* renamed from: com.applovin.shadow.okio.-DeprecatedUtf8  reason: invalid class name */
/* loaded from: classes2.dex */
public final class DeprecatedUtf8 {
    @NotNull
    public static final DeprecatedUtf8 INSTANCE = new DeprecatedUtf8();

    private DeprecatedUtf8() {
    }

    @ms.c
    public final long size(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Utf8.size$default(string, 0, 0, 3, null);
    }

    @ms.c
    public final long size(@NotNull String string, int i10, int i11) {
        Intrinsics.checkNotNullParameter(string, "string");
        return Utf8.size(string, i10, i11);
    }
}
