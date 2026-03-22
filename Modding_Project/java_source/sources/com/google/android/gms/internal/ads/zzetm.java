package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzetm implements zzeuc {
    private final zzbyo zza;
    private final zzgdy zzb;
    private final Context zzc;

    public zzetm(zzbyo zzbyoVar, zzgdy zzgdyVar, Context context) {
        this.zza = zzbyoVar;
        this.zzb = zzgdyVar;
        this.zzc = context;
    }

    public static /* synthetic */ zzetn zzc(zzetm zzetmVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        zzbyo zzbyoVar = zzetmVar.zza;
        Context context = zzetmVar.zzc;
        if (!zzbyoVar.zzp(context)) {
            return new zzetn(null, null, null, null, null);
        }
        String zze = zzbyoVar.zze(context);
        if (zze == null) {
            str = "";
        } else {
            str = zze;
        }
        String zzc = zzbyoVar.zzc(context);
        if (zzc == null) {
            str2 = "";
        } else {
            str2 = zzc;
        }
        String zzb = zzbyoVar.zzb(context);
        if (zzb == null) {
            str3 = "";
        } else {
            str3 = zzb;
        }
        boolean zzp = zzbyoVar.zzp(context);
        Long l10 = null;
        if (true != zzp) {
            str4 = null;
        } else {
            str4 = "fa";
        }
        if ("TIME_OUT".equals(str2)) {
            l10 = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzaz);
        }
        Long l11 = l10;
        if (str4 == null) {
            str5 = "";
        } else {
            str5 = str4;
        }
        return new zzetn(str, str2, str3, str5, l11);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetm.zzc(zzetm.this);
            }
        });
    }
}
