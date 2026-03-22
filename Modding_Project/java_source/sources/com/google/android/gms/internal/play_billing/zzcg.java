package com.google.android.gms.internal.play_billing;

import java.util.Set;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzcg {
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
