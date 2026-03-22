package com.bytedance.applog.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import androidx.autofill.HintConstants;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.g4;
import java.util.Collections;
/* loaded from: classes3.dex */
public class HardwareUtils {
    public static final String GLOBAL_CACHE_GET_ANDROID_ID = "Secure.getString_android_id";

    /* loaded from: classes3.dex */
    public static class a implements g4.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f11843a;

        public a(Context context) {
            this.f11843a = context;
        }

        public String a() {
            LoggerImpl.global().debug(Collections.singletonList("HardwareUtils"), "[DeviceMeta] Try to get android id by secure.getString", new Object[0]);
            return Settings.Secure.getString(this.f11843a.getContentResolver(), "android_id");
        }
    }

    public static String getOperatorMccMnc(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperator();
        }
        return null;
    }

    public static String getOperatorName(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        if (telephonyManager != null) {
            return telephonyManager.getNetworkOperatorName();
        }
        return null;
    }

    public static int getScreenOrientation(Context context) {
        Display defaultDisplay;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
            if (defaultDisplay.getWidth() <= defaultDisplay.getHeight()) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    @SuppressLint({"HardwareIds"})
    public static String getSecureAndroidId(Context context) {
        try {
            return g4.a(context).a(GLOBAL_CACHE_GET_ANDROID_ID, new a(context));
        } catch (Throwable th2) {
            LoggerImpl.global().error(Collections.singletonList("HardwareUtils"), "Get androidId failed", th2, new Object[0]);
            return null;
        }
    }
}
