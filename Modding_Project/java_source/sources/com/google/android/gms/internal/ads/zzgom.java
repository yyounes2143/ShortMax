package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgom {
    private static final zzgxe zza = zzgxe.zzb(new byte[0]);
    private final Map zzb;

    public final Iterable zza(byte[] bArr) {
        List list;
        Map map = this.zzb;
        List list2 = (List) map.get(zza);
        if (bArr.length >= 5) {
            list = (List) map.get(zzgxe.zzc(bArr, 0, 5));
        } else {
            list = null;
        }
        if (list2 == null && list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return list;
        }
        if (list == null) {
            return list2;
        }
        return new zzgoi(this, list, list2);
    }
}
