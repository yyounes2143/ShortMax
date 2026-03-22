package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzmn {
    private boolean zza;

    public zzmn(Context context, Looper looper, zzdj zzdjVar) {
        context.getApplicationContext();
        zzdjVar.zzd(looper, null);
    }

    public final void zza(boolean z10) {
        if (this.zza == z10) {
            return;
        }
        this.zza = z10;
    }
}
