package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzena {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    @Nullable
    private zzemz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzemz zza() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzemz zzemzVar) {
        this.zzb = zzemzVar;
    }

    public final void zzc(boolean z10) {
        this.zza.set(true);
    }

    public final boolean zzd() {
        return this.zza.get();
    }
}
