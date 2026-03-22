package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgc implements zzgj {
    private final boolean zza;
    private final ArrayList zzb = new ArrayList(1);
    private int zzc;
    @Nullable
    private zzgo zzd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzgc(boolean z10) {
        this.zza = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public /* synthetic */ Map zze() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzf(zzhj zzhjVar) {
        zzhjVar.getClass();
        ArrayList arrayList = this.zzb;
        if (!arrayList.contains(zzhjVar)) {
            arrayList.add(zzhjVar);
            this.zzc++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzg(int i10) {
        zzgo zzgoVar = this.zzd;
        String str = zzex.zza;
        for (int i11 = 0; i11 < this.zzc; i11++) {
            ((zzhj) this.zzb.get(i11)).zza(this, zzgoVar, this.zza, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzh() {
        zzgo zzgoVar = this.zzd;
        String str = zzex.zza;
        for (int i10 = 0; i10 < this.zzc; i10++) {
            ((zzhj) this.zzb.get(i10)).zzb(this, zzgoVar, this.zza);
        }
        this.zzd = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzi(zzgo zzgoVar) {
        for (int i10 = 0; i10 < this.zzc; i10++) {
            ((zzhj) this.zzb.get(i10)).zzc(this, zzgoVar, this.zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzj(zzgo zzgoVar) {
        this.zzd = zzgoVar;
        for (int i10 = 0; i10 < this.zzc; i10++) {
            ((zzhj) this.zzb.get(i10)).zzd(this, zzgoVar, this.zza);
        }
    }
}
