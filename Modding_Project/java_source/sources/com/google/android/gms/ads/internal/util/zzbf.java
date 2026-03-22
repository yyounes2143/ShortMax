package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbf {
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final List zzc = new ArrayList();

    public final zzbf zza(String str, double d10, double d11) {
        List list;
        int i10 = 0;
        while (true) {
            list = this.zza;
            if (i10 >= list.size()) {
                break;
            }
            double doubleValue = ((Double) this.zzc.get(i10)).doubleValue();
            double doubleValue2 = ((Double) this.zzb.get(i10)).doubleValue();
            if (d10 < doubleValue || (doubleValue == d10 && d11 < doubleValue2)) {
                break;
            }
            i10++;
        }
        list.add(i10, str);
        this.zzc.add(i10, Double.valueOf(d10));
        this.zzb.add(i10, Double.valueOf(d11));
        return this;
    }

    public final zzbh zzb() {
        return new zzbh(this, null);
    }
}
