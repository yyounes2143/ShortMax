package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcwx extends zzdbt {
    public zzcwx(Set set) {
        super(set);
    }

    public final void zza(@Nullable final Context context) {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzcww
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((zzcwt) obj).zzdj(context);
            }
        });
    }

    public final void zzb(final Context context) {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzcwu
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((zzcwt) obj).zzdl(context);
            }
        });
    }

    public final void zzc(final Context context) {
        zzq(new zzdbs() { // from class: com.google.android.gms.internal.ads.zzcwv
            @Override // com.google.android.gms.internal.ads.zzdbs
            public final void zza(Object obj) {
                ((zzcwt) obj).zzdm(context);
            }
        });
    }
}
