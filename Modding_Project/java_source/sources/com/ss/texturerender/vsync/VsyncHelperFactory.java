package com.ss.texturerender.vsync;

import android.content.Context;
import android.os.Bundle;
import android.view.Display;
import android.view.WindowManager;
import com.ss.texturerender.DeviceManager;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
/* loaded from: classes6.dex */
public final class VsyncHelperFactory {
    private static String TAG = "VsyncHelperFactory";

    public static IVsyncHelper createVsyncHelper(Context context, int i10, Bundle bundle) {
        float f10;
        if (DeviceManager.isVRDevice()) {
            return new VRVsyncHelper();
        }
        float f11 = 60.0f;
        if (bundle != null) {
            f10 = bundle.getFloat(TextureRenderKeys.KEY_IS_VSYNC_FPS);
        } else {
            f10 = 60.0f;
        }
        Display display = null;
        if (context != null) {
            context = context.getApplicationContext();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                display = windowManager.getDefaultDisplay();
            }
        }
        if (display != null) {
            f11 = display.getRefreshRate();
        }
        TextureRenderLog.d(i10, TAG, "fpsWanted:" + f10 + ",defaultDisplayRefreshRate:" + f11);
        if (f10 < f11 && f10 > 0.0f) {
            return new LocalVsyncHelper(i10, f10);
        }
        return new VsyncHelper(context, i10);
    }
}
