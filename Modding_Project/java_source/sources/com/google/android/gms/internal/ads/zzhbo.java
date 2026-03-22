package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhbo extends zzhbt {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhbo() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzhbt
    public final void zza() {
        if (!zzj()) {
            for (int i10 = 0; i10 < zzc(); i10++) {
                Map.Entry zzg = zzg(i10);
                if (((zzgyv) ((zzhbp) zzg).zza()).zze()) {
                    zzg.setValue(Collections.unmodifiableList((List) zzg.getValue()));
                }
            }
            for (Map.Entry entry : zzd()) {
                if (((zzgyv) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
