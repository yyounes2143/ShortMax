package com.applovin.shadow.okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GzipSource.kt */
@Metadata
/* renamed from: com.applovin.shadow.okio.-GzipSourceExtensions  reason: invalid class name */
/* loaded from: classes2.dex */
public final class GzipSourceExtensions {
    private static final int FCOMMENT = 4;
    private static final int FEXTRA = 2;
    private static final int FHCRC = 1;
    private static final int FNAME = 3;
    private static final byte SECTION_BODY = 1;
    private static final byte SECTION_DONE = 3;
    private static final byte SECTION_HEADER = 0;
    private static final byte SECTION_TRAILER = 2;

    private static final boolean getBit(int i10, int i11) {
        if (((i10 >> i11) & 1) == 1) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final GzipSource gzip(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new GzipSource(source);
    }
}
