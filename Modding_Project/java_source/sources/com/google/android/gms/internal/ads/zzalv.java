package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzalv {
    @Nullable
    public static zzalw zza(@Nullable zzalw zzalwVar, @Nullable String[] strArr, Map map) {
        int length;
        int i10 = 0;
        if (zzalwVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (zzalw) map.get(strArr[0]);
            }
            if (length2 > 1) {
                zzalw zzalwVar2 = new zzalw();
                while (i10 < length2) {
                    zzalwVar2.zzl((zzalw) map.get(strArr[i10]));
                    i10++;
                }
                return zzalwVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            zzalwVar.zzl((zzalw) map.get(strArr[0]));
            return zzalwVar;
        } else if (strArr != null && (length = strArr.length) > 1) {
            while (i10 < length) {
                zzalwVar.zzl((zzalw) map.get(strArr[i10]));
                i10++;
            }
        }
        return zzalwVar;
    }
}
