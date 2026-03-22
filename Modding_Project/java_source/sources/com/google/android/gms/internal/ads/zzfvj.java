package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfvj {
    private final String zza;
    private final zzfvi zzb;
    private zzfvi zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzfvj(String str, zzfvk zzfvkVar) {
        zzfvi zzfviVar = new zzfvi();
        this.zzb = zzfviVar;
        this.zzc = zzfviVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.zza);
        sb2.append('{');
        zzfvi zzfviVar = this.zzb.zzb;
        String str = "";
        while (zzfviVar != null) {
            Object obj = zzfviVar.zza;
            sb2.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb2.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb2.append(obj);
            }
            zzfviVar = zzfviVar.zzb;
            str = ", ";
        }
        sb2.append('}');
        return sb2.toString();
    }

    public final zzfvj zza(Object obj) {
        zzfvi zzfviVar = new zzfvi();
        this.zzc.zzb = zzfviVar;
        this.zzc = zzfviVar;
        zzfviVar.zza = obj;
        return this;
    }
}
