package com.google.android.recaptcha.internal;

import kotlinx.coroutines.TimeoutCancellationException;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzf {
    @NotNull
    public static final zzbd zza(@NotNull Exception exc, @NotNull zzbd zzbdVar) {
        if (exc instanceof TimeoutCancellationException) {
            return new zzbd(zzbb.zzb, zzba.zzb, exc.getMessage());
        }
        if (exc instanceof zzbd) {
            return (zzbd) exc;
        }
        return zzbdVar;
    }
}
