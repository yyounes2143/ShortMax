package com.google.android.gms.internal.play_billing;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zze {
    static final zze zza;
    static final zze zzb;
    @Nullable
    final Throwable zzc;

    static {
        if (zzo.zza) {
            zzb = null;
            zza = null;
            return;
        }
        zzb = new zze(false, null);
        zza = new zze(true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(boolean z10, @Nullable Throwable th2) {
        this.zzc = th2;
    }
}
