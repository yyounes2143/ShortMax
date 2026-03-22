package com.google.android.gms.internal.ads;

import android.util.Log;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhge extends zzhgj {
    final String zza;

    public zzhge(String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.ads.zzhgj
    public final void zza(String str) {
        String str2 = this.zza;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb2.append(str2);
        sb2.append(":");
        sb2.append(str);
        Log.d("isoparser", sb2.toString());
    }
}
