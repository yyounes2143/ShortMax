package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaqh;
import com.google.android.gms.internal.ads.zzaqm;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbi implements zzaqh {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbk zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(zzbo zzboVar, String str, zzbk zzbkVar) {
        this.zza = str;
        this.zzb = zzbkVar;
        Objects.requireNonNull(zzboVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqh
    public final void zza(zzaqm zzaqmVar) {
        int i10 = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load URL: " + this.zza + "\n" + zzaqmVar.toString());
        this.zzb.zza((Object) null);
    }
}
