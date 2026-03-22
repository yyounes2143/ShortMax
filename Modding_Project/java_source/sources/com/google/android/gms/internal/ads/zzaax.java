package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import androidx.annotation.RequiresApi;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(26)
/* loaded from: classes4.dex */
final class zzaax {
    public static boolean zza(Context context) {
        Display display;
        boolean isHdr;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display != null) {
            isHdr = display.isHdr();
            if (!isHdr) {
                return false;
            }
            for (int i10 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i10 == 1) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
