package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcaq implements zzgdj {
    final /* synthetic */ zzcao zza;
    final /* synthetic */ zzcam zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcaq(zzcar zzcarVar, zzcao zzcaoVar, zzcam zzcamVar) {
        this.zza = zzcaoVar;
        this.zzb = zzcamVar;
        Objects.requireNonNull(zzcarVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(@Nullable Object obj) {
        this.zza.zza(obj);
    }
}
