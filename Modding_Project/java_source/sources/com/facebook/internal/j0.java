package com.facebook.internal;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativeAppCallAttachmentStore.kt */
@Metadata
/* loaded from: classes3.dex */
public final class j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j0 f16228a = new j0();

    /* renamed from: b  reason: collision with root package name */
    private static final String f16229b = j0.class.getName();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static File f16230c;

    private j0() {
    }

    @Nullable
    public static final File a(@NotNull UUID callId, @Nullable String str, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(callId, "callId");
        File b10 = b(callId, z10);
        if (b10 == null) {
            return null;
        }
        try {
            return new File(b10, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Nullable
    public static final File b(@NotNull UUID callId, boolean z10) {
        Intrinsics.checkNotNullParameter(callId, "callId");
        if (f16230c == null) {
            return null;
        }
        File file = new File(f16230c, callId.toString());
        if (z10 && !file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @Nullable
    public static final File c(@Nullable UUID uuid, @Nullable String str) throws FileNotFoundException {
        if (!u0.d0(str) && uuid != null) {
            try {
                return a(uuid, str, false);
            } catch (IOException unused) {
                throw new FileNotFoundException();
            }
        }
        throw new FileNotFoundException();
    }
}
