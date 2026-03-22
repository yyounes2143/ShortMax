package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzauo implements PackageManager$OnChecksumsReadyListener {
    final zzgeh zza = zzgeh.zze();

    public final void onChecksumsReady(List list) {
        int type;
        byte[] value;
        if (list == null) {
            this.zza.zzc("");
            return;
        }
        try {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ApkChecksum a10 = a.a(list.get(i10));
                type = a10.getType();
                if (type == 8) {
                    zzgeh zzgehVar = this.zza;
                    zzgbd zzf = zzgbd.zzi().zzf();
                    value = a10.getValue();
                    zzgehVar.zzc(zzf.zzj(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.zza.zzc("");
    }
}
