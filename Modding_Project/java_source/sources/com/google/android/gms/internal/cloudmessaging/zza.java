package com.google.android.gms.internal.cloudmessaging;

import android.os.Build;
/* compiled from: com.google.android.gms:play-services-cloud-messaging@@17.2.0 */
/* loaded from: classes4.dex */
public final class zza {
    public static final int zza;

    static {
        int i10;
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = 33554432;
        } else {
            i10 = 0;
        }
        zza = i10;
    }
}
