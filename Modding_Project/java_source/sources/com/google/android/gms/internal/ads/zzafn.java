package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzafn implements zzadv {
    private final zzen zza;
    private final zzafl zzb;
    private final boolean zzc;
    private final zzakr zzd;
    private int zze;
    private zzady zzf;
    private zzafo zzg;
    private long zzh;
    private zzafq[] zzi;
    private long zzj;
    @Nullable
    private zzafq zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private boolean zzp;

    @Deprecated
    public zzafn() {
        this(1, zzakr.zza);
    }

    @Nullable
    private final zzafq zzg(int i10) {
        zzafq[] zzafqVarArr;
        for (zzafq zzafqVar : this.zzi) {
            if (zzafqVar.zzf(i10)) {
                return zzafqVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    @Override // com.google.android.gms.internal.ads.zzadv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadw r17, com.google.android.gms.internal.ads.zzaer r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 895
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafn.zzb(com.google.android.gms.internal.ads.zzadw, com.google.android.gms.internal.ads.zzaer):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zze = 0;
        if (this.zzc) {
            zzadyVar = new zzaku(zzadyVar, this.zzd);
        }
        this.zzf = zzadyVar;
        this.zzj = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        this.zzj = -1L;
        this.zzk = null;
        int i10 = 0;
        for (zzafq zzafqVar : this.zzi) {
            zzafqVar.zze(j10);
        }
        if (j10 == 0) {
            if (this.zzi.length != 0) {
                i10 = 3;
            }
            this.zze = i10;
            return;
        }
        this.zze = 6;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        zzen zzenVar = this.zza;
        zzadwVar.zzh(zzenVar.zzN(), 0, 12);
        zzenVar.zzL(0);
        if (zzenVar.zzi() != 1179011410) {
            return false;
        }
        zzenVar.zzM(4);
        if (zzenVar.zzi() != 541677121) {
            return false;
        }
        return true;
    }

    public zzafn(int i10, zzakr zzakrVar) {
        this.zzd = zzakrVar;
        this.zzc = 1 == (i10 ^ 1);
        this.zza = new zzen(12);
        this.zzb = new zzafl(null);
        this.zzf = new zzaep();
        this.zzi = new zzafq[0];
        this.zzm = -1L;
        this.zzn = -1L;
        this.zzl = -1;
        this.zzh = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
