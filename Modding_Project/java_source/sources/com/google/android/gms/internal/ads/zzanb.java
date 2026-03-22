package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzanb implements zzamz {
    private static final double[] zza = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String zzb;
    private zzafb zzc;
    @Nullable
    private final zzaor zzd;
    private final String zze;
    @Nullable
    private final zzen zzf;
    @Nullable
    private final zzanr zzg;
    private final boolean[] zzh = new boolean[4];
    private final zzana zzi = new zzana(128);
    private long zzj;
    private boolean zzk;
    private boolean zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private boolean zzq;
    private boolean zzr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanb(@Nullable zzaor zzaorVar, String str) {
        zzen zzenVar;
        this.zzd = zzaorVar;
        this.zze = str;
        if (zzaorVar != null) {
            this.zzg = new zzanr(178, 128);
            zzenVar = new zzen();
        } else {
            zzenVar = null;
            this.zzg = null;
        }
        this.zzf = zzenVar;
        this.zzn = -9223372036854775807L;
        this.zzp = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01e9  */
    @Override // com.google.android.gms.internal.ads.zzamz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzen r29) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzanb.zza(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzb = zzaonVar.zzb();
        this.zzc = zzadyVar.zzw(zzaonVar.zza(), 2);
        zzaor zzaorVar = this.zzd;
        if (zzaorVar != null) {
            zzaorVar.zzc(zzadyVar, zzaonVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
        zzdd.zzb(this.zzc);
        if (z10) {
            boolean z11 = this.zzq;
            long j10 = this.zzj - this.zzo;
            this.zzc.zzt(this.zzp, z11 ? 1 : 0, (int) j10, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzn = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        zzfv.zzi(this.zzh);
        this.zzi.zzb();
        zzanr zzanrVar = this.zzg;
        if (zzanrVar != null) {
            zzanrVar.zzb();
        }
        this.zzj = 0L;
        this.zzk = false;
        this.zzn = -9223372036854775807L;
        this.zzp = -9223372036854775807L;
    }
}
