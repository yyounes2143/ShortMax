package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfmn {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfmn zza = new zzfmn();
    private Context zzb;

    private zzfmn() {
    }

    public static zzfmn zzb() {
        return zza;
    }

    public final Context zza() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zzb = context2;
    }
}
