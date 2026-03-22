package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzqu;
import com.google.android.gms.internal.p003firebaseauthapi.zzwx;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzrz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzrz {
    private static final zzaaj zza;
    private static final zzph<zzqu, zzqe> zzb;
    private static final zzpd<zzqe> zzc;
    private static final zznx<zzqp, zzqb> zzd;
    private static final zznt<zzqb> zze;

    static {
        zzaaj zzb2 = zzqn.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zza = zzb2;
        zzb = zzph.zza(new zzpj() { // from class: com.google.android.gms.internal.firebase-auth-api.zzry
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpj
            public final zzqf zza(zzcb zzcbVar) {
                zzqe zzb3;
                zzb3 = zzqe.zzb((zzxb) ((zzalf) zzxb.zza().zza("type.googleapis.com/google.crypto.tink.AesCmacKey").zza(((zzsz) ((zzalf) zzsz.zzb().zza(zzrz.zzb(r1)).zza(r1.zzc()).zze())).zzj()).zza(zzrz.zza(((zzqu) zzcbVar).zze())).zze()));
                return zzb3;
            }
        }, zzqu.class, zzqe.class);
        zzc = zzpd.zza(new zzpf() { // from class: com.google.android.gms.internal.firebase-auth-api.zzsb
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpf
            public final zzcb zza(zzqf zzqfVar) {
                zzqu zzb3;
                zzb3 = zzrz.zzb((zzqe) zzqfVar);
                return zzb3;
            }
        }, zzb2, zzqe.class);
        zzd = zznx.zza(new zznz() { // from class: com.google.android.gms.internal.firebase-auth-api.zzsa
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznz
            public final zzqf zza(zzbi zzbiVar, zzch zzchVar) {
                zzqb zza2;
                zza2 = zzqb.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzsw) ((zzalf) zzsw.zzb().zza(zzrz.zzb((zzqu) ((zzrn) r1.zza()))).zza(zzajv.zza(r1.zzf().zza(zzch.zza(zzchVar)))).zze())).zzj(), zzwx.zzb.SYMMETRIC, zzrz.zza(((zzqu) ((zzrn) r1.zza())).zze()), ((zzqp) zzbiVar).zzb());
                return zza2;
            }
        }, zzqp.class, zzqb.class);
        zze = zznt.zza(new zznv() { // from class: com.google.android.gms.internal.firebase-auth-api.zzsd
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznv
            public final zzbi zza(zzqf zzqfVar, zzch zzchVar) {
                zzqp zzb3;
                zzb3 = zzrz.zzb((zzqb) zzqfVar, zzchVar);
                return zzb3;
            }
        }, zzb2, zzqb.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzqp zzb(zzqb zzqbVar, zzch zzchVar) throws GeneralSecurityException {
        if (zzqbVar.zzf().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzsw zza2 = zzsw.zza(zzqbVar.zzd(), zzaku.zza());
                if (zza2.zza() == 0) {
                    return zzqp.zzc().zza(zzqu.zzd().zza(zza2.zze().zzb()).zzb(zza2.zzd().zza()).zza(zza(zzqbVar.zzb())).zza()).zza(zzaal.zza(zza2.zze().zzd(), zzch.zza(zzchVar))).zza(zzqbVar.zze()).zza();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzall | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing AesCmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzqu zzb(zzqe zzqeVar) throws GeneralSecurityException {
        if (zzqeVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzsz zza2 = zzsz.zza(zzqeVar.zza().zze(), zzaku.zza());
                return zzqu.zzd().zza(zza2.zza()).zzb(zza2.zzd().zza()).zza(zza(zzqeVar.zza().zzd())).zza();
            } catch (zzall e10) {
                throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e10);
            }
        }
        String zzf = zzqeVar.zza().zzf();
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: " + zzf);
    }

    private static zzqu.zza zza(zzxz zzxzVar) throws GeneralSecurityException {
        int i10 = zzsc.zza[zzxzVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return zzqu.zza.zzd;
                    }
                    int zza2 = zzxzVar.zza();
                    throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + zza2);
                }
                return zzqu.zza.zzc;
            }
            return zzqu.zza.zzb;
        }
        return zzqu.zza.zza;
    }

    private static zztc zzb(zzqu zzquVar) {
        return (zztc) ((zzalf) zztc.zzb().zza(zzquVar.zzb()).zze());
    }

    private static zzxz zza(zzqu.zza zzaVar) throws GeneralSecurityException {
        if (zzqu.zza.zza.equals(zzaVar)) {
            return zzxz.TINK;
        }
        if (zzqu.zza.zzb.equals(zzaVar)) {
            return zzxz.CRUNCHY;
        }
        if (zzqu.zza.zzd.equals(zzaVar)) {
            return zzxz.RAW;
        }
        if (zzqu.zza.zzc.equals(zzaVar)) {
            return zzxz.LEGACY;
        }
        String valueOf = String.valueOf(zzaVar);
        throw new GeneralSecurityException("Unable to serialize variant: " + valueOf);
    }

    public static void zza() throws GeneralSecurityException {
        zzoz zza2 = zzoz.zza();
        zza2.zza(zzb);
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
    }
}
