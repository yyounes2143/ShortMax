package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.RecaptchaException;
import gt.g;
import gt.k0;
import kotlinx.coroutines.TimeoutCancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcq {
    @Nullable
    private static zzcv zza;

    @NotNull
    public static final zzcv zza(@NotNull Application application) {
        zzcv zzcvVar = zza;
        if (zzcvVar == null) {
            zzcvVar = new zzcv(application);
        }
        if (zza == null) {
            zza = zzcvVar;
        }
        return zzcvVar;
    }

    @Nullable
    public static final Object zzb(@NotNull Application application, @NotNull String str, long j10, @NotNull c cVar) throws TimeoutCancellationException, ApiException, RecaptchaException {
        return zzcv.zzh(zza(application), str, j10, null, null, null, cVar, 28, null);
    }

    @NotNull
    public static final Task zzc(@NotNull Application application, @NotNull String str, long j10) throws TimeoutCancellationException, ApiException, RecaptchaException {
        k0 b10;
        b10 = g.b(zza(application).zzd().zza(), null, null, new zzco(application, str, j10, null), 3, null);
        return zzas.zza(b10);
    }

    @Nullable
    public static final Object zzd(@NotNull Application application, @NotNull String str, @NotNull c cVar) throws ApiException, RecaptchaException {
        return zzcv.zzf(zza(application), str, null, null, cVar, 6, null);
    }

    @NotNull
    public static final Task zze(@NotNull Application application, @NotNull String str) throws ApiException, RecaptchaException {
        k0 b10;
        b10 = g.b(zza(application).zzd().zza(), null, null, new zzcp(application, str, null), 3, null);
        return zzas.zza(b10);
    }
}
