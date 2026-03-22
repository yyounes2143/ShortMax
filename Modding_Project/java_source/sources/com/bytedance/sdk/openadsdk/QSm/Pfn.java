package com.bytedance.sdk.openadsdk.QSm;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
/* loaded from: classes3.dex */
public class Pfn {
    public static int BTZ = 32;
    protected static long Pfn = 15360;
    protected static String ZYk = null;

    /* renamed from: ba  reason: collision with root package name */
    public static int f12829ba = 0;
    public static int cFZ = 1;
    public static int dLZ = 16;
    protected static int ex = 30;
    public static int jFA = 4;
    public static int kkU = 8;
    protected static String oJ = "images";

    /* renamed from: so  reason: collision with root package name */
    public static int f12830so = 2;
    protected static int tB = 1;

    public static boolean ZYk(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean oJ(Context context, String str) {
        return false;
    }

    public static float ZYk(Context context) {
        if (context == null) {
            return 0.0f;
        }
        return context.getResources().getDisplayMetrics().density;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Bitmap oJ(String str) {
        byte[] decode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    public static boolean oJ(Context context, int i10) {
        boolean oJ2;
        boolean oJ3;
        if (f12829ba == 0) {
            if (Build.VERSION.SDK_INT >= 33) {
                oJ2 = oJ(context, "android.permission.READ_MEDIA_IMAGES");
                oJ3 = true;
            } else {
                oJ2 = oJ(context, "android.permission.READ_EXTERNAL_STORAGE");
                oJ3 = oJ(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            boolean oJ4 = oJ(context, "android.permission.CAMERA");
            boolean oJ5 = oJ(context, "android.permission.RECORD_AUDIO");
            PackageManager packageManager = context.getPackageManager();
            if (oJ2 && oJ3) {
                f12829ba |= cFZ;
            }
            if (oJ4 && packageManager.hasSystemFeature("android.hardware.camera")) {
                f12829ba |= f12830so;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
                f12829ba |= jFA;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.accelerometer")) {
                f12829ba |= kkU;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
                f12829ba |= dLZ;
            }
            if (oJ5 && packageManager.hasSystemFeature("android.hardware.microphone")) {
                f12829ba |= BTZ;
            }
        }
        return (f12829ba & i10) != 0;
    }

    public static boolean oJ(Context context) {
        boolean z10;
        boolean z11;
        if (Build.VERSION.SDK_INT >= 33) {
            z10 = context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0;
        } else {
            z10 = context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
            if (context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                z11 = false;
                return !z11 && z10;
            }
        }
        z11 = true;
        if (z11) {
        }
    }
}
