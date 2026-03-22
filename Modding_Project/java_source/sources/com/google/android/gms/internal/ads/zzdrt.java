package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdrt {
    public static Bundle zza(Pair... pairArr) {
        Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue()) {
            for (int i10 = 0; i10 < 2; i10++) {
                Pair pair = pairArr[i10];
                if (!TextUtils.isEmpty((CharSequence) pair.first) && ((Long) pair.second).longValue() > 0) {
                    bundle.putLong((String) pair.first, ((Long) pair.second).longValue());
                }
            }
        }
        return bundle;
    }
}
