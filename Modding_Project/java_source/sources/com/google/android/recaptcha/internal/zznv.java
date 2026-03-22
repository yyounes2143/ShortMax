package com.google.android.recaptcha.internal;

import java.util.List;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zznv {
    public static final List zza(Object obj, long j10) {
        int i10;
        zznk zznkVar = (zznk) zzps.zzf(obj, j10);
        if (!zznkVar.zzc()) {
            int size = zznkVar.size();
            if (size == 0) {
                i10 = 10;
            } else {
                i10 = size + size;
            }
            zznk zzd = zznkVar.zzd(i10);
            zzps.zzs(obj, j10, zzd);
            return zzd;
        }
        return zznkVar;
    }
}
