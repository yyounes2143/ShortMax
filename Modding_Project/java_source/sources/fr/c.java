package fr;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinEventTypes;
import com.explorestack.protobuf.adcom.ConnectionStatus;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* compiled from: DeviceUtils.java */
/* loaded from: classes8.dex */
public class c {
    @Nullable
    public static Double a(@NonNull Context context) {
        try {
            Intent v10 = v(context, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (v10 != null) {
                int intExtra = v10.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
                int intExtra2 = v10.getIntExtra(TextureRenderKeys.KEY_IS_SCALE, -1);
                if (intExtra >= 0 && intExtra2 > 0) {
                    return Double.valueOf(Math.round((intExtra / intExtra2) * 100.0d) / 100.0d);
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @NonNull
    public static ConnectionType b(@NonNull Context context) {
        NetworkInfo s10 = io.bidmachine.core.g.s(context);
        if (s10 == null) {
            return ConnectionType.CONNECTION_TYPE_INVALID;
        }
        int type = s10.getType();
        if (type != 0) {
            if (type != 1) {
                if (type != 9) {
                    return ConnectionType.CONNECTION_TYPE_INVALID;
                }
                return ConnectionType.CONNECTION_TYPE_ETHERNET;
            }
            return ConnectionType.CONNECTION_TYPE_WIFI;
        }
        return g(s10);
    }

    @Nullable
    @SuppressLint({"MissingPermission"})
    public static String c(@NonNull Context context) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String string = Settings.Global.getString(contentResolver, ICEffectKeys.KEY_IS_IC_EFFECT_DEVICE_NAME);
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = Settings.Secure.getString(contentResolver, "bluetooth_name");
            if (!TextUtils.isEmpty(string2)) {
                return string2;
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (io.bidmachine.core.g.M(context, "android.permission.BLUETOOTH_CONNECT") && defaultAdapter != null) {
                return defaultAdapter.getName();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @NonNull
    public static DisplayMetrics d(@NonNull Context context) {
        return context.getResources().getDisplayMetrics();
    }

    @NonNull
    public static Set<String> e(@NonNull Context context) {
        InputMethodManager inputMethodManager;
        HashSet hashSet = new HashSet();
        try {
            inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        } catch (Exception unused) {
        }
        if (inputMethodManager == null) {
            return hashSet;
        }
        for (InputMethodInfo inputMethodInfo : inputMethodManager.getEnabledInputMethodList()) {
            for (InputMethodSubtype inputMethodSubtype : inputMethodManager.getEnabledInputMethodSubtypeList(inputMethodInfo, true)) {
                if (inputMethodSubtype.getMode().equals("keyboard")) {
                    String languageTag = inputMethodSubtype.getLanguageTag();
                    if (TextUtils.isEmpty(languageTag)) {
                        languageTag = inputMethodSubtype.getLocale();
                    }
                    if (!TextUtils.isEmpty(languageTag)) {
                        int indexOf = languageTag.indexOf("_");
                        if (indexOf > 0) {
                            languageTag = languageTag.substring(0, indexOf);
                        }
                        hashSet.add(languageTag);
                    }
                }
            }
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language)) {
            hashSet.add(language);
        }
        return hashSet;
    }

    @NonNull
    public static String f() {
        return Build.MANUFACTURER;
    }

    @NonNull
    private static ConnectionType g(@NonNull NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 0:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_UNKNOWN;
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_3G;
            case 13:
            case 18:
            case 19:
            default:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_4G;
            case 20:
                return ConnectionType.CONNECTION_TYPE_CELLULAR_NETWORK_5G;
        }
    }

    @NonNull
    public static String h() {
        return Build.VERSION.RELEASE;
    }

    @NonNull
    public static ConnectionStatus i(@NonNull Context context) {
        ConnectivityManager x10 = io.bidmachine.core.g.x(context);
        if (x10 == null) {
            return ConnectionStatus.CONNECTION_STATUS_UNDEFINED;
        }
        if (x10.getDefaultProxy() != null) {
            return ConnectionStatus.CONNECTION_STATUS_ENABLED;
        }
        return ConnectionStatus.CONNECTION_STATUS_DISABLED;
    }

    @Nullable
    public static Integer j(@NonNull Context context) {
        try {
            return Integer.valueOf(Settings.System.getInt(context.getContentResolver(), "screen_brightness"));
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static Double k(@NonNull Context context) {
        Integer j10 = j(context);
        if (j10 == null) {
            return null;
        }
        return Double.valueOf(Math.round((j10.intValue() / 255.0d) * 100.0d) / 100.0d);
    }

    public static int l(@NonNull Context context) {
        return d(context).densityDpi;
    }

    @Nullable
    public static String m(@NonNull Context context) {
        return o(context, AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    @Nullable
    public static String n(@NonNull Context context) {
        return o(context, "SHA-256");
    }

    @Nullable
    private static String o(@NonNull Context context, @NonNull String str) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr.length == 0) {
                return null;
            }
            return io.bidmachine.core.g.r0(MessageDigest.getInstance(str).digest(signatureArr[0].toByteArray()));
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return null;
        }
    }

    @NonNull
    public static ConnectionStatus p(@NonNull Context context) {
        NetworkCapabilities r10 = io.bidmachine.core.g.r(context);
        if (r10 == null) {
            return ConnectionStatus.CONNECTION_STATUS_UNDEFINED;
        }
        if (r10.hasTransport(4)) {
            return ConnectionStatus.CONNECTION_STATUS_ENABLED;
        }
        return ConnectionStatus.CONNECTION_STATUS_DISABLED;
    }

    @Nullable
    public static Boolean q(@NonNull Context context) {
        boolean z10;
        try {
            if (Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on") != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public static Boolean r(@NonNull Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager != null) {
            return Boolean.valueOf(powerManager.isPowerSaveMode());
        }
        return null;
    }

    @Nullable
    public static Boolean s(@NonNull Context context) {
        try {
            Intent v10 = v(context, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (v10 != null) {
                int intExtra = v10.getIntExtra("plugged", -1);
                boolean z10 = true;
                if (intExtra != 1 && intExtra != 2 && intExtra != 4) {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean t(@NonNull Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    @Nullable
    public static Boolean u(@NonNull Context context) {
        boolean z10;
        try {
            if (Settings.Global.getInt(context.getContentResolver(), "zen_mode") != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    private static Intent v(@NonNull Context context, @NonNull IntentFilter intentFilter) {
        Intent registerReceiver;
        if (Build.VERSION.SDK_INT >= 34) {
            registerReceiver = context.registerReceiver(null, intentFilter, 4);
            return registerReceiver;
        }
        return context.registerReceiver(null, intentFilter);
    }
}
