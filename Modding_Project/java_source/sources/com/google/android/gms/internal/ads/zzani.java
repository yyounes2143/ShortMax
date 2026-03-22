package com.google.android.gms.internal.ads;

import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzani implements zzamz {
    private final zzaod zza;
    private String zzb;
    private zzafb zzc;
    private zzanh zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzanr zzg = new zzanr(32, 128);
    private final zzanr zzh = new zzanr(33, 128);
    private final zzanr zzi = new zzanr(34, 128);
    private final zzanr zzj = new zzanr(39, 128);
    private final zzanr zzk = new zzanr(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzen zzn = new zzen();

    public zzani(zzaod zzaodVar, String str) {
        this.zza = zzaodVar;
    }

    private final void zzf(long j10, int i10, int i11, long j11) {
        this.zzd.zza(j10, i10, this.zze);
        if (!this.zze) {
            zzanr zzanrVar = this.zzg;
            zzanrVar.zzd(i11);
            zzanr zzanrVar2 = this.zzh;
            zzanrVar2.zzd(i11);
            zzanr zzanrVar3 = this.zzi;
            zzanrVar3.zzd(i11);
            if (zzanrVar.zze() && zzanrVar2.zze() && zzanrVar3.zze()) {
                String str = this.zzb;
                int i12 = zzanrVar.zzb;
                byte[] bArr = new byte[zzanrVar2.zzb + i12 + zzanrVar3.zzb];
                boolean z10 = false;
                System.arraycopy(zzanrVar.zza, 0, bArr, 0, i12);
                System.arraycopy(zzanrVar2.zza, 0, bArr, zzanrVar.zzb, zzanrVar2.zzb);
                System.arraycopy(zzanrVar3.zza, 0, bArr, zzanrVar.zzb + zzanrVar2.zzb, zzanrVar3.zzb);
                String str2 = null;
                zzfp zzd = zzfv.zzd(zzanrVar2.zza, 3, zzanrVar2.zzb, null);
                zzfk zzfkVar = zzd.zzb;
                if (zzfkVar != null) {
                    int i13 = zzfkVar.zzf;
                    int[] iArr = zzfkVar.zze;
                    int i14 = zzfkVar.zzd;
                    str2 = zzdk.zzd(zzfkVar.zza, zzfkVar.zzb, zzfkVar.zzc, i14, iArr, i13);
                }
                zzx zzxVar = new zzx();
                zzxVar.zzS(str);
                zzxVar.zzG("video/mp2t");
                zzxVar.zzah("video/hevc");
                zzxVar.zzE(str2);
                zzxVar.zzam(zzd.zze);
                zzxVar.zzQ(zzd.zzf);
                zzxVar.zzK(zzd.zzg);
                zzxVar.zzJ(zzd.zzh);
                zzi zziVar = new zzi();
                zziVar.zzc(zzd.zzk);
                zziVar.zzb(zzd.zzl);
                zziVar.zzd(zzd.zzm);
                zziVar.zzf(zzd.zzc + 8);
                zziVar.zza(zzd.zzd + 8);
                zzxVar.zzF(zziVar.zzg());
                zzxVar.zzad(zzd.zzi);
                zzxVar.zzY(zzd.zzj);
                zzxVar.zzZ(zzd.zza + 1);
                zzxVar.zzT(Collections.singletonList(bArr));
                zzz zzan = zzxVar.zzan();
                this.zzc.zzm(zzan);
                int i15 = zzan.zzq;
                if (i15 != -1) {
                    z10 = true;
                }
                zzfvp.zzl(z10);
                this.zza.zzf(i15);
                this.zze = true;
            }
        }
        zzanr zzanrVar4 = this.zzj;
        if (zzanrVar4.zzd(i11)) {
            int zzc = zzfv.zzc(zzanrVar4.zza, zzanrVar4.zzb);
            zzen zzenVar = this.zzn;
            zzenVar.zzJ(zzanrVar4.zza, zzc);
            zzenVar.zzM(5);
            this.zza.zzc(j11, zzenVar);
        }
        zzanr zzanrVar5 = this.zzk;
        if (zzanrVar5.zzd(i11)) {
            int zzc2 = zzfv.zzc(zzanrVar5.zza, zzanrVar5.zzb);
            zzen zzenVar2 = this.zzn;
            zzenVar2.zzJ(zzanrVar5.zza, zzc2);
            zzenVar2.zzM(5);
            this.zza.zzc(j11, zzenVar2);
        }
    }

    private final void zzg(byte[] bArr, int i10, int i11) {
        this.zzd.zzb(bArr, i10, i11);
        if (!this.zze) {
            this.zzg.zza(bArr, i10, i11);
            this.zzh.zza(bArr, i10, i11);
            this.zzi.zza(bArr, i10, i11);
        }
        this.zzj.zza(bArr, i10, i11);
        this.zzk.zza(bArr, i10, i11);
    }

    private final void zzh(long j10, int i10, int i11, long j11) {
        this.zzd.zzd(j10, i10, i11, j11, this.zze);
        if (!this.zze) {
            this.zzg.zzc(i11);
            this.zzh.zzc(i11);
            this.zzi.zzc(i11);
        }
        this.zzj.zzc(i11);
        this.zzk.zzc(i11);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    @Override // com.google.android.gms.internal.ads.zzamz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzen r19) {
        /*
            r18 = this;
            r7 = r18
            r8 = 3
            com.google.android.gms.internal.ads.zzafb r0 = r7.zzc
            com.google.android.gms.internal.ads.zzdd.zzb(r0)
            java.lang.String r0 = com.google.android.gms.internal.ads.zzex.zza
        La:
            int r0 = r19.zza()
            if (r0 <= 0) goto L7c
            int r0 = r19.zzc()
            int r9 = r19.zzd()
            byte[] r10 = r19.zzN()
            long r1 = r7.zzl
            int r3 = r19.zza()
            long r3 = (long) r3
            long r1 = r1 + r3
            r7.zzl = r1
            com.google.android.gms.internal.ads.zzafb r1 = r7.zzc
            int r2 = r19.zza()
            r11 = r19
            r1.zzr(r11, r2)
        L31:
            if (r0 >= r9) goto La
            boolean[] r1 = r7.zzf
            int r1 = com.google.android.gms.internal.ads.zzfv.zza(r10, r0, r9, r1)
            if (r1 == r9) goto L79
            int r2 = r1 + 3
            r2 = r10[r2]
            r2 = r2 & 126(0x7e, float:1.77E-43)
            if (r1 <= 0) goto L4d
            int r3 = r1 + (-1)
            r4 = r10[r3]
            if (r4 != 0) goto L4d
            r1 = 4
            r13 = r1
            r12 = r3
            goto L4f
        L4d:
            r12 = r1
            r13 = r8
        L4f:
            int r1 = r12 - r0
            if (r1 <= 0) goto L56
            r7.zzg(r10, r0, r12)
        L56:
            int r14 = r9 - r12
            long r3 = r7.zzl
            long r5 = (long) r14
            long r15 = r3 - r5
            if (r1 >= 0) goto L62
            int r0 = -r1
        L60:
            r4 = r0
            goto L64
        L62:
            r0 = 0
            goto L60
        L64:
            int r17 = r2 >> 1
            long r5 = r7.zzm
            r0 = r18
            r1 = r15
            r3 = r14
            r0.zzf(r1, r3, r4, r5)
            long r5 = r7.zzm
            r4 = r17
            r0.zzh(r1, r3, r4, r5)
            int r0 = r12 + r13
            goto L31
        L79:
            r7.zzg(r10, r0, r9)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzani.zza(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzb = zzaonVar.zzb();
        zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 2);
        this.zzc = zzw;
        this.zzd = new zzanh(zzw);
        this.zza.zzd(zzadyVar, zzaonVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
        zzdd.zzb(this.zzc);
        String str = zzex.zza;
        if (z10) {
            this.zza.zze();
            zzf(this.zzl, 0, 0, this.zzm);
            zzh(this.zzl, 0, 48, this.zzm);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzm = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzfv.zzi(this.zzf);
        this.zzg.zzb();
        this.zzh.zzb();
        this.zzi.zzb();
        this.zzj.zzb();
        this.zzk.zzb();
        this.zza.zzb();
        zzanh zzanhVar = this.zzd;
        if (zzanhVar != null) {
            zzanhVar.zzc();
        }
    }
}
