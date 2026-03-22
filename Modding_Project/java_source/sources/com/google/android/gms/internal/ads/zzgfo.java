package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgfo {
    public static zzgfm zza(byte[] bArr) throws GeneralSecurityException {
        try {
            zzguf zzf = zzguf.zzf(bArr, zzgyr.zza());
            zzgny zzc = zzgny.zzc();
            zzgoy zza = zzgoy.zza(zzf);
            if (!zzc.zzk(zza)) {
                return new zzgne(zza);
            }
            return zzc.zzb(zza);
        } catch (IOException e10) {
            throw new GeneralSecurityException("Failed to parse proto", e10);
        }
    }

    public static byte[] zzb(zzgfm zzgfmVar) throws GeneralSecurityException {
        return ((zzgoy) zzgny.zzc().zze(zzgfmVar, zzgoy.class)).zzc().zzaV();
    }
}
