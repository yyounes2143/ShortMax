package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzang implements zzamz {
    private final zzaod zza;
    private long zzf;
    private String zzh;
    private zzafb zzi;
    private zzanf zzj;
    private boolean zzk;
    private boolean zzm;
    private final String zzb = "video/mp2t";
    private final boolean[] zzg = new boolean[3];
    private final zzanr zzc = new zzanr(7, 128);
    private final zzanr zzd = new zzanr(8, 128);
    private final zzanr zze = new zzanr(6, 128);
    private long zzl = -9223372036854775807L;
    private final zzen zzn = new zzen();

    public zzang(zzaod zzaodVar, boolean z10, boolean z11, String str) {
        this.zza = zzaodVar;
    }

    private final void zzf(long j10, int i10, int i11, long j11) {
        if (!this.zzk) {
            zzanr zzanrVar = this.zzc;
            zzanrVar.zzd(i11);
            zzanr zzanrVar2 = this.zzd;
            zzanrVar2.zzd(i11);
            if (!this.zzk) {
                if (zzanrVar.zze() && zzanrVar2.zze()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(zzanrVar.zza, zzanrVar.zzb));
                    arrayList.add(Arrays.copyOf(zzanrVar2.zza, zzanrVar2.zzb));
                    zzfu zzg = zzfv.zzg(zzanrVar.zza, 4, zzanrVar.zzb);
                    zzft zzf = zzfv.zzf(zzanrVar2.zza, 4, zzanrVar2.zzb);
                    String zzc = zzdk.zzc(zzg.zza, zzg.zzb, zzg.zzc);
                    zzafb zzafbVar = this.zzi;
                    zzx zzxVar = new zzx();
                    zzxVar.zzS(this.zzh);
                    zzxVar.zzG(this.zzb);
                    zzxVar.zzah("video/avc");
                    zzxVar.zzE(zzc);
                    zzxVar.zzam(zzg.zze);
                    zzxVar.zzQ(zzg.zzf);
                    zzi zziVar = new zzi();
                    zziVar.zzc(zzg.zzj);
                    zziVar.zzb(zzg.zzk);
                    zziVar.zzd(zzg.zzl);
                    zziVar.zzf(zzg.zzh + 8);
                    zziVar.zza(zzg.zzi + 8);
                    zzxVar.zzF(zziVar.zzg());
                    zzxVar.zzad(zzg.zzg);
                    zzxVar.zzT(arrayList);
                    int i12 = zzg.zzm;
                    zzxVar.zzY(i12);
                    zzafbVar.zzm(zzxVar.zzan());
                    this.zzk = true;
                    this.zza.zzf(i12);
                    this.zzj.zzb(zzg);
                    this.zzj.zza(zzf);
                    zzanrVar.zzb();
                    zzanrVar2.zzb();
                }
            } else if (zzanrVar.zze()) {
                zzfu zzg2 = zzfv.zzg(zzanrVar.zza, 4, zzanrVar.zzb);
                this.zza.zzf(zzg2.zzm);
                this.zzj.zzb(zzg2);
                zzanrVar.zzb();
            } else if (zzanrVar2.zze()) {
                this.zzj.zza(zzfv.zzf(zzanrVar2.zza, 4, zzanrVar2.zzb));
                zzanrVar2.zzb();
            }
        }
        zzanr zzanrVar3 = this.zze;
        if (zzanrVar3.zzd(i11)) {
            int zzc2 = zzfv.zzc(zzanrVar3.zza, zzanrVar3.zzb);
            zzen zzenVar = this.zzn;
            zzenVar.zzJ(zzanrVar3.zza, zzc2);
            zzenVar.zzL(4);
            this.zza.zzc(j11, zzenVar);
        }
        if (this.zzj.zze(j10, i10, this.zzk)) {
            this.zzm = false;
        }
    }

    private final void zzg(byte[] bArr, int i10, int i11) {
        if (!this.zzk) {
            this.zzc.zza(bArr, i10, i11);
            this.zzd.zza(bArr, i10, i11);
        }
        this.zze.zza(bArr, i10, i11);
    }

    private final void zzh(long j10, int i10, long j11) {
        if (!this.zzk) {
            this.zzc.zzc(i10);
            this.zzd.zzc(i10);
        }
        this.zze.zzc(i10);
        this.zzj.zzd(j10, i10, j11, this.zzm);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    @Override // com.google.android.gms.internal.ads.zzamz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzen r17) {
        /*
            r16 = this;
            r7 = r16
            r8 = 3
            com.google.android.gms.internal.ads.zzafb r0 = r7.zzi
            com.google.android.gms.internal.ads.zzdd.zzb(r0)
            java.lang.String r0 = com.google.android.gms.internal.ads.zzex.zza
            int r0 = r17.zzc()
            int r9 = r17.zzd()
            byte[] r10 = r17.zzN()
            long r1 = r7.zzf
            int r3 = r17.zza()
            long r3 = (long) r3
            long r1 = r1 + r3
            r7.zzf = r1
            com.google.android.gms.internal.ads.zzafb r1 = r7.zzi
            int r2 = r17.zza()
            r3 = r17
            r1.zzr(r3, r2)
        L2b:
            boolean[] r1 = r7.zzg
            int r1 = com.google.android.gms.internal.ads.zzfv.zza(r10, r0, r9, r1)
            if (r1 == r9) goto L6d
            int r2 = r1 + 3
            r2 = r10[r2]
            r11 = r2 & 31
            if (r1 <= 0) goto L45
            int r2 = r1 + (-1)
            r3 = r10[r2]
            if (r3 != 0) goto L45
            r1 = 4
            r13 = r1
            r12 = r2
            goto L47
        L45:
            r12 = r1
            r13 = r8
        L47:
            int r1 = r12 - r0
            if (r1 <= 0) goto L4e
            r7.zzg(r10, r0, r12)
        L4e:
            int r3 = r9 - r12
            long r4 = r7.zzf
            long r14 = (long) r3
            long r14 = r4 - r14
            if (r1 >= 0) goto L5a
            int r0 = -r1
        L58:
            r4 = r0
            goto L5c
        L5a:
            r0 = 0
            goto L58
        L5c:
            long r5 = r7.zzl
            r0 = r16
            r1 = r14
            r0.zzf(r1, r3, r4, r5)
            long r4 = r7.zzl
            r3 = r11
            r0.zzh(r1, r3, r4)
            int r0 = r12 + r13
            goto L2b
        L6d:
            r7.zzg(r10, r0, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzang.zza(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzh = zzaonVar.zzb();
        zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 2);
        this.zzi = zzw;
        this.zzj = new zzanf(zzw, false, false);
        this.zza.zzd(zzadyVar, zzaonVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
        zzdd.zzb(this.zzi);
        String str = zzex.zza;
        if (z10) {
            this.zza.zze();
            zzf(this.zzf, 0, 0, this.zzl);
            zzh(this.zzf, 9, this.zzl);
            zzf(this.zzf, 0, 0, this.zzl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        boolean z10;
        this.zzl = j10;
        int i11 = i10 & 2;
        boolean z11 = this.zzm;
        if (i11 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzm = z10 | z11;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzf = 0L;
        this.zzm = false;
        this.zzl = -9223372036854775807L;
        zzfv.zzi(this.zzg);
        this.zzc.zzb();
        this.zzd.zzb();
        this.zze.zzb();
        this.zza.zzb();
        zzanf zzanfVar = this.zzj;
        if (zzanfVar != null) {
            zzanfVar.zzc();
        }
    }
}
