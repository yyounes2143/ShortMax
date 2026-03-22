package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkv implements zzgdj {
    final /* synthetic */ zzfld zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkv(zzfld zzfldVar) {
        Objects.requireNonNull(zzfldVar);
        this.zza = zzfldVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        this.zza.zzF(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
        this.zza.zzG(obj);
    }
}
