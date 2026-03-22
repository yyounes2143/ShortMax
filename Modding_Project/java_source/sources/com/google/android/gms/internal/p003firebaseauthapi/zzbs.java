package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzbs */
/* loaded from: classes4.dex */
public final class zzbs implements zzoa {
    private static final zzbu zza = new zzbu() { // from class: com.google.android.gms.internal.firebase-auth-api.zzbr
        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzbu
        public final void zza(zzbs zzbsVar) {
            zzbs.zzd(zzbsVar);
        }
    };
    private final zzbi zzb;
    private final zzxc zzc;
    private final zzbk zzd;
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final zzbu zzh;

    public static /* bridge */ /* synthetic */ zzbu zzd() {
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbs(zzbi zzbiVar, zzxc zzxcVar, int i10, boolean z10, boolean z11, zzbu zzbuVar) {
        zzbk zzbkVar;
        this.zzb = zzbiVar;
        this.zzc = zzxcVar;
        int i11 = zzbo.zza[zzxcVar.ordinal()];
        if (i11 == 1) {
            zzbkVar = zzbk.zza;
        } else if (i11 != 2) {
            zzbkVar = zzbk.zzb;
        } else {
            zzbkVar = zzbk.zzc;
        }
        this.zzd = zzbkVar;
        this.zze = i10;
        this.zzf = z10;
        this.zzg = z11;
        this.zzh = zzbuVar;
    }

    public static /* synthetic */ void zzd(zzbs zzbsVar) {
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzoa
    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzoa
    public final zzbi zzb() {
        this.zzh.zza(this);
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzoa
    public final zzbk zzc() {
        return this.zzd;
    }

    public final boolean zze() {
        return this.zzf;
    }
}
