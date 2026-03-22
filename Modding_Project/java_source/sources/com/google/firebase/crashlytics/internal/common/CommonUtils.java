package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.inmobi.commons.core.configs.AdConfig;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
/* loaded from: classes5.dex */
public class CommonUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f20672a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* loaded from: classes5.dex */
    enum Architecture {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        
        private static final Map<String, Architecture> matcher;

        static {
            Architecture architecture;
            Architecture architecture2;
            Architecture architecture3;
            HashMap hashMap = new HashMap(4);
            matcher = hashMap;
            hashMap.put("armeabi-v7a", architecture2);
            hashMap.put("armeabi", architecture);
            hashMap.put("arm64-v8a", architecture3);
            hashMap.put("x86", r0);
        }

        static Architecture getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                z7.g.f().i("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            Architecture architecture = matcher.get(str.toLowerCase(Locale.US));
            if (architecture == null) {
                return UNKNOWN;
            }
            return architecture;
        }
    }

    public static String A(String str) {
        return s(str, AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    public static String B(InputStream inputStream) {
        String str;
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        try {
            if (useDelimiter.hasNext()) {
                str = useDelimiter.next();
            } else {
                str = "";
            }
            useDelimiter.close();
            return str;
        } catch (Throwable th2) {
            if (useDelimiter != null) {
                try {
                    useDelimiter.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public static long a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static synchronized long b(Context context) {
        long j10;
        synchronized (CommonUtils.class) {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            j10 = memoryInfo.totalMem;
        }
        return j10;
    }

    public static long c(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (blockSize * statFs.getAvailableBlocks());
    }

    @SuppressLint({"MissingPermission"})
    public static boolean d(Context context) {
        if (!e(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static boolean e(Context context, String str) {
        if (context.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        return false;
    }

    public static void f(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                z7.g.f().e(str, e10);
            }
        }
    }

    public static void g(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static String h(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : arrayList) {
            sb2.append(str2);
        }
        String sb3 = sb2.toString();
        if (sb3.length() <= 0) {
            return null;
        }
        return A(sb3);
    }

    public static boolean i(Context context, String str, boolean z10) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int p10 = p(context, str, "bool");
            if (p10 > 0) {
                return resources.getBoolean(p10);
            }
            int p11 = p(context, str, TypedValues.Custom.S_STRING);
            if (p11 > 0) {
                return Boolean.parseBoolean(context.getString(p11));
            }
        }
        return z10;
    }

    public static List<f> j(Context context) {
        ArrayList arrayList = new ArrayList();
        int p10 = p(context, "com.google.firebase.crashlytics.build_ids_lib", "array");
        int p11 = p(context, "com.google.firebase.crashlytics.build_ids_arch", "array");
        int p12 = p(context, "com.google.firebase.crashlytics.build_ids_build_id", "array");
        if (p10 != 0 && p11 != 0 && p12 != 0) {
            String[] stringArray = context.getResources().getStringArray(p10);
            String[] stringArray2 = context.getResources().getStringArray(p11);
            String[] stringArray3 = context.getResources().getStringArray(p12);
            if (stringArray.length == stringArray3.length && stringArray2.length == stringArray3.length) {
                for (int i10 = 0; i10 < stringArray3.length; i10++) {
                    arrayList.add(new f(stringArray[i10], stringArray2[i10], stringArray3[i10]));
                }
                return arrayList;
            }
            z7.g.f().b(String.format("Lengths did not match: %d %d %d", Integer.valueOf(stringArray.length), Integer.valueOf(stringArray2.length), Integer.valueOf(stringArray3.length)));
            return arrayList;
        }
        z7.g.f().b(String.format("Could not find resources: %d %d %d", Integer.valueOf(p10), Integer.valueOf(p11), Integer.valueOf(p12)));
        return arrayList;
    }

    public static int k() {
        return Architecture.getValue().ordinal();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public static int l() {
        boolean x10 = x();
        ?? r02 = x10;
        if (y()) {
            r02 = (x10 ? 1 : 0) | true;
        }
        if (w()) {
            return r02 | 4;
        }
        return r02;
    }

    public static String m(Context context) {
        int p10 = p(context, "com.google.firebase.crashlytics.mapping_file_id", TypedValues.Custom.S_STRING);
        if (p10 == 0) {
            p10 = p(context, "com.crashlytics.android.build_id", TypedValues.Custom.S_STRING);
        }
        if (p10 != 0) {
            return context.getResources().getString(p10);
        }
        return null;
    }

    public static boolean n(Context context) {
        if (x() || ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) {
            return false;
        }
        return true;
    }

    public static String o(Context context) {
        int i10 = context.getApplicationContext().getApplicationInfo().icon;
        if (i10 > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i10);
                if ("android".equals(resourcePackageName)) {
                    return context.getPackageName();
                }
                return resourcePackageName;
            } catch (Resources.NotFoundException unused) {
                return context.getPackageName();
            }
        }
        return context.getPackageName();
    }

    public static int p(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, o(context));
    }

    public static SharedPreferences q(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    @Nullable
    public static String r(Context context) {
        int p10 = p(context, "com.google.firebase.crashlytics.version_control_info", TypedValues.Custom.S_STRING);
        if (p10 == 0) {
            return null;
        }
        return context.getResources().getString(p10);
    }

    private static String s(String str, String str2) {
        return t(str.getBytes(), str2);
    }

    private static String t(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return u(messageDigest.digest());
        } catch (NoSuchAlgorithmException e10) {
            z7.g f10 = z7.g.f();
            f10.e("Could not create hashing algorithm: " + str + ", returning empty string.", e10);
            return "";
        }
    }

    public static String u(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            int i11 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i12 = i10 * 2;
            char[] cArr2 = f20672a;
            cArr[i12] = cArr2[i11 >>> 4];
            cArr[i12 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    public static boolean v(Context context) {
        if ((context.getApplicationInfo().flags & 2) != 0) {
            return true;
        }
        return false;
    }

    public static boolean w() {
        if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger()) {
            return false;
        }
        return true;
    }

    public static boolean x() {
        if (!Build.PRODUCT.contains(ServiceProvider.NAMED_SDK)) {
            String str = Build.HARDWARE;
            if (!str.contains("goldfish") && !str.contains("ranchu")) {
                return false;
            }
        }
        return true;
    }

    public static boolean y() {
        boolean x10 = x();
        String str = Build.TAGS;
        if ((!x10 && str != null && str.contains("test-keys")) || new File("/system/app/Superuser.apk").exists()) {
            return true;
        }
        File file = new File("/system/xbin/su");
        if (!x10 && file.exists()) {
            return true;
        }
        return false;
    }

    public static boolean z(@Nullable String str, @Nullable String str2) {
        if (str == null) {
            if (str2 == null) {
                return true;
            }
            return false;
        }
        return str.equals(str2);
    }
}
