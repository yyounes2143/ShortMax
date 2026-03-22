package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfyc extends zzfyf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfyc() {
        super(null);
    }

    static final zzfyf zzf(int i10) {
        zzfyf zzfyfVar;
        zzfyf zzfyfVar2;
        zzfyf zzfyfVar3;
        if (i10 < 0) {
            zzfyfVar3 = zzfyf.zzb;
            return zzfyfVar3;
        } else if (i10 > 0) {
            zzfyfVar2 = zzfyf.zzc;
            return zzfyfVar2;
        } else {
            zzfyfVar = zzfyf.zza;
            return zzfyfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    public final zzfyf zzb(int i10, int i11) {
        return zzf(Integer.compare(i10, i11));
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    public final zzfyf zzc(Object obj, Object obj2, Comparator comparator) {
        return zzf(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    public final zzfyf zzd(boolean z10, boolean z11) {
        return zzf(Boolean.compare(z10, z11));
    }

    @Override // com.google.android.gms.internal.ads.zzfyf
    public final zzfyf zze(boolean z10, boolean z11) {
        return zzf(Boolean.compare(z11, z10));
    }
}
