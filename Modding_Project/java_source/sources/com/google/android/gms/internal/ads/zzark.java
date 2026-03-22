package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzark {
    @NonNull
    public static zzaqg zza(Context context, zzaqr zzaqrVar) {
        zzaqs zzaqsVar;
        if (zzaqrVar == null) {
            zzaqsVar = new zzaqs(new zzare(null, null));
        } else {
            zzaqsVar = new zzaqs(zzaqrVar);
        }
        zzaqg zzaqgVar = new zzaqg(new zzaqz(new zzarj(context.getApplicationContext()), 5242880), zzaqsVar, 4);
        zzaqgVar.zzd();
        return zzaqgVar;
    }
}
