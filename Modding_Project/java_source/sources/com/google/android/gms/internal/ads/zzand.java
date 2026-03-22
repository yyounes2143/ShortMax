package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzand {
    private final zzafb zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private long zzh;

    public zzand(zzafb zzafbVar) {
        this.zza = zzafbVar;
    }

    public final void zza(byte[] bArr, int i10, int i11) {
        boolean z10;
        if (this.zzc) {
            int i12 = this.zzf;
            int i13 = (i10 + 1) - i12;
            if (i13 < i11) {
                if (((bArr[i13] & 192) >> 6) == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.zzd = z10;
                this.zzc = false;
                return;
            }
            this.zzf = i12 + (i11 - i10);
        }
    }

    public final void zzb(long j10, int i10, boolean z10) {
        boolean z11;
        if (this.zzh != -9223372036854775807L) {
            z11 = true;
        } else {
            z11 = false;
        }
        zzdd.zzf(z11);
        if (this.zze == 182 && z10 && this.zzb) {
            this.zza.zzt(this.zzh, this.zzd ? 1 : 0, (int) (j10 - this.zzg), i10, null);
        }
        if (this.zze != 179) {
            this.zzg = j10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(int r5, long r6) {
        /*
            r4 = this;
            r4.zze = r5
            r0 = 0
            r4.zzd = r0
            r1 = 1
            r2 = 182(0xb6, float:2.55E-43)
            if (r5 == r2) goto Lf
            r3 = 179(0xb3, float:2.51E-43)
            if (r5 != r3) goto L11
            r5 = r3
        Lf:
            r3 = r1
            goto L12
        L11:
            r3 = r0
        L12:
            r4.zzb = r3
            if (r5 != r2) goto L17
            goto L18
        L17:
            r1 = r0
        L18:
            r4.zzc = r1
            r4.zzf = r0
            r4.zzh = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzand.zzc(int, long):void");
    }

    public final void zzd() {
        this.zzb = false;
        this.zzc = false;
        this.zzd = false;
        this.zze = -1;
    }
}
