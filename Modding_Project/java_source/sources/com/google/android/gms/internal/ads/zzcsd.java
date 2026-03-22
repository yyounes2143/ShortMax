package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcsd implements zzgdj {
    final /* synthetic */ zzcse zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcsd(zzcse zzcseVar) {
        Objects.requireNonNull(zzcseVar);
        this.zza = zzcseVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzdbk zzdbkVar;
        zzdbkVar = this.zza.zzf;
        zzdbkVar.zzl(false);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        zzdbk zzdbkVar;
        Void r22 = (Void) obj;
        zzdbkVar = this.zza.zzf;
        zzdbkVar.zzl(true);
    }
}
