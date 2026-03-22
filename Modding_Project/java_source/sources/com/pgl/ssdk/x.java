package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.camera2.CameraManager;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
/* loaded from: classes6.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public static int f36843a = -1;

    /* renamed from: b  reason: collision with root package name */
    public static int f36844b = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.f36844b = x.b(z.b());
            SharedPreferences a10 = x0.a(z.b());
            if (a10 != null) {
                a10.edit().putInt("camera_count", x.f36844b).apply();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Context context) {
        int i10 = f36844b;
        if (i10 != -1) {
            return i10;
        }
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (cameraManager != null) {
            try {
                f36844b = cameraManager.getCameraIdList().length;
            } catch (Throwable unused) {
                f36844b = -1;
            }
        } else {
            f36844b = -2;
        }
        return f36844b;
    }

    public static int c(Context context) {
        TelephonyManager telephonyManager;
        if (f36843a == -1 && (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) != null) {
            f36843a = telephonyManager.getSimState();
        }
        return f36843a;
    }

    public static int a() {
        int i10;
        int i11 = f36844b;
        if (i11 != -1) {
            return i11;
        }
        SharedPreferences a10 = x0.a(z.b());
        if (a10 != null && (i10 = a10.getInt("camera_count", -1)) != -1) {
            f36844b = i10;
            return i10;
        }
        r0.b(new a());
        return -1;
    }
}
