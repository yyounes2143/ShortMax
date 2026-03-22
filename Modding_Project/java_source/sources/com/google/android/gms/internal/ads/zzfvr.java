package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfvr implements Serializable, zzfvq {
    private final List zza;

    public final boolean equals(Object obj) {
        if (obj instanceof zzfvr) {
            return this.zza.equals(((zzfvr) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append("and(");
        boolean z10 = true;
        for (Object obj : this.zza) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfvq
    public final boolean zza(Object obj) {
        int i10 = 0;
        while (true) {
            List list = this.zza;
            if (i10 < list.size()) {
                if (!((zzfvq) list.get(i10)).zza(obj)) {
                    return false;
                }
                i10++;
            } else {
                return true;
            }
        }
    }
}
