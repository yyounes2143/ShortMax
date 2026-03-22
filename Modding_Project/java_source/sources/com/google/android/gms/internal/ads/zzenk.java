package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzenk implements zzeub {
    private final com.google.android.gms.ads.internal.client.zzx zza;
    private final boolean zzb;

    public zzenk(com.google.android.gms.ads.internal.client.zzx zzxVar, boolean z10) {
        this.zza = zzxVar;
        this.zzb = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcva) obj).zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfJ)).booleanValue()) {
            bundle.putBoolean("app_switched", this.zzb);
        }
        com.google.android.gms.ads.internal.client.zzx zzxVar = this.zza;
        if (zzxVar != null) {
            int i10 = zzxVar.zza;
            if (i10 == 1) {
                bundle.putString("avo", TtmlNode.TAG_P);
            } else if (i10 == 2) {
                bundle.putString("avo", "l");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
