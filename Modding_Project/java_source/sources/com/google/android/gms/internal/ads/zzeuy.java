package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeuy implements zzeub {
    @VisibleForTesting
    final String zza;
    final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzeuy(String str, int i10, zzeux zzeuxVar) {
        this.zza = str;
        this.zzb = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcva zzcvaVar = (zzcva) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkQ)).booleanValue()) {
            String str = this.zza;
            if (!TextUtils.isEmpty(str)) {
                zzcvaVar.zza.putString("topics", str);
            }
            int i10 = this.zzb;
            if (i10 != -1) {
                zzcvaVar.zza.putInt("atps", i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
