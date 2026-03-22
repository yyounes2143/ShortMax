package com.google.android.gms.internal.p003firebaseauthapi;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzof  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzof extends zzbi {
    private final zzqb zza;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzof$zza */
    /* loaded from: classes4.dex */
    private static class zza extends zzcb {
        private final String zza;
        private final zzxz zzb;

        public final String toString() {
            String str;
            String str2 = this.zza;
            int i10 = zzoe.zza[this.zzb.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                        } else {
                            str = "CRUNCHY";
                        }
                    } else {
                        str = "RAW";
                    }
                } else {
                    str = "LEGACY";
                }
            } else {
                str = "TINK";
            }
            return String.format("(typeUrl=%s, outputPrefixType=%s)", str2, str);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzcb
        public final boolean zza() {
            if (this.zzb != zzxz.RAW) {
                return true;
            }
            return false;
        }

        private zza(String str, zzxz zzxzVar) {
            this.zza = str;
            this.zzb = zzxzVar;
        }
    }

    public zzof(zzqb zzqbVar, zzch zzchVar) throws GeneralSecurityException {
        zza(zzqbVar, zzchVar);
        this.zza = zzqbVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final zzcb zza() {
        return new zza(this.zza.zzf(), this.zza.zzb());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final Integer zzb() {
        return this.zza.zze();
    }

    public final zzaaj zzc() throws GeneralSecurityException {
        zzqb zzqbVar = this.zza;
        if (zzqbVar.zzb().equals(zzxz.RAW)) {
            return zzaaj.zza(new byte[0]);
        }
        if (zzqbVar.zzb().equals(zzxz.TINK)) {
            return zzpe.zzb(zzqbVar.zze().intValue());
        }
        if (!zzqbVar.zzb().equals(zzxz.LEGACY) && !zzqbVar.zzb().equals(zzxz.CRUNCHY)) {
            throw new GeneralSecurityException("Unknown output prefix type");
        }
        return zzpe.zza(zzqbVar.zze().intValue());
    }

    public final zzqb zza(zzch zzchVar) throws GeneralSecurityException {
        zza(this.zza, zzchVar);
        return this.zza;
    }

    private static void zza(zzqb zzqbVar, zzch zzchVar) throws GeneralSecurityException {
        int i10 = zzoe.zzb[zzqbVar.zza().ordinal()];
        if (i10 == 1 || i10 == 2) {
            zzch.zza(zzchVar);
        }
    }
}
