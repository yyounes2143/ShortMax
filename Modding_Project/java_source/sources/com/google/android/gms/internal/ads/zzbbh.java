package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbh implements zzazw {
    final /* synthetic */ zzbbk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbh(zzbbk zzbbkVar) {
        Objects.requireNonNull(zzbbkVar);
        this.zza = zzbbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zza(boolean z10) {
        if (z10) {
            this.zza.zzl();
        } else {
            zzbbk.zzh(this.zza);
        }
    }
}
