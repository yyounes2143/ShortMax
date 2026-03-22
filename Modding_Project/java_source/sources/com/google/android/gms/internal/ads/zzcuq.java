package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzcuq implements zzgdj {
    final /* synthetic */ zzcur zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcuq(zzcur zzcurVar) {
        Objects.requireNonNull(zzcurVar);
        this.zza = zzcurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        zzcwq zzcwqVar;
        Boolean bool = (Boolean) obj;
        zzcwqVar = this.zza.zza;
        zzcwqVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
    }
}
