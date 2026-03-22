package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcap implements zzgdj {
    final /* synthetic */ zzcar zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcap(zzcar zzcarVar) {
        Objects.requireNonNull(zzcarVar);
        this.zza = zzcarVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zza.zzb;
        atomicInteger.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(@Nullable Object obj) {
        AtomicInteger atomicInteger;
        atomicInteger = this.zza.zzb;
        atomicInteger.set(1);
    }
}
