package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzoa extends zzoe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzoa() {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final void zza() {
        if (!zzb()) {
            for (int i10 = 0; i10 < zzc(); i10++) {
                Map.Entry zzd = zzd(i10);
                if (((zzlv) ((zzob) zzd).zza()).zzd()) {
                    zzd.setValue(Collections.unmodifiableList((List) zzd.getValue()));
                }
            }
            for (Map.Entry entry : zze()) {
                if (((zzlv) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
