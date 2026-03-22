package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import kotlin.c;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfm {
    @NotNull
    private final i zza;

    public zzfm() {
        int i10 = zzav.zza;
        this.zza = c.b(zzfl.zza);
    }

    @NotNull
    public final HttpURLConnection zza(@NotNull String str) throws zzbd, MalformedURLException, IOException {
        if (((zzfk) this.zza.getValue()).zzb(str)) {
            URLConnection openConnection = new URL(str).openConnection();
            Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            return (HttpURLConnection) openConnection;
        }
        throw new zzbd(zzbb.zzc, zzba.zzQ, null);
    }
}
