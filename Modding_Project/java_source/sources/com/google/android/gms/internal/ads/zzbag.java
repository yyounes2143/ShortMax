package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import androidx.annotation.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
final class zzbag {
    @VisibleForTesting
    ByteArrayOutputStream zza = new ByteArrayOutputStream(4096);
    @VisibleForTesting
    Base64OutputStream zzb = new Base64OutputStream(this.zza, 10);

    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.ByteArrayOutputStream, android.util.Base64OutputStream] */
    public final String toString() {
        String str;
        try {
            this.zzb.close();
        } catch (IOException e10) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("HashManager: Unable to convert to Base64.", e10);
        }
        try {
            try {
                this.zza.close();
                str = this.zza.toString();
            } catch (IOException e11) {
                int i11 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("HashManager: Unable to convert to Base64.", e11);
                str = "";
            }
            return str;
        } finally {
            this.zza = null;
            this.zzb = null;
        }
    }
}
