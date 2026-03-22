package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import androidx.annotation.NonNull;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzavi {
    public static final String zza(@NonNull Context context, @NonNull String str, long j10, boolean z10) {
        try {
            zzatz zza = zzaua.zza();
            zza.zzb(str);
            zza.zza("0.460000000");
            zza.zzc(context.getPackageName());
            zza.zze((System.currentTimeMillis() - j10) / 1000);
            zza.zzd(System.currentTimeMillis() / 1000);
            try {
                zza.zzf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                zza.zzf(-1L);
            }
            zzaug zza2 = zzaus.zza(((zzaua) zza.zzbr()).zzaV(), null);
            zza2.zzd(5);
            zza2.zzc(2);
            return Base64.encodeToString(((zzauh) zza2.zzbr()).zzaV(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}
