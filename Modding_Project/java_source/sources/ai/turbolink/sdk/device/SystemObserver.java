package ai.turbolink.sdk.device;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.display.DisplayManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import com.google.android.gms.ads.RequestConfiguration;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import gt.g;
import gt.q0;
import java.io.File;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: SystemObserver.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class SystemObserver {
    private static int systemBatteryCapacity;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static String systemBatteryStatusStr = "unknown";

    /* compiled from: SystemObserver.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getAppName(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        }

        @NotNull
        public final String getAppVersion(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                if (str == null) {
                    return "";
                }
                return str;
            } catch (PackageManager.NameNotFoundException unused) {
                return "unknown";
            }
        }

        public final long getAvailableMemory(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                Object systemService = context.getSystemService("activity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
                return memoryInfo.availMem;
            } catch (Exception e10) {
                TurboLinkLogger.e("getAvailableMemory Exception:" + e10);
                return 0L;
            }
        }

        public final long getAvailableStorage(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
            } catch (Exception e10) {
                TurboLinkLogger.e("getAvailableStorage Exception:" + e10);
                return 0L;
            }
        }

        @NotNull
        public final String getBrand() {
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            return MANUFACTURER;
        }

        @NotNull
        public final String getBuildId() {
            String ID = Build.ID;
            Intrinsics.checkNotNullExpressionValue(ID, "ID");
            return ID;
        }

        @Nullable
        public final String getConnectionType(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
                Object systemService = context.getSystemService("connectivity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                Intrinsics.checkNotNull(activeNetworkInfo, "null cannot be cast to non-null type android.net.NetworkInfo");
                if (activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getType() == 1) {
                        return "wifi";
                    }
                    return "mobile";
                }
                return null;
            }
            return null;
        }

        @NotNull
        public final String getCountryCode() {
            String country = Locale.getDefault().getCountry();
            Intrinsics.checkNotNullExpressionValue(country, "getDefault().country");
            return country;
        }

        @NotNull
        public final String getCpuHardware() {
            String HARDWARE = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
            return HARDWARE;
        }

        @NotNull
        public final String getCpuType() {
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return MODEL;
        }

        public final void getCurrentBatteryPct(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            g.d(i.a(q0.b()), null, null, new SystemObserver$Companion$getCurrentBatteryPct$1(context, null), 3, null);
        }

        public final void getCurrentBatteryStatus(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            g.d(i.a(q0.b()), null, null, new SystemObserver$Companion$getCurrentBatteryStatus$1(context, null), 3, null);
        }

        @NotNull
        public final String getDeviceId(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new DeviceId(context, false).getId();
        }

        @NotNull
        public final String getDeviceModel() {
            String MODEL = Build.MODEL;
            Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
            return MODEL;
        }

        @NotNull
        public final String getDeviceName(@NotNull Context context) {
            String str;
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                str = Settings.Global.getString(context.getContentResolver(), ICEffectKeys.KEY_IS_IC_EFFECT_DEVICE_NAME);
            } catch (Exception e10) {
                TurboLinkLogger.e("Get Device Name Exception:" + e10);
                str = "";
            }
            if (str == null) {
                return "";
            }
            return str;
        }

        @NotNull
        public final DisplayMetrics getDisplayMetrics(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Object systemService = context.getSystemService("display");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
            Display display = ((DisplayManager) systemService).getDisplay(0);
            if (display != null) {
                display.getMetrics(displayMetrics);
            }
            return displayMetrics;
        }

        @NotNull
        public final String getHardware() {
            String HARDWARE = Build.HARDWARE;
            Intrinsics.checkNotNullExpressionValue(HARDWARE, "HARDWARE");
            return HARDWARE;
        }

        @NotNull
        public final String getIntentURL(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            return String.valueOf(activity.getIntent().getData());
        }

        @NotNull
        public final String getLanguage() {
            String language = Locale.getDefault().getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getDefault().language");
            return language;
        }

        @NotNull
        public final String getLocalIp() {
            String str;
            Exception e10;
            int i10;
            try {
                ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
                Intrinsics.checkNotNullExpressionValue(list, "list(NetworkInterface.getNetworkInterfaces())");
                Iterator it = list.iterator();
                str = "";
                do {
                    try {
                        if (!it.hasNext()) {
                            break;
                        }
                        ArrayList list2 = Collections.list(((NetworkInterface) it.next()).getInetAddresses());
                        Intrinsics.checkNotNullExpressionValue(list2, "list(networkInterface.inetAddresses)");
                        Iterator it2 = list2.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            InetAddress inetAddress = (InetAddress) it2.next();
                            if (!inetAddress.isLoopbackAddress()) {
                                String hostAddress = inetAddress.getHostAddress();
                                boolean z10 = false;
                                if (hostAddress != null) {
                                    i10 = StringsKt.p0(hostAddress, ':', 0, false, 6, null);
                                } else {
                                    i10 = 0;
                                }
                                if (i10 < 0) {
                                    z10 = true;
                                }
                                if (z10) {
                                    if (hostAddress == null) {
                                        str = "";
                                    } else {
                                        str = hostAddress;
                                    }
                                }
                            }
                        }
                    } catch (Exception e11) {
                        e10 = e11;
                        TurboLinkLogger.d("Get local ip exception " + e10.getMessage());
                        return str;
                    }
                } while (TextUtils.isEmpty(str));
            } catch (Exception e12) {
                str = "";
                e10 = e12;
            }
            return str;
        }

        @NotNull
        public final String getNetworkType(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
                return "";
            }
            try {
                Object systemService = context.getSystemService("connectivity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    return "";
                }
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    return "WIFI";
                }
                if (type == 0) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_G;
                }
                if (type != 17) {
                    return "";
                }
                return "VPN";
            } catch (Exception e10) {
                TurboLinkLogger.d("Get local network type exception " + e10.getMessage());
                return "";
            }
        }

        @NotNull
        public final String getOS() {
            return "Android";
        }

        @NotNull
        public final String getOsVersion() {
            String RELEASE = Build.VERSION.RELEASE;
            Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
            return RELEASE;
        }

        @NotNull
        public final String getPackageName(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                String packageName = context.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
                return packageName;
            } catch (Exception e10) {
                TurboLinkLogger.d("Get packageName exception " + e10.getMessage());
                return "";
            }
        }

        public final boolean getRootPermission() {
            String str = Build.TAGS;
            if (str != null && StringsKt.b0(str, "test-keys", false, 2, null)) {
                return true;
            }
            String[] strArr = {"/system/app/SuperSU/", "/system/bin/su", "/system/xbin/su", "/sbin/su", "/su/bin/su", "/magisk/.core"};
            for (int i10 = 0; i10 < 6; i10++) {
                if (new File(strArr[i10]).exists()) {
                    return true;
                }
            }
            try {
                Process exec = Runtime.getRuntime().exec("su");
                OutputStream outputStream = exec.getOutputStream();
                byte[] bytes = "exit\n".getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
                Unit unit = Unit.f60915a;
                b.a(outputStream, null);
                if (exec.waitFor() != 0) {
                    return false;
                }
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public final int getSystemBatteryCapacity() {
            return SystemObserver.systemBatteryCapacity;
        }

        @NotNull
        public final String getSystemBatteryStatusStr() {
            return SystemObserver.systemBatteryStatusStr;
        }

        @NotNull
        public final String getTags() {
            String TAGS = Build.TAGS;
            Intrinsics.checkNotNullExpressionValue(TAGS, "TAGS");
            return TAGS;
        }

        @NotNull
        public final String getTimeZone() {
            try {
                String id2 = TimeZone.getDefault().getID();
                Intrinsics.checkNotNullExpressionValue(id2, "getDefault().id");
                return id2;
            } catch (Exception e10) {
                TurboLinkLogger.d("Get local TimeZone exception " + e10.getMessage());
                return "";
            }
        }

        public final long getTotalMemory(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                Object systemService = context.getSystemService("activity");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                ((ActivityManager) systemService).getMemoryInfo(memoryInfo);
                return memoryInfo.totalMem;
            } catch (Exception e10) {
                TurboLinkLogger.e("getAvailableMemory Exception:" + e10);
                return 0L;
            }
        }

        public final long getTotalStorage(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                return statFs.getTotalBytes() * statFs.getBlockSizeLong();
            } catch (Exception e10) {
                TurboLinkLogger.e("getTotalStorage Exception:" + e10);
                return 0L;
            }
        }

        public final void setSystemBatteryCapacity(int i10) {
            SystemObserver.systemBatteryCapacity = i10;
        }

        public final void setSystemBatteryStatusStr(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            SystemObserver.systemBatteryStatusStr = str;
        }

        private Companion() {
        }
    }
}
