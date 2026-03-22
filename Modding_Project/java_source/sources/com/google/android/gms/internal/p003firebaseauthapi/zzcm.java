package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzwx;
import com.google.android.gms.internal.p003firebaseauthapi.zzxh;
import com.google.android.gms.internal.p003firebaseauthapi.zzxk;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzcm  reason: invalid package */
/* loaded from: classes4.dex */
final class zzcm {
    static {
        Charset.forName("UTF-8");
    }

    public static zzxk zza(zzxh zzxhVar) {
        zzxk.zza zza = zzxk.zza().zza(zzxhVar.zzb());
        for (zzxh.zzb zzbVar : zzxhVar.zze()) {
            zza.zza((zzxk.zzb) ((zzalf) zzxk.zzb.zza().zza(zzbVar.zzb().zzf()).zza(zzbVar.zzc()).zza(zzbVar.zzf()).zza(zzbVar.zza()).zze()));
        }
        return (zzxk) ((zzalf) zza.zze());
    }

    public static void zzb(zzxh zzxhVar) throws GeneralSecurityException {
        int zzb = zzxhVar.zzb();
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = true;
        for (zzxh.zzb zzbVar : zzxhVar.zze()) {
            if (zzbVar.zzc() == zzxc.ENABLED) {
                if (zzbVar.zzg()) {
                    if (zzbVar.zzf() != zzxz.UNKNOWN_PREFIX) {
                        if (zzbVar.zzc() != zzxc.UNKNOWN_STATUS) {
                            if (zzbVar.zza() == zzb) {
                                if (!z10) {
                                    z10 = true;
                                } else {
                                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                                }
                            }
                            if (zzbVar.zzb().zzb() != zzwx.zzb.ASYMMETRIC_PUBLIC) {
                                z11 = false;
                            }
                            i10++;
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzbVar.zza())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzbVar.zza())));
                    }
                } else {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzbVar.zza())));
                }
            }
        }
        if (i10 != 0) {
            if (!z10 && !z11) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
