package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzezb implements zzgdj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzezb(zzezd zzezdVar) {
        Objects.requireNonNull(zzezdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        com.google.android.gms.ads.internal.util.zze.zza("Notification of cache hit failed.");
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* synthetic */ void zzb(@NullableDecl Object obj) {
        Void r12 = (Void) obj;
        com.google.android.gms.ads.internal.util.zze.zza("Notification of cache hit successful.");
    }
}
