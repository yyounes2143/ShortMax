package com.google.android.recaptcha.internal;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import org.jetbrains.annotations.NotNull;
import ws.f;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcd {
    public zzcd(@NotNull Context context) {
    }

    @NotNull
    public static final byte[] zza(@NotNull File file) throws IOException, GeneralSecurityException {
        return f.h(file);
    }

    public static final void zzb(@NotNull File file, @NotNull byte[] bArr) throws IOException, GeneralSecurityException {
        if (file.exists() && !file.delete()) {
            throw new IOException("Unable to delete existing encrypted file");
        }
        f.n(file, bArr);
    }
}
