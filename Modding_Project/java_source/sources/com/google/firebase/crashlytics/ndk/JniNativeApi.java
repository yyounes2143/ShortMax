package com.google.firebase.crashlytics.ndk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
class JniNativeApi implements e {

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f20889b;

    /* renamed from: c  reason: collision with root package name */
    private static final FilenameFilter f20890c = new FilenameFilter() { // from class: com.google.firebase.crashlytics.ndk.d
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean g10;
            g10 = JniNativeApi.g(file, str);
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Context f20891a;

    static {
        boolean z10;
        try {
            System.loadLibrary("crashlytics");
            z10 = true;
        } catch (UnsatisfiedLinkError e10) {
            z7.g.f().d("libcrashlytics could not be loaded. This APK may not have been compiled for this device's architecture. NDK crashes will not be reported to Crashlytics:\n" + e10.getLocalizedMessage());
            z10 = false;
        }
        f20889b = z10;
    }

    public JniNativeApi(Context context) {
        this.f20891a = context;
    }

    @TargetApi(21)
    public static void c(List<String> list, PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr != null) {
            Collections.addAll(list, strArr);
        }
        File file = new File(applicationInfo.dataDir, String.format("files/splitcompat/%s/verified-splits", e(packageInfo)));
        if (!file.exists()) {
            z7.g.f().b("No dynamic features found at " + file.getAbsolutePath());
            return;
        }
        File[] listFiles = file.listFiles(f20890c);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        z7.g.f().b("Found " + listFiles.length + " APKs in " + file.getAbsolutePath());
        for (File file2 : listFiles) {
            z7.g.f().b("Adding " + file2.getName() + " to classpath.");
            list.add(file2.getAbsolutePath());
        }
    }

    private static int d() {
        return AVMDLDataLoader.KeyIsLoaderCacheSize;
    }

    private static String e(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return Long.toString(longVersionCode);
        }
        return Integer.toString(packageInfo.versionCode);
    }

    public static boolean f() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g(File file, String str) {
        return str.toLowerCase().endsWith(".apk");
    }

    private native boolean nativeInit(String[] strArr, Object obj);

    @Override // com.google.firebase.crashlytics.ndk.e
    public boolean a(String str, AssetManager assetManager) {
        String[] h10 = h(Build.CPU_ABI);
        if (h10.length < 2) {
            return false;
        }
        String str2 = h10[0];
        String str3 = h10[1];
        if (!f20889b || !nativeInit(new String[]{str2, str3, str}, assetManager)) {
            return false;
        }
        return true;
    }

    public String[] h(String str) {
        try {
            PackageInfo packageInfo = this.f20891a.getPackageManager().getPackageInfo(this.f20891a.getPackageName(), d());
            ArrayList<String> arrayList = new ArrayList(10);
            arrayList.add(packageInfo.applicationInfo.sourceDir);
            if (f()) {
                c(arrayList, packageInfo);
            }
            String[] strArr = packageInfo.applicationInfo.sharedLibraryFiles;
            if (strArr != null) {
                Collections.addAll(arrayList, strArr);
            }
            ArrayList arrayList2 = new ArrayList(10);
            File parentFile = new File(packageInfo.applicationInfo.nativeLibraryDir).getParentFile();
            if (parentFile != null) {
                arrayList2.add(new File(parentFile, str).getPath());
                if (str.startsWith("arm64")) {
                    arrayList2.add(new File(parentFile, "arm64").getPath());
                } else if (str.startsWith("arm")) {
                    arrayList2.add(new File(parentFile, "arm").getPath());
                }
            }
            for (String str2 : arrayList) {
                if (str2.endsWith(".apk")) {
                    arrayList2.add(str2 + "!/lib/" + str);
                }
            }
            arrayList2.add(System.getProperty("java.library.path"));
            arrayList2.add(packageInfo.applicationInfo.nativeLibraryDir);
            String str3 = File.pathSeparator;
            return new String[]{TextUtils.join(str3, arrayList), TextUtils.join(str3, arrayList2)};
        } catch (PackageManager.NameNotFoundException e10) {
            z7.g.f().e("Unable to compose package paths", e10);
            throw new RuntimeException(e10);
        }
    }
}
