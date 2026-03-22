package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzxb;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzcv  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzcv {
    public static final zzxb zza = zza(16);
    public static final zzxb zzb = zza(32);
    public static final zzxb zzc;

    static {
        zza(16, 16);
        zza(32, 16);
        zzvy zzvyVar = zzvy.SHA256;
        zzc = zza(16, 16, 32, 16, zzvyVar);
        zza(32, 16, 32, 32, zzvyVar);
        zzxb.zza zza2 = zzxb.zza().zza(zzei.zza());
        zzxz zzxzVar = zzxz.TINK;
        zzxb zzxbVar = (zzxb) ((zzalf) zza2.zza(zzxzVar).zze());
        zzxb zzxbVar2 = (zzxb) ((zzalf) zzxb.zza().zza(zzga.zza()).zza(zzxzVar).zze());
    }

    private static zzxb zza(int i10, int i11, int i12, int i13, zzvy zzvyVar) {
        return (zzxb) ((zzalf) zzxb.zza().zza(((zzti) ((zzalf) zzti.zza().zza((zzto) ((zzalf) zzto.zzb().zza((zztr) ((zzalf) zztr.zzb().zza(16).zze())).zza(i10).zze())).zza((zzwe) ((zzalf) zzwe.zzc().zza((zzwh) ((zzalf) zzwh.zzc().zza(zzvyVar).zza(i13).zze())).zza(32).zze())).zze())).zzj()).zza(zzde.zza()).zza(zzxz.TINK).zze());
    }

    private static zzxb zza(int i10, int i11) {
        return (zzxb) ((zzalf) zzxb.zza().zza(((zztx) ((zzalf) zztx.zzb().zza(i10).zza((zzua) ((zzalf) zzua.zzb().zza(16).zze())).zze())).zzj()).zza(zzdm.zza()).zza(zzxz.TINK).zze());
    }

    private static zzxb zza(int i10) {
        return (zzxb) ((zzalf) zzxb.zza().zza(((zzug) ((zzalf) zzug.zzc().zza(i10).zze())).zzj()).zza(zzdt.zza()).zza(zzxz.TINK).zze());
    }
}
