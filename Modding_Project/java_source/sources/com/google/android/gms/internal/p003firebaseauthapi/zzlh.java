package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzlh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzlh {
    public static final zzxb zza;
    private static final byte[] zzb;

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzvw zzvwVar = zzvw.NIST_P256;
        zzvy zzvyVar = zzvy.SHA256;
        zzvb zzvbVar = zzvb.UNCOMPRESSED;
        zzxb zzxbVar = zzcv.zza;
        zzxz zzxzVar = zzxz.TINK;
        zza = zza(zzvwVar, zzvyVar, zzvbVar, zzxbVar, zzxzVar, bArr);
        zza(zzvwVar, zzvyVar, zzvb.COMPRESSED, zzxbVar, zzxz.RAW, bArr);
        zza(zzvwVar, zzvyVar, zzvbVar, zzcv.zzc, zzxzVar, bArr);
    }

    @Deprecated
    private static zzxb zza(zzvw zzvwVar, zzvy zzvyVar, zzvb zzvbVar, zzxb zzxbVar, zzxz zzxzVar, byte[] bArr) {
        return (zzxb) ((zzalf) zzxb.zza().zza(zzjx.zza()).zza(zzxzVar).zza(((zzvh) ((zzalf) zzvh.zza().zza((zzvk) ((zzalf) zzvk.zzc().zza((zzvt) ((zzalf) zzvt.zza().zza(zzvwVar).zza(zzvyVar).zza(zzajv.zza(bArr)).zze())).zza((zzve) ((zzalf) zzve.zza().zza(zzxbVar).zze())).zza(zzvbVar).zze())).zze())).zzj()).zze());
    }
}
