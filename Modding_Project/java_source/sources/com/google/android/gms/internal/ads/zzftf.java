package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzftf {
    @SuppressLint({"RestrictedApi"})
    public static zzfte zza(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return new zzftg(new zzftw(context));
    }
}
