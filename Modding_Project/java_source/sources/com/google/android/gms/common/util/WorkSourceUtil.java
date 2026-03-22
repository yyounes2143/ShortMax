package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class WorkSourceUtil {
    private static final int zza = Process.myUid();
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;
    private static final Method zzi;
    @GuardedBy("WorkSourceUtil.class")
    private static Boolean zzj;

    /* JADX WARN: Removed duplicated region for block: B:47:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "add"
            java.lang.Class<android.os.WorkSource> r2 = android.os.WorkSource.class
            int r3 = android.os.Process.myUid()
            com.google.android.gms.common.util.WorkSourceUtil.zza = r3
            r3 = 0
            java.lang.Class r4 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L18
            java.lang.Class[] r4 = new java.lang.Class[]{r4}     // Catch: java.lang.Exception -> L18
            java.lang.reflect.Method r4 = r2.getMethod(r1, r4)     // Catch: java.lang.Exception -> L18
            goto L19
        L18:
            r4 = r3
        L19:
            com.google.android.gms.common.util.WorkSourceUtil.zzb = r4
            java.lang.Class r4 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L26
            java.lang.Class[] r4 = new java.lang.Class[]{r4, r0}     // Catch: java.lang.Exception -> L26
            java.lang.reflect.Method r1 = r2.getMethod(r1, r4)     // Catch: java.lang.Exception -> L26
            goto L27
        L26:
            r1 = r3
        L27:
            com.google.android.gms.common.util.WorkSourceUtil.zzc = r1
            r1 = 0
            java.lang.String r4 = "size"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L33
            java.lang.reflect.Method r4 = r2.getMethod(r4, r5)     // Catch: java.lang.Exception -> L33
            goto L34
        L33:
            r4 = r3
        L34:
            com.google.android.gms.common.util.WorkSourceUtil.zzd = r4
            java.lang.String r4 = "get"
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L43
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.Exception -> L43
            java.lang.reflect.Method r4 = r2.getMethod(r4, r5)     // Catch: java.lang.Exception -> L43
            goto L44
        L43:
            r4 = r3
        L44:
            com.google.android.gms.common.util.WorkSourceUtil.zze = r4
            java.lang.String r4 = "getName"
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L53
            java.lang.Class[] r5 = new java.lang.Class[]{r5}     // Catch: java.lang.Exception -> L53
            java.lang.reflect.Method r4 = r2.getMethod(r4, r5)     // Catch: java.lang.Exception -> L53
            goto L54
        L53:
            r4 = r3
        L54:
            com.google.android.gms.common.util.WorkSourceUtil.zzf = r4
            boolean r4 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            java.lang.String r5 = "WorkSourceUtil"
            if (r4 == 0) goto L6d
            java.lang.String r4 = "createWorkChain"
            java.lang.Class[] r6 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L67
            java.lang.reflect.Method r4 = r2.getMethod(r4, r6)     // Catch: java.lang.Exception -> L67
            goto L6e
        L67:
            r4 = move-exception
            java.lang.String r6 = "Missing WorkChain API createWorkChain"
            android.util.Log.w(r5, r6, r4)
        L6d:
            r4 = r3
        L6e:
            com.google.android.gms.common.util.WorkSourceUtil.zzg = r4
            boolean r4 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r4 == 0) goto L8f
            java.lang.String r4 = "android.os.WorkSource$WorkChain"
            java.lang.Class r4 = java.lang.Class.forName(r4)     // Catch: java.lang.Exception -> L89
            java.lang.String r6 = "addNode"
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L89
            java.lang.Class[] r0 = new java.lang.Class[]{r7, r0}     // Catch: java.lang.Exception -> L89
            java.lang.reflect.Method r0 = r4.getMethod(r6, r0)     // Catch: java.lang.Exception -> L89
            goto L90
        L89:
            r0 = move-exception
            java.lang.String r4 = "Missing WorkChain class"
            android.util.Log.w(r5, r4, r0)
        L8f:
            r0 = r3
        L90:
            com.google.android.gms.common.util.WorkSourceUtil.zzh = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r0 == 0) goto La5
            java.lang.String r0 = "isEmpty"
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> La5
            java.lang.reflect.Method r0 = r2.getMethod(r0, r1)     // Catch: java.lang.Exception -> La5
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> La6
            goto La6
        La5:
            r0 = r3
        La6:
            com.google.android.gms.common.util.WorkSourceUtil.zzi = r0
            com.google.android.gms.common.util.WorkSourceUtil.zzj = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.<clinit>():void");
    }

    private WorkSourceUtil() {
    }

    @KeepForSdk
    public static void add(@NonNull WorkSource workSource, int i10, @NonNull String str) {
        Method method = zzc;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i10), str);
                return;
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i10));
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackage(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                    return null;
                }
                int i10 = applicationInfo.uid;
                WorkSource workSource = new WorkSource();
                add(workSource, i10, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Method method;
        if (context != null && context.getPackageManager() != null && str2 != null && str != null) {
            int i10 = -1;
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                } else {
                    i10 = applicationInfo.uid;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
            if (i10 < 0) {
                return null;
            }
            WorkSource workSource = new WorkSource();
            Method method2 = zzg;
            if (method2 != null && (method = zzh) != null) {
                try {
                    Object invoke = method2.invoke(workSource, new Object[0]);
                    int i11 = zza;
                    if (i10 != i11) {
                        method.invoke(invoke, Integer.valueOf(i10), str);
                    }
                    method.invoke(invoke, Integer.valueOf(i11), str2);
                } catch (Exception e10) {
                    Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e10);
                }
            } else {
                add(workSource, i10, str);
            }
            return workSource;
        }
        Log.w("WorkSourceUtil", "Unexpected null arguments");
        return null;
    }

    @KeepForSdk
    public static int get(@NonNull WorkSource workSource, int i10) {
        Method method = zze;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, Integer.valueOf(i10));
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return 0;
            }
        }
        return 0;
    }

    @NonNull
    @KeepForSdk
    public static String getName(@NonNull WorkSource workSource, int i10) {
        Method method = zzf;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i10));
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return null;
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static List<String> getNames(@NonNull WorkSource workSource) {
        int size;
        ArrayList arrayList = new ArrayList();
        if (workSource == null) {
            size = 0;
        } else {
            size = size(workSource);
        }
        if (size != 0) {
            for (int i10 = 0; i10 < size; i10++) {
                String name = getName(workSource, i10);
                if (!Strings.isEmptyOrWhitespace(name)) {
                    Preconditions.checkNotNull(name);
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static synchronized boolean hasWorkSourcePermission(@NonNull Context context) {
        synchronized (WorkSourceUtil.class) {
            Boolean bool = zzj;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z10 = false;
            if (context == null) {
                return false;
            }
            if (ContextCompat.checkSelfPermission(context, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                z10 = true;
            }
            zzj = Boolean.valueOf(z10);
            return z10;
        }
    }

    @KeepForSdk
    public static boolean isEmpty(@NonNull WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e10) {
                Log.e("WorkSourceUtil", "Unable to check WorkSource emptiness", e10);
            }
        }
        if (size(workSource) != 0) {
            return false;
        }
        return true;
    }

    @KeepForSdk
    public static int size(@NonNull WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
            }
        }
        return 0;
    }
}
