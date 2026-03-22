package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzfox implements zzfoy {
    private static final zzatq zza;

    static {
        zzast zza2 = zzatq.zza();
        zza2.zzv(ExifInterface.LONGITUDE_EAST);
        zza = (zzatq) zza2.zzbr();
    }

    @Override // com.google.android.gms.internal.ads.zzfoy
    public final zzatq zza() {
        return zza;
    }
}
