package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfzq extends zzfzu {
    final /* synthetic */ Comparator zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfzq(Comparator comparator) {
        this.zza = comparator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzfzu
    public final Map zza() {
        return new TreeMap(this.zza);
    }
}
