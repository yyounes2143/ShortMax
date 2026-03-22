package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfkn implements zzazw {
    final /* synthetic */ zzfkp zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfkn(zzfkp zzfkpVar) {
        Objects.requireNonNull(zzfkpVar);
        this.zza = zzfkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zza(boolean z10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzx)).booleanValue()) {
            this.zza.zzq(z10);
        }
    }
}
