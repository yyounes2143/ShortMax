package com.google.android.gms.internal.ads;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzef extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    private final zzel zza;

    public zzef(zzel zzelVar) {
        this.zza = zzelVar;
    }

    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType;
        boolean z10;
        overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        int i10 = 5;
        if (overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzel zzelVar = this.zza;
        if (true == z10) {
            i10 = 10;
        }
        zzelVar.zzh(i10);
    }
}
