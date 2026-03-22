package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbko implements com.google.android.gms.ads.internal.overlay.zzaa {
    final /* synthetic */ zzbkr zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbko(zzbkr zzbkrVar) {
        Objects.requireNonNull(zzbkrVar);
        this.zza = zzbkrVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzb(int i10) {
        this.zza.zzm(i10);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zza(boolean z10) {
    }
}
