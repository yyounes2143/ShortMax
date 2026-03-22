package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.compose.animation.core.a;
import com.adjust.sdk.Constants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    private static final AtomicReference<Boolean> oJ = new AtomicReference<>(null);
    private static final AtomicReference<String> ZYk = new AtomicReference<>(null);

    public static String Pfn(Context context) {
        String str;
        try {
            AtomicReference<String> atomicReference = ZYk;
            String str2 = atomicReference.get();
            if (str2 != null) {
                return str2;
            }
            PackageInfo ba2 = ba(context);
            if (ba2 == null) {
                str = "";
            } else {
                str = ba2.versionName;
            }
            a.a(atomicReference, null, str);
            return str;
        } catch (Throwable unused) {
            a.a(ZYk, null, "");
            return "";
        }
    }

    public static int ZYk(Context context) {
        if (so(context)) {
            return 1;
        }
        if (jFA(context)) {
            return 2;
        }
        return kkU(context) ? 3 : 4;
    }

    public static PackageInfo ba(Context context) {
        PackageInfo currentWebViewPackage;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                currentWebViewPackage = WebView.getCurrentWebViewPackage();
                return currentWebViewPackage;
            }
            PackageInfo packageInfo = (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
            return packageInfo != null ? packageInfo : dLZ(context);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean cFZ(Context context) {
        boolean z10;
        boolean z11;
        boolean z12;
        try {
            AtomicReference<Boolean> atomicReference = oJ;
            Boolean bool = atomicReference.get();
            if (bool != null) {
                return bool.booleanValue();
            }
            String str = Build.BRAND;
            if (!TextUtils.isEmpty(str)) {
                str = str.toLowerCase();
            }
            String str2 = Build.MANUFACTURER;
            if (!TextUtils.isEmpty(str2)) {
                str2 = str2.toLowerCase();
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                a.a(atomicReference, null, Boolean.FALSE);
                return false;
            }
            char c10 = 65535;
            if (TextUtils.isEmpty(str)) {
                z10 = false;
                z11 = false;
            } else {
                switch (str.hashCode()) {
                    case -759499589:
                        if (str.equals(Constants.REFERRER_API_XIAOMI)) {
                            z12 = true;
                            break;
                        }
                        z12 = true;
                        break;
                    case 3418016:
                        if (str.equals("oppo")) {
                            z12 = false;
                            break;
                        }
                        z12 = true;
                        break;
                    case 3620012:
                        if (str.equals(Constants.REFERRER_API_VIVO)) {
                            z12 = true;
                            break;
                        }
                        z12 = true;
                        break;
                    case 1864941562:
                        if (str.equals(Constants.REFERRER_API_SAMSUNG)) {
                            z12 = true;
                            break;
                        }
                        z12 = true;
                        break;
                    default:
                        z12 = true;
                        break;
                }
                if (!z12) {
                    z10 = jFA();
                } else if (z12) {
                    z10 = ba();
                } else if (z12) {
                    z10 = Pfn();
                } else if (!z12) {
                    z10 = false;
                    z11 = true;
                } else {
                    z10 = ex();
                }
                z11 = false;
            }
            if (z11 && !TextUtils.isEmpty(str2)) {
                switch (str2.hashCode()) {
                    case -759499589:
                        if (str2.equals(Constants.REFERRER_API_XIAOMI)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3418016:
                        if (str2.equals("oppo")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3620012:
                        if (str2.equals(Constants.REFERRER_API_VIVO)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1864941562:
                        if (str2.equals(Constants.REFERRER_API_SAMSUNG)) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                if (c10 == 0) {
                    z10 = jFA();
                } else if (c10 == 1) {
                    z10 = ba();
                } else if (c10 != 2) {
                    z10 = c10 != 3 ? false : ex();
                } else {
                    z10 = Pfn();
                }
            }
            a.a(atomicReference, null, Boolean.valueOf(z10));
            return z10;
        } catch (Throwable unused) {
            a.a(oJ, null, Boolean.FALSE);
            return false;
        }
    }

    private static PackageInfo dLZ(Context context) {
        try {
            String str = (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            if (str == null) {
                return null;
            }
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int ex(Context context) {
        try {
            Class.forName("com.google.android.play.core.splitinstall.SplitInstallManager");
            return 1;
        } catch (ClassNotFoundException unused) {
            return 0;
        }
    }

    private static boolean jFA(Context context) {
        try {
            Class.forName("io.flutter.embedding.android.FlutterActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libflutter.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    private static boolean kkU(Context context) {
        try {
            Class.forName("com.facebook.react.ReactActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libreactnativejni.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    public static void oJ(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (ZYk()) {
                com.bytedance.sdk.openadsdk.core.tB oJ2 = com.bytedance.sdk.openadsdk.core.tB.oJ();
                oJ2.oJ("w_ver", Pfn(context));
                oJ2.oJ("bp", ZYk(context));
                oJ2.oJ("is_fold", cFZ(context) ? 1 : 0);
                oJ2.oJ("abi", oJ());
                oJ2.oJ("t_ver", tB(context));
                oJ2.oJ(CampaignEx.JSON_KEY_AAB, ex(context));
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean so(Context context) {
        try {
            Class.forName("com.unity3d.player.UnityPlayerActivity");
            return true;
        } catch (ClassNotFoundException unused) {
            if (context == null) {
                return false;
            }
            try {
                return new File(context.getApplicationInfo().nativeLibraryDir + "/libunity.so").exists();
            } catch (Throwable unused2) {
                return false;
            }
        }
    }

    public static String tB(Context context) {
        try {
            return String.valueOf(context.getApplicationInfo().targetSdkVersion);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static boolean ex() {
        String lowerCase;
        if (dLZ()) {
            return true;
        }
        String[] strArr = {"sm-f9000", "sm-f9160", "sm-f9260", "sm-f9360", "sm-f9460", "sm-f9560", "sm-f7000", "sm-f7070", "sm-f7110", "sm-f7210", "sm-f7310", "sm-f7410"};
        String[] strArr2 = {"winner", "f2q", "q2q", "q4q", "q5q", "q6q", "bloomq", "bloomxq", "b2q", "b4q", "b5q", "b6q"};
        try {
            String lowerCase2 = Build.DEVICE.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase2)) {
                for (int i10 = 0; i10 < 12; i10++) {
                    if (lowerCase2.contains(strArr2[i10])) {
                        return true;
                    }
                }
            }
            lowerCase = Build.MODEL.toLowerCase();
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(lowerCase)) {
            return false;
        }
        for (int i11 = 0; i11 < 12; i11++) {
            if (lowerCase.contains(strArr[i11])) {
                return true;
            }
        }
        if (ZYk()) {
            String oJ2 = com.bytedance.sdk.openadsdk.oq.oJ.oJ("fold_config", "fold_samung", "");
            if (TextUtils.isEmpty(oJ2)) {
                return false;
            }
            for (String str : oJ2.split(",")) {
                if (lowerCase.contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean ZYk() {
        return com.bytedance.sdk.openadsdk.oq.oJ.oJ("fold_config", "enable", 0) == 1;
    }

    private static boolean jFA() {
        if (kkU()) {
            return true;
        }
        String[] strArr = {"CPH2439", "CPH2437", "CPH2499", "CPH2519", "PEUM00", "PGU110", "PGT110", "PHN110", "PHT110"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i10 = 0; i10 < 9; i10++) {
                    if (lowerCase.contains(strArr[i10].toLowerCase())) {
                        return true;
                    }
                }
                if (ZYk()) {
                    String tB = tB();
                    if (TextUtils.isEmpty(tB)) {
                        return false;
                    }
                    for (String str : tB.split(",")) {
                        if (lowerCase.contains(str.toLowerCase())) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean kkU() {
        try {
            Class<?> cls = Class.forName("com.oplus.content.OplusFeatureConfigManager");
            Object invoke = cls.getDeclaredMethod("hasFeature", String.class).invoke(cls.getMethod(com.unity3d.services.core.fid.Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]), "oplus.hardware.type.fold");
            if (invoke instanceof Boolean) {
                return ((Boolean) invoke).booleanValue();
            }
            return false;
        } catch (ClassNotFoundException e10) {
            e = e10;
            com.bytedance.sdk.component.utils.QSm.tB("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (IllegalAccessException e11) {
            e = e11;
            com.bytedance.sdk.component.utils.QSm.tB("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (NoSuchMethodException e12) {
            e = e12;
            com.bytedance.sdk.component.utils.QSm.tB("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (InvocationTargetException e13) {
            e = e13;
            com.bytedance.sdk.component.utils.QSm.tB("BED", "get oppo fold properties error, msg: " + e.getMessage());
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean so() {
        try {
            return ((Integer) Class.forName("android.os.SystemProperties").getMethod("getInt", String.class, Integer.TYPE).invoke(null, "persist.sys.muiltdisplay_type", 0)).intValue() == 2;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("BED", "isXiaomiFold return false " + th2.getMessage());
            return false;
        }
    }

    public static String tB() {
        return com.bytedance.sdk.openadsdk.oq.oJ.oJ("fold_config", "fold_default", "");
    }

    private static boolean Pfn() {
        if (so()) {
            return true;
        }
        String[] strArr = {"M2011J18C", "22061218C", "2308CPXD0C", "24072PX77C", "2405CPX3DC", "2405CPX3DG"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i10 = 0; i10 < 6; i10++) {
                    if (lowerCase.contains(strArr[i10])) {
                        return true;
                    }
                }
                if (ZYk()) {
                    String tB = tB();
                    if (TextUtils.isEmpty(tB)) {
                        return false;
                    }
                    for (String str : tB.split(",")) {
                        if (lowerCase.contains(str)) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean dLZ() {
        try {
            Class<?> cls = Class.forName("com.samsung.android.feature.SemFloatingFeature");
            Object invoke = cls.getMethod(com.unity3d.services.core.fid.Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
            Method declaredMethod = cls.getDeclaredMethod("getString", String.class);
            if ("TRUE".equalsIgnoreCase((String) declaredMethod.invoke(invoke, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD"))) {
                return true;
            }
            return "TRUE".equalsIgnoreCase((String) declaredMethod.invoke(invoke, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"));
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            com.bytedance.sdk.component.utils.QSm.tB("PAG_BANNER", "get ss fold device error: " + e10.getMessage());
            return false;
        }
    }

    private static boolean ba() {
        if (cFZ()) {
            return true;
        }
        String[] strArr = {"V2330", "V2178A", "V2229A", "V2303A", "V2337A", "V2256A", "V2266A"};
        try {
            String lowerCase = Build.MODEL.toLowerCase();
            if (!TextUtils.isEmpty(lowerCase)) {
                for (int i10 = 0; i10 < 7; i10++) {
                    if (lowerCase.contains(strArr[i10].toLowerCase())) {
                        return true;
                    }
                }
                if (ZYk()) {
                    String tB = tB();
                    if (TextUtils.isEmpty(tB)) {
                        return false;
                    }
                    for (String str : tB.split(",")) {
                        if (lowerCase.contains(str.toLowerCase())) {
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String oJ() {
        try {
            return Build.SUPPORTED_ABIS[0];
        } catch (Exception unused) {
            return "";
        }
    }

    public static void oJ(JSONObject jSONObject, Context context) {
        if (context == null) {
            return;
        }
        try {
            if (ZYk()) {
                com.bytedance.sdk.openadsdk.core.tB oJ2 = com.bytedance.sdk.openadsdk.core.tB.oJ();
                String ZYk2 = oJ2.ZYk("md", com.bytedance.sdk.openadsdk.core.jFA.ZYk().cFZ());
                if (!TextUtils.isEmpty(ZYk2)) {
                    jSONObject.put("md", ZYk2);
                }
                int ZYk3 = oJ2.ZYk("bp", ZYk(context));
                if (ZYk3 != 4) {
                    jSONObject.put("bp", ZYk3);
                }
                String ZYk4 = oJ2.ZYk("t_ver", tB(context));
                if (!TextUtils.isEmpty(ZYk4)) {
                    jSONObject.put("t_ver", ZYk4);
                }
                jSONObject.put("is_fold", oJ2.ZYk("is_fold", cFZ(context) ? 1 : 0));
                jSONObject.put(CampaignEx.JSON_KEY_AAB, oJ2.ZYk(CampaignEx.JSON_KEY_AAB, ex(context)));
                String ZYk5 = oJ2.ZYk("w_ver", Pfn(context));
                if (!TextUtils.isEmpty(ZYk5)) {
                    jSONObject.put("w_ver", ZYk5);
                }
                String ZYk6 = oJ2.ZYk("abi", oJ());
                if (TextUtils.isEmpty(ZYk6)) {
                    return;
                }
                jSONObject.put("abi", ZYk6);
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean cFZ() {
        try {
            return "foldable".equals(Class.forName("android.util.FtDeviceInfo").getMethod("getDeviceType", new Class[0]).invoke(null, new Object[0]));
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("BED", "isVIVOFoldDevice return false " + th2.getMessage());
            return false;
        }
    }
}
