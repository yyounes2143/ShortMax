package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.internal.ads.zzbde;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.List;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@TargetApi(28)
/* loaded from: classes4.dex */
public class zzx extends zzv {
    public static /* synthetic */ WindowInsets zzk(zzx zzxVar, Activity activity, View view, WindowInsets windowInsets) {
        DisplayCutout displayCutout;
        List<Rect> boundingRects;
        if (com.google.android.gms.ads.internal.zzv.zzp().zzi().zzj() == null) {
            displayCutout = windowInsets.getDisplayCutout();
            String str = "";
            if (displayCutout != null) {
                zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                boundingRects = displayCutout.getBoundingRects();
                for (Rect rect : boundingRects) {
                    String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                    if (!TextUtils.isEmpty(str)) {
                        str = str.concat(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
                    }
                    str = str.concat(format);
                }
                zzi.zzy(str);
            } else {
                com.google.android.gms.ads.internal.zzv.zzp().zzi().zzy("");
            }
        }
        zzn(false, activity);
        return view.onApplyWindowInsets(windowInsets);
    }

    private static final void zzn(boolean z10, Activity activity) {
        int i10;
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        i10 = attributes.layoutInDisplayCutoutMode;
        int i11 = 1;
        if (true != z10) {
            i11 = 2;
        }
        if (i11 != i10) {
            attributes.layoutInDisplayCutoutMode = i11;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final int zzj(AudioManager audioManager) {
        int streamMinVolume;
        streamMinVolume = audioManager.getStreamMinVolume(3);
        return streamMinVolume;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final void zzl(final Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzbs)).booleanValue() && com.google.android.gms.ads.internal.zzv.zzp().zzi().zzj() == null && !activity.isInMultiWindowMode()) {
            zzn(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.google.android.gms.ads.internal.util.zzw
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return zzx.zzk(zzx.this, activity, view, windowInsets);
                }
            });
        }
    }
}
