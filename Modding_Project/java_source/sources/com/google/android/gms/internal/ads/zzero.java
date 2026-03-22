package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Nullable;
import java.util.Set;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzero implements zzeuc {
    private final zzgdy zza;
    @Nullable
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set zzd;

    public zzero(zzgdy zzgdyVar, @Nullable ViewGroup viewGroup, Context context, Set set) {
        this.zza = zzgdyVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    public static /* synthetic */ zzerp zzc(zzero zzeroVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgg)).booleanValue() && zzeroVar.zzb != null && zzeroVar.zzd.contains("banner")) {
            return new zzerp(Boolean.valueOf(zzeroVar.zzb.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgh)).booleanValue() && zzeroVar.zzd.contains("native")) {
            Context context = zzeroVar.zzc;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                    bool = Boolean.TRUE;
                } else {
                    try {
                        boolean z10 = false;
                        if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                            z10 = true;
                        }
                        bool = Boolean.valueOf(z10);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                return new zzerp(bool);
            }
        }
        return new zzerp(null);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzern
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzero.zzc(zzero.this);
            }
        });
    }
}
