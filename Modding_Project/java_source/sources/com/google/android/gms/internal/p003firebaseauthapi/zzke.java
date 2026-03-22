package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzkb;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Arrays;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzke  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzke extends zzlj {
    private final zzkh zza;
    private final zzaam zzb;
    private final zzaal zzc;

    private zzke(zzkh zzkhVar, zzaam zzaamVar, zzaal zzaalVar) {
        this.zza = zzkhVar;
        this.zzb = zzaamVar;
        this.zzc = zzaalVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlj, com.google.android.gms.internal.p003firebaseauthapi.zzbi
    public final /* synthetic */ zzcb zza() {
        return (zzkb) zza();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlj, com.google.android.gms.internal.p003firebaseauthapi.zzce
    public final /* synthetic */ zzbi zzc() {
        return (zzkh) zzc();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlj
    public final /* synthetic */ zzlg zzd() {
        return (zzkb) ((zzlg) this.zza.zza());
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzlj
    public final /* synthetic */ zzli zze() {
        return this.zza;
    }

    public final zzaam zzf() {
        return this.zzb;
    }

    public final zzaal zzg() {
        return this.zzc;
    }

    public static zzke zza(zzkh zzkhVar, zzaal zzaalVar) throws GeneralSecurityException {
        if (zzkhVar != null) {
            if (zzkhVar.zze() != null) {
                if (zzaalVar != null) {
                    byte[] zza = zzaalVar.zza(zzbf.zza());
                    byte[] zzb = zzkhVar.zze().zzb();
                    if (zza.length == 32) {
                        if (Arrays.equals(zzaah.zza(zza), zzb)) {
                            return new zzke(zzkhVar, null, zzaalVar);
                        }
                        throw new GeneralSecurityException("Invalid private key for public key.");
                    }
                    throw new GeneralSecurityException("Private key bytes length for X25519 curve must be 32");
                }
                throw new GeneralSecurityException("ECIES private key cannot be constructed without secret");
            }
            throw new GeneralSecurityException("ECIES private key for X25519 curve cannot be constructed with NIST-curve public key");
        }
        throw new GeneralSecurityException("ECIES private key cannot be constructed without an ECIES public key");
    }

    public static zzke zza(zzkh zzkhVar, zzaam zzaamVar) throws GeneralSecurityException {
        if (zzkhVar != null) {
            if (zzkhVar.zzf() != null) {
                if (zzaamVar != null) {
                    BigInteger zza = zzaamVar.zza(zzbf.zza());
                    ECPoint zzf = zzkhVar.zzf();
                    zzkb.zzc zzd = ((zzkb) ((zzlg) zzkhVar.zza())).zzd();
                    BigInteger order = zza(zzd).getOrder();
                    if (zza.signum() > 0 && zza.compareTo(order) < 0) {
                        if (zznj.zza(zza, zza(zzd)).equals(zzf)) {
                            return new zzke(zzkhVar, zzaamVar, null);
                        }
                        throw new GeneralSecurityException("Invalid private value");
                    }
                    throw new GeneralSecurityException("Invalid private value");
                }
                throw new GeneralSecurityException("ECIES private key cannot be constructed without secret");
            }
            throw new GeneralSecurityException("ECIES private key for NIST curve cannot be constructed with X25519-curve public key");
        }
        throw new GeneralSecurityException("ECIES private key cannot be constructed without an ECIES public key");
    }

    private static ECParameterSpec zza(zzkb.zzc zzcVar) {
        if (zzcVar == zzkb.zzc.zza) {
            return zznj.zza;
        }
        if (zzcVar == zzkb.zzc.zzb) {
            return zznj.zzb;
        }
        if (zzcVar == zzkb.zzc.zzc) {
            return zznj.zzc;
        }
        String valueOf = String.valueOf(zzcVar);
        throw new IllegalArgumentException("Unable to determine NIST curve type for " + valueOf);
    }
}
