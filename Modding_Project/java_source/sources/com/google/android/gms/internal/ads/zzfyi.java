package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfyi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10) {
        return (int) (Integer.rotateLeft((int) (i10 * (-862048943)), 15) * 461845907);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(Object obj) {
        int hashCode;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return zza(hashCode);
    }
}
