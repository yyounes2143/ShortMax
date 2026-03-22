package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzelx implements zzeub {
    private final boolean zza;

    public zzelx(boolean z10) {
        this.zza = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str;
        Bundle bundle = ((zzcva) obj).zza;
        if (true != this.zza) {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        } else {
            str = "1";
        }
        bundle.putString("adid_p", str);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
