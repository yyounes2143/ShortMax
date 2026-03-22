package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Insets;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemq implements zzeuc {
    private final zzeuc zza;
    private final zzfcw zzb;
    private final Context zzc;
    private final zzbzs zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemq(zzeou zzeouVar, zzfcw zzfcwVar, Context context, zzbzs zzbzsVar) {
        this.zza = zzeouVar;
        this.zzb = zzfcwVar;
        this.zzc = context;
        this.zzd = zzbzsVar;
    }

    public static /* synthetic */ zzemr zzc(zzemq zzemqVar, zzeul zzeulVar) {
        String str;
        boolean z10;
        Insets insets;
        String str2;
        float f10;
        int i10;
        int i11;
        String str3;
        int i12;
        Insets insets2;
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        int statusBars;
        int displayCutout;
        int navigationBars;
        int captionBar;
        Insets insets3;
        int i13;
        int i14;
        int i15;
        int i16;
        DisplayMetrics displayMetrics;
        zzfcw zzfcwVar = zzemqVar.zzb;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfcwVar.zze;
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            str = zzrVar.zza;
            z10 = zzrVar.zzi;
        } else {
            str = null;
            boolean z11 = false;
            boolean z12 = false;
            z10 = false;
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                boolean z13 = zzrVar2.zzi;
                if (!z13 && !z11) {
                    str = zzrVar2.zza;
                    z11 = true;
                }
                if (z13) {
                    if (!z12) {
                        z12 = true;
                        z10 = true;
                    } else {
                        z12 = true;
                    }
                }
                if (z11 && z12) {
                    break;
                }
            }
        }
        Context context = zzemqVar.zzc;
        Resources resources = context.getResources();
        int i17 = Build.VERSION.SDK_INT;
        if (i17 >= 29) {
            insets = Insets.NONE;
        } else {
            insets = null;
        }
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzbzs zzbzsVar = zzemqVar.zzd;
            float f11 = displayMetrics.density;
            int i18 = displayMetrics.widthPixels;
            int i19 = displayMetrics.heightPixels;
            str2 = zzbzsVar.zzi().zzj();
            f10 = f11;
            i11 = i19;
            i10 = i18;
        } else {
            str2 = null;
            f10 = 0.0f;
            i10 = 0;
            i11 = 0;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznH)).booleanValue() && i17 >= 35) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null && f10 != 0.0f) {
                currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                windowInsets = currentWindowMetrics.getWindowInsets();
                statusBars = WindowInsets.Type.statusBars();
                displayCutout = WindowInsets.Type.displayCutout();
                int i20 = statusBars | displayCutout;
                navigationBars = WindowInsets.Type.navigationBars();
                int i21 = i20 | navigationBars;
                captionBar = WindowInsets.Type.captionBar();
                insets3 = windowInsets.getInsets(i21 | captionBar);
                i13 = insets3.left;
                i14 = insets3.top;
                i15 = insets3.right;
                str3 = str;
                i16 = insets3.bottom;
                insets2 = Insets.of((int) Math.ceil(i13 / f10), (int) Math.ceil(i14 / f10), (int) Math.ceil(i15 / f10), (int) Math.ceil(i16 / f10));
            } else {
                str3 = str;
                insets2 = Insets.NONE;
            }
            insets = insets2;
        } else {
            str3 = str;
        }
        StringBuilder sb2 = new StringBuilder();
        if (zzrVarArr != null) {
            boolean z14 = false;
            for (com.google.android.gms.ads.internal.client.zzr zzrVar3 : zzrVarArr) {
                if (zzrVar3.zzi) {
                    z14 = true;
                } else {
                    if (sb2.length() != 0) {
                        sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
                    }
                    int i22 = zzrVar3.zze;
                    if (i22 == -1) {
                        if (f10 != 0.0f) {
                            i22 = (int) (zzrVar3.zzf / f10);
                        } else {
                            i22 = -1;
                        }
                    }
                    sb2.append(i22);
                    sb2.append(TextureRenderKeys.KEY_IS_X);
                    int i23 = zzrVar3.zzb;
                    if (i23 == -2) {
                        if (f10 != 0.0f) {
                            i23 = (int) (zzrVar3.zzc / f10);
                        } else {
                            i23 = -2;
                        }
                    }
                    sb2.append(i23);
                }
            }
            if (z14) {
                if (sb2.length() != 0) {
                    i12 = 0;
                    sb2.insert(0, HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
                } else {
                    i12 = 0;
                }
                sb2.insert(i12, "320x50");
            }
        }
        return new zzemr(zzrVar, str3, z10, sb2.toString(), f10, i10, i11, str2, zzfcwVar.zzq, insets);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return zzgdn.zzm(this.zza.zzb(), new zzfve() { // from class: com.google.android.gms.internal.ads.zzemp
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                return zzemq.zzc(zzemq.this, (zzeul) obj);
            }
        }, zzcaf.zzg);
    }
}
