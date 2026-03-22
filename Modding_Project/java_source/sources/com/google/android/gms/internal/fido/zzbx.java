package com.google.android.gms.internal.fido;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public final class zzbx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Set set) {
        int i10;
        int i11 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i10 = obj.hashCode();
            } else {
                i10 = 0;
            }
            i11 += i10;
        }
        return i11;
    }
}
