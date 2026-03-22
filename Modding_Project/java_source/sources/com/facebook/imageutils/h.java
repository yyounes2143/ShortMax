package com.facebook.imageutils;

import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StreamProcessor.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f16077a = new h();

    private h() {
    }

    public static final int a(@NotNull InputStream stream, int i10, boolean z10) throws IOException {
        int i11;
        Intrinsics.checkNotNullParameter(stream, "stream");
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            int read = stream.read();
            if (read != -1) {
                if (z10) {
                    i11 = (read & 255) << (i13 * 8);
                } else {
                    i12 <<= 8;
                    i11 = read & 255;
                }
                i12 |= i11;
            } else {
                throw new IOException("no more bytes");
            }
        }
        return i12;
    }
}
