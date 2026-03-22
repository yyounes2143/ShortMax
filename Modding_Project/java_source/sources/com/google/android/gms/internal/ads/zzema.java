package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzema implements zzeuc {
    private final zzgdy zza;
    private final Context zzb;
    private final zzfcw zzc;
    @Nullable
    private final View zzd;

    public zzema(zzgdy zzgdyVar, Context context, zzfcw zzfcwVar, @Nullable ViewGroup viewGroup) {
        this.zza = zzgdyVar;
        this.zzb = context;
        this.zzc = zzfcwVar;
        this.zzd = viewGroup;
    }

    public static /* synthetic */ zzemb zzc(zzema zzemaVar) {
        int i10;
        ArrayList arrayList = new ArrayList();
        View view = zzemaVar.zzd;
        while (view != null) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                break;
            }
            if (parent instanceof ViewGroup) {
                i10 = ((ViewGroup) parent).indexOfChild(view);
            } else {
                i10 = -1;
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i10);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzemb(zzemaVar.zzb, zzemaVar.zzc.zze, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        zzbde.zza(this.zzb);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzelz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzema.zzc(zzema.this);
            }
        });
    }
}
