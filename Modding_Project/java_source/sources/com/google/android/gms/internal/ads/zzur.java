package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzur implements zzxb {
    private final zzfyq zza;
    private long zzb;

    public zzur(List list, List list2) {
        boolean z10;
        int i10 = zzfyq.zzd;
        zzfyn zzfynVar = new zzfyn();
        if (list.size() == list2.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            zzfynVar.zzf(new zzuq((zzxb) list.get(i11), (List) list2.get(i11)));
        }
        this.zza = zzfynVar.zzi();
        this.zzb = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final long zzb() {
        int i10 = 0;
        long j10 = Long.MAX_VALUE;
        long j11 = Long.MAX_VALUE;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 >= zzfyqVar.size()) {
                break;
            }
            zzuq zzuqVar = (zzuq) zzfyqVar.get(i10);
            long zzb = zzuqVar.zzb();
            if ((zzuqVar.zza().contains(1) || zzuqVar.zza().contains(2) || zzuqVar.zza().contains(4)) && zzb != Long.MIN_VALUE) {
                j10 = Math.min(j10, zzb);
            }
            if (zzb != Long.MIN_VALUE) {
                j11 = Math.min(j11, zzb);
            }
            i10++;
        }
        if (j10 != Long.MAX_VALUE) {
            this.zzb = j10;
            return j10;
        } else if (j11 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        } else {
            long j12 = this.zzb;
            if (j12 != -9223372036854775807L) {
                return j12;
            }
            return j11;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final long zzc() {
        int i10 = 0;
        long j10 = Long.MAX_VALUE;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 >= zzfyqVar.size()) {
                break;
            }
            long zzc = ((zzuq) zzfyqVar.get(i10)).zzc();
            if (zzc != Long.MIN_VALUE) {
                j10 = Math.min(j10, zzc);
            }
            i10++;
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void zzm(long j10) {
        int i10 = 0;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 < zzfyqVar.size()) {
                ((zzuq) zzfyqVar.get(i10)).zzm(j10);
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean zzo(zzla zzlaVar) {
        boolean z10;
        boolean z11;
        boolean z12 = false;
        do {
            long zzc = zzc();
            if (zzc == Long.MIN_VALUE) {
                break;
            }
            int i10 = 0;
            z10 = false;
            while (true) {
                zzfyq zzfyqVar = this.zza;
                if (i10 >= zzfyqVar.size()) {
                    break;
                }
                long zzc2 = ((zzuq) zzfyqVar.get(i10)).zzc();
                if (zzc2 != Long.MIN_VALUE && zzc2 <= zzlaVar.zza) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (zzc2 == zzc || z11) {
                    z10 |= ((zzuq) zzfyqVar.get(i10)).zzo(zzlaVar);
                }
                i10++;
            }
            z12 |= z10;
        } while (z10);
        return z12;
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean zzp() {
        int i10 = 0;
        while (true) {
            zzfyq zzfyqVar = this.zza;
            if (i10 >= zzfyqVar.size()) {
                return false;
            }
            if (((zzuq) zzfyqVar.get(i10)).zzp()) {
                return true;
            }
            i10++;
        }
    }
}
