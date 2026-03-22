package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzrs implements zzql {
    final /* synthetic */ zzru zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzrs(zzru zzruVar, zzrt zzrtVar) {
        Objects.requireNonNull(zzruVar);
        this.zza = zzruVar;
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zza(Exception exc) {
        zzea.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        zzru.zzah(this.zza).zzp(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzb() {
        zzlz zzaf = zzru.zzaf(this.zza);
        if (zzaf != null) {
            zzaf.zza();
        }
    }
}
