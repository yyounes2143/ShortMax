package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzhgm {
    final LinkedHashMap zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhgm(int i10) {
        this.zza = zzhgo.zzb(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzhgm zza(Object obj, zzhha zzhhaVar) {
        zzhgz.zza(obj, "key");
        zzhgz.zza(zzhhaVar, "provider");
        this.zza.put(obj, zzhhaVar);
        return this;
    }
}
