package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdjt {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfcw zzc;
    private final zzdiy zzd;
    private final zzdit zze;
    @Nullable
    private final zzdkh zzf;
    @Nullable
    private final zzdkp zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbge zzj;
    private final zzdiq zzk;

    public zzdjt(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfcw zzfcwVar, zzdiy zzdiyVar, zzdit zzditVar, @Nullable zzdkh zzdkhVar, @Nullable zzdkp zzdkpVar, Executor executor, Executor executor2, zzdiq zzdiqVar) {
        this.zzb = zzgVar;
        this.zzc = zzfcwVar;
        this.zzj = zzfcwVar.zzi;
        this.zzd = zzdiyVar;
        this.zze = zzditVar;
        this.zzf = zzdkhVar;
        this.zzg = zzdkpVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdiqVar;
    }

    public static /* synthetic */ void zza(zzdjt zzdjtVar, ViewGroup viewGroup) {
        boolean z10;
        zzdit zzditVar = zzdjtVar.zze;
        if (zzditVar.zzf() != null) {
            if (viewGroup != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (zzditVar.zzc() != 2 && zzditVar.zzc() != 1) {
                if (zzditVar.zzc() == 6) {
                    com.google.android.gms.ads.internal.util.zzg zzgVar = zzdjtVar.zzb;
                    String str = zzdjtVar.zzc.zzf;
                    zzgVar.zzF(str, "2", z10);
                    zzgVar.zzF(str, "1", z10);
                    return;
                }
                return;
            }
            zzdjtVar.zzb.zzF(zzdjtVar.zzc.zzf, String.valueOf(zzditVar.zzc()), z10);
        }
    }

    public static /* synthetic */ void zzb(final zzdjt zzdjtVar, zzdkr zzdkrVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbgm zza2;
        Drawable drawable;
        zzdiy zzdiyVar = zzdjtVar.zzd;
        Context context = null;
        if (zzdiyVar.zzf() || zzdiyVar.zze()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
            for (int i10 = 0; i10 < 2; i10++) {
                View zzg = zzdkrVar.zzg(strArr[i10]);
                if (zzg instanceof ViewGroup) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context2 = zzdkrVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdit zzditVar = zzdjtVar.zze;
        if (zzditVar.zze() != null) {
            view = zzditVar.zze();
            zzbge zzbgeVar = zzdjtVar.zzj;
            if (zzbgeVar != null && viewGroup == null) {
                zzh(layoutParams, zzbgeVar.zze);
                view.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (!(zzditVar.zzl() instanceof zzbfz)) {
            view = null;
        } else {
            zzbfz zzbfzVar = (zzbfz) zzditVar.zzl();
            if (viewGroup == null) {
                zzh(layoutParams, zzbfzVar.zzc());
                viewGroup = null;
            }
            View zzbgaVar = new zzbga(context2, zzbfzVar, layoutParams);
            zzbgaVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzed));
            view = zzbgaVar;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdkrVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzh = zzdkrVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdkrVar.zzq(zzdkrVar.zzk(), view, true);
        }
        zzfyq zzfyqVar = zzdjp.zza;
        int size = zzfyqVar.size();
        int i11 = 0;
        while (true) {
            if (i11 < size) {
                View zzg2 = zzdkrVar.zzg((String) zzfyqVar.get(i11));
                i11++;
                if (zzg2 instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) zzg2;
                    break;
                }
            } else {
                viewGroup2 = null;
                break;
            }
        }
        zzdjtVar.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjq
            @Override // java.lang.Runnable
            public final void run() {
                zzdjt.zza(zzdjt.this, viewGroup2);
            }
        });
        if (viewGroup2 != null) {
            if (zzdjtVar.zzi(viewGroup2, true)) {
                if (zzditVar.zzs() != null) {
                    zzditVar.zzs().zzar(new zzdjs(zzdkrVar, viewGroup2));
                }
            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkw)).booleanValue() && zzdjtVar.zzi(viewGroup2, false)) {
                if (zzditVar.zzq() != null) {
                    zzditVar.zzq().zzar(new zzdjs(zzdkrVar, viewGroup2));
                }
            } else {
                viewGroup2.removeAllViews();
                View zzf = zzdkrVar.zzf();
                if (zzf != null) {
                    context = zzf.getContext();
                }
                if (context != null && (zza2 = zzdjtVar.zzk.zza()) != null) {
                    try {
                        IObjectWrapper zzi = zza2.zzi();
                        if (zzi != null && (drawable = (Drawable) ObjectWrapper.unwrap(zzi)) != null) {
                            ImageView imageView = new ImageView(context);
                            imageView.setImageDrawable(drawable);
                            IObjectWrapper zzj = zzdkrVar.zzj();
                            if (zzj != null) {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzgu)).booleanValue()) {
                                    imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzj));
                                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                    viewGroup2.addView(imageView);
                                }
                            }
                            imageView.setScaleType(zza);
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    } catch (RemoteException unused) {
                        int i12 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get main image drawable");
                    }
                }
            }
        }
    }

    private static void zzh(RelativeLayout.LayoutParams layoutParams, int i10) {
        if (i10 != 0) {
            if (i10 != 2) {
                if (i10 != 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    return;
                }
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                return;
            }
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            return;
        }
        layoutParams.addRule(10);
        layoutParams.addRule(9);
    }

    private final boolean zzi(@NonNull ViewGroup viewGroup, boolean z10) {
        View zzg;
        FrameLayout.LayoutParams layoutParams;
        if (z10) {
            zzg = this.zze.zzf();
        } else {
            zzg = this.zze.zzg();
        }
        if (zzg == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzg.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzg.getParent()).removeView(zzg);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzef)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzg, layoutParams);
        return true;
    }

    public final void zzc(@Nullable zzdkr zzdkrVar) {
        zzdkh zzdkhVar;
        if (zzdkrVar != null && (zzdkhVar = this.zzf) != null && zzdkrVar.zzh() != null && this.zzd.zzg()) {
            try {
                zzdkrVar.zzh().addView(zzdkhVar.zza());
            } catch (zzcfs e10) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e10);
            }
        }
    }

    public final void zzd(@Nullable zzdkr zzdkrVar) {
        if (zzdkrVar != null) {
            Context context = zzdkrVar.zzf().getContext();
            if (com.google.android.gms.ads.internal.util.zzbv.zzi(context, this.zzd.zza)) {
                if (!(context instanceof Activity)) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("Activity context is needed for policy validator.");
                    return;
                }
                zzdkp zzdkpVar = this.zzg;
                if (zzdkpVar != null && zzdkrVar.zzh() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(zzdkpVar.zza(zzdkrVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbv.zzb());
                    } catch (zzcfs e10) {
                        com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e10);
                    }
                }
            }
        }
    }

    public final void zze(final zzdkr zzdkrVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjr
            @Override // java.lang.Runnable
            public final void run() {
                zzdjt.zzb(zzdjt.this, zzdkrVar);
            }
        });
    }

    public final boolean zzf(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    public final boolean zzg(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }
}
