package com.google.android.gms.internal.auth;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
final class zzdx implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        zzef zzefVar = (zzef) obj;
        zzef zzefVar2 = (zzef) obj2;
        zzdw zzdwVar = new zzdw(zzefVar);
        zzdw zzdwVar2 = new zzdw(zzefVar2);
        while (zzdwVar.hasNext() && zzdwVar2.hasNext()) {
            int compareTo = Integer.valueOf(zzdwVar.zza() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED).compareTo(Integer.valueOf(zzdwVar2.zza() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(zzefVar.zzd()).compareTo(Integer.valueOf(zzefVar2.zzd()));
    }
}
