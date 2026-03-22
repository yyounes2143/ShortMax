package com.google.android.gms.internal.p003firebaseauthapi;

import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbj  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzbj {
    private final zzcb zza;

    private zzbj(zzcb zzcbVar) {
        this.zza = zzcbVar;
    }

    public static zzbj zza(zzcb zzcbVar) throws GeneralSecurityException {
        return new zzbj(zzcbVar);
    }

    private final zzxb zzb() {
        try {
            zzcb zzcbVar = this.zza;
            if (zzcbVar instanceof zzoi) {
                return ((zzoi) zzcbVar).zzb().zza();
            }
            return ((zzqe) zzoz.zza().zza((zzoz) this.zza, (Class<zzqf>) zzqe.class)).zza();
        } catch (GeneralSecurityException e10) {
            String valueOf = String.valueOf(this.zza);
            throw new zzql("Parsing parameters failed in getProto(). You probably want to call some Tink register function for " + valueOf, e10);
        }
    }

    public final zzcb zza() throws GeneralSecurityException {
        zzcb zzcbVar = this.zza;
        return zzcbVar != null ? zzcbVar : zzcj.zza(zzb().zzk());
    }
}
