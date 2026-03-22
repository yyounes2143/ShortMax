package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzkg;
import com.google.android.gms.internal.p003firebaseauthapi.zzwx;
import java.security.GeneralSecurityException;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzkl  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzkl {
    private static final zzaaj zza;
    private static final zzaaj zzb;
    private static final zzph<zzkg, zzqe> zzc;
    private static final zzpd<zzqe> zzd;
    private static final zznx<zzkq, zzqb> zze;
    private static final zznt<zzqb> zzf;
    private static final zznx<zzki, zzqb> zzg;
    private static final zznt<zzqb> zzh;
    private static final zznl<zzxz, zzkg.zze> zzi;
    private static final zznl<zzwm, zzkg.zzf> zzj;
    private static final zznl<zzwj, zzkg.zzc> zzk;
    private static final zznl<zzwk, zzkg.zzb> zzl;

    static {
        zzaaj zzb2 = zzqn.zzb("type.googleapis.com/google.crypto.tink.HpkePrivateKey");
        zza = zzb2;
        zzaaj zzb3 = zzqn.zzb("type.googleapis.com/google.crypto.tink.HpkePublicKey");
        zzb = zzb3;
        zzc = zzph.zza(new zzpj() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkk
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpj
            public final zzqf zza(zzcb zzcbVar) {
                zzqe zzb4;
                zzb4 = zzqe.zzb((zzxb) ((zzalf) zzxb.zza().zza("type.googleapis.com/google.crypto.tink.HpkePrivateKey").zza(((zzwl) ((zzalf) zzwl.zza().zza(zzkl.zzb(r1)).zze())).zzj()).zza(zzkl.zzi.zza((zznl<zzxz, zzkg.zze>) ((zzkg) zzcbVar).zzf())).zze()));
                return zzb4;
            }
        }, zzkg.class, zzqe.class);
        zzd = zzpd.zza(new zzpf() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkn
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zzpf
            public final zzcb zza(zzqf zzqfVar) {
                zzkg zzb4;
                zzb4 = zzkl.zzb((zzqe) zzqfVar);
                return zzb4;
            }
        }, zzb2, zzqe.class);
        zze = zznx.zza(new zznz() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkm
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznz
            public final zzqf zza(zzbi zzbiVar, zzch zzchVar) {
                zzqb zza2;
                zza2 = zzqb.zza("type.googleapis.com/google.crypto.tink.HpkePublicKey", zzkl.zza(r1).zzj(), zzwx.zzb.ASYMMETRIC_PUBLIC, zzkl.zzi.zza((zznl<zzxz, zzkg.zze>) ((zzkg) ((zzlg) r1.zza())).zzf()), ((zzkq) zzbiVar).zzb());
                return zza2;
            }
        }, zzkq.class, zzqb.class);
        zzf = zznt.zza(new zznv() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkp
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznv
            public final zzbi zza(zzqf zzqfVar, zzch zzchVar) {
                zzkq zzd2;
                zzd2 = zzkl.zzd((zzqb) zzqfVar, zzchVar);
                return zzd2;
            }
        }, zzb3, zzqb.class);
        zzg = zznx.zza(new zznz() { // from class: com.google.android.gms.internal.firebase-auth-api.zzko
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznz
            public final zzqf zza(zzbi zzbiVar, zzch zzchVar) {
                zzqb zza2;
                zza2 = zzqb.zza("type.googleapis.com/google.crypto.tink.HpkePrivateKey", ((zzwr) ((zzalf) zzwr.zzb().zza(0).zza(zzkl.zza((zzkq) ((zzli) r1.zzc()))).zza(zzajv.zza(r1.zzf().zza(zzch.zza(zzchVar)))).zze())).zzj(), zzwx.zzb.ASYMMETRIC_PRIVATE, zzkl.zzi.zza((zznl<zzxz, zzkg.zze>) ((zzkg) ((zzlg) r1.zza())).zzf()), ((zzki) zzbiVar).zzb());
                return zza2;
            }
        }, zzki.class, zzqb.class);
        zzh = zznt.zza(new zznv() { // from class: com.google.android.gms.internal.firebase-auth-api.zzkr
            @Override // com.google.android.gms.internal.p003firebaseauthapi.zznv
            public final zzbi zza(zzqf zzqfVar, zzch zzchVar) {
                zzki zzc2;
                zzc2 = zzkl.zzc((zzqb) zzqfVar, zzchVar);
                return zzc2;
            }
        }, zzb2, zzqb.class);
        zznk zza2 = zznl.zza().zza(zzxz.RAW, zzkg.zze.zzc).zza(zzxz.TINK, zzkg.zze.zza);
        zzxz zzxzVar = zzxz.LEGACY;
        zzkg.zze zzeVar = zzkg.zze.zzb;
        zzi = zza2.zza(zzxzVar, zzeVar).zza(zzxz.CRUNCHY, zzeVar).zza();
        zzj = zznl.zza().zza(zzwm.DHKEM_P256_HKDF_SHA256, zzkg.zzf.zza).zza(zzwm.DHKEM_P384_HKDF_SHA384, zzkg.zzf.zzb).zza(zzwm.DHKEM_P521_HKDF_SHA512, zzkg.zzf.zzc).zza(zzwm.DHKEM_X25519_HKDF_SHA256, zzkg.zzf.zzd).zza();
        zzk = zznl.zza().zza(zzwj.HKDF_SHA256, zzkg.zzc.zza).zza(zzwj.HKDF_SHA384, zzkg.zzc.zzb).zza(zzwj.HKDF_SHA512, zzkg.zzc.zzc).zza();
        zzl = zznl.zza().zza(zzwk.AES_128_GCM, zzkg.zzb.zza).zza(zzwk.AES_256_GCM, zzkg.zzb.zzb).zza(zzwk.CHACHA20_POLY1305, zzkg.zzb.zzc).zza();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzki zzc(zzqb zzqbVar, zzch zzchVar) throws GeneralSecurityException {
        if (zzqbVar.zzf().equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
            try {
                zzwr zza2 = zzwr.zza(zzqbVar.zzd(), zzaku.zza());
                if (zza2.zza() == 0) {
                    zzwu zzd2 = zza2.zzd();
                    if (zzd2.zza() == 0) {
                        zzkg zza3 = zza(zzqbVar.zzb(), zzd2.zzb());
                        return zzki.zza(zzkq.zza(zza3, zza(zza3.zze(), zzd2.zzf().zzd()), zzqbVar.zze()), zzaal.zza(zzne.zza(zzne.zza(zza2.zze().zzd()), zzmk.zza(zza3.zze())), zzch.zza(zzchVar)));
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzall unused) {
                throw new GeneralSecurityException("Parsing HpkePrivateKey failed");
            }
        }
        String zzf2 = zzqbVar.zzf();
        throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: " + zzf2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzkq zzd(zzqb zzqbVar, zzch zzchVar) throws GeneralSecurityException {
        if (zzqbVar.zzf().equals("type.googleapis.com/google.crypto.tink.HpkePublicKey")) {
            try {
                zzwu zza2 = zzwu.zza(zzqbVar.zzd(), zzaku.zza());
                if (zza2.zza() == 0) {
                    zzkg zza3 = zza(zzqbVar.zzb(), zza2.zzb());
                    return zzkq.zza(zza3, zza(zza3.zze(), zza2.zzf().zzd()), zzqbVar.zze());
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzall unused) {
                throw new GeneralSecurityException("Parsing HpkePublicKey failed");
            }
        }
        String zzf2 = zzqbVar.zzf();
        throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: " + zzf2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzkg zzb(zzqe zzqeVar) throws GeneralSecurityException {
        if (zzqeVar.zza().zzf().equals("type.googleapis.com/google.crypto.tink.HpkePrivateKey")) {
            try {
                return zza(zzqeVar.zza().zzd(), zzwl.zza(zzqeVar.zza().zze(), zzaku.zza()).zzc());
            } catch (zzall e10) {
                throw new GeneralSecurityException("Parsing HpkeParameters failed: ", e10);
            }
        }
        String zzf2 = zzqeVar.zza().zzf();
        throw new IllegalArgumentException("Wrong type URL in call to HpkeProtoSerialization.parseParameters: " + zzf2);
    }

    private static zzkg zza(zzxz zzxzVar, zzwo zzwoVar) throws GeneralSecurityException {
        return zzkg.zzc().zza(zzi.zza((zznl<zzxz, zzkg.zze>) zzxzVar)).zza(zzj.zza((zznl<zzwm, zzkg.zzf>) zzwoVar.zzc())).zza(zzk.zza((zznl<zzwj, zzkg.zzc>) zzwoVar.zzb())).zza(zzl.zza((zznl<zzwk, zzkg.zzb>) zzwoVar.zza())).zza();
    }

    private static zzwo zzb(zzkg zzkgVar) throws GeneralSecurityException {
        return (zzwo) ((zzalf) zzwo.zzd().zza(zzj.zza((zznl<zzwm, zzkg.zzf>) zzkgVar.zze())).zza(zzk.zza((zznl<zzwj, zzkg.zzc>) zzkgVar.zzd())).zza(zzl.zza((zznl<zzwk, zzkg.zzb>) zzkgVar.zzb())).zze());
    }

    private static zzwu zza(zzkq zzkqVar) throws GeneralSecurityException {
        return (zzwu) ((zzalf) zzwu.zzc().zza(0).zza(zzb((zzkg) ((zzlg) zzkqVar.zza()))).zza(zzajv.zza(zzkqVar.zze().zzb())).zze());
    }

    private static zzaaj zza(zzkg.zzf zzfVar, byte[] bArr) throws GeneralSecurityException {
        return zzaaj.zza(zzne.zza(zzne.zza(bArr), zzmk.zzb(zzfVar)));
    }

    public static void zza() throws GeneralSecurityException {
        zzoz zza2 = zzoz.zza();
        zza2.zza(zzc);
        zza2.zza(zzd);
        zza2.zza(zze);
        zza2.zza(zzf);
        zza2.zza(zzg);
        zza2.zza(zzh);
    }
}
