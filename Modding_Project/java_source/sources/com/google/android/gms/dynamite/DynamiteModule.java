package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.util.PlatformVersion;
import com.huawei.hms.framework.common.ExceptionCode;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public final class DynamiteModule {
    @KeepForSdk
    public static final int LOCAL = -1;
    @KeepForSdk
    public static final int NONE = 0;
    @KeepForSdk
    public static final int NO_SELECTION = 0;
    @KeepForSdk
    public static final int REMOTE = 1;
    private static Boolean zzc = null;
    private static String zzd = null;
    private static boolean zze = false;
    private static int zzf = -1;
    private static Boolean zzg;
    private static zzp zzl;
    private static zzq zzm;
    private final Context zzk;
    private static final ThreadLocal zzh = new ThreadLocal();
    private static final ThreadLocal zzi = new zze();
    private static final VersionPolicy.IVersions zzj = new zzf();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzg();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zzh();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzi();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzj();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzk();
    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzl();
    @NonNull
    public static final VersionPolicy zza = new zzm();
    @NonNull
    public static final VersionPolicy zzb = new zzc();

    /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
    @DynamiteApi
    /* loaded from: classes4.dex */
    public static class DynamiteLoaderClassLoader {
        @NonNull
        public static ClassLoader sClassLoader;
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, Throwable th2, byte[] bArr) {
            super(str, th2);
        }

        /* synthetic */ LoadingException(String str, byte[] bArr) {
            super(str);
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
    /* loaded from: classes4.dex */
    public interface VersionPolicy {

        /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
        @KeepForSdk
        /* loaded from: classes4.dex */
        public interface IVersions {
            int zza(@NonNull Context context, @NonNull String str, boolean z10) throws LoadingException;

            int zzb(@NonNull Context context, @NonNull String str);
        }

        /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
        @KeepForSdk
        /* loaded from: classes4.dex */
        public static class SelectionResult {
            @KeepForSdk
            public int localVersion = 0;
            @KeepForSdk
            public int remoteVersion = 0;
            @KeepForSdk
            public int selection = 0;
        }

        @NonNull
        @KeepForSdk
        SelectionResult selectModule(@NonNull Context context, @NonNull String str, @NonNull IVersions iVersions) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzk = context;
    }

    @KeepForSdk
    public static int getLocalVersion(@NonNull Context context, @NonNull String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 61);
            sb2.append("com.google.android.gms.dynamite.descriptors.");
            sb2.append(str);
            sb2.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb2.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!Objects.equal(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 50 + String.valueOf(str).length() + 1);
                sb3.append("Module descriptor id '");
                sb3.append(valueOf);
                sb3.append("' didn't match expected id '");
                sb3.append(str);
                sb3.append("'");
                Log.e("DynamiteModule", sb3.toString());
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 45);
            sb4.append("Local module descriptor class for ");
            sb4.append(str);
            sb4.append(" not found.");
            Log.w("DynamiteModule", sb4.toString());
            return 0;
        } catch (Exception e10) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e10.getMessage())));
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(@NonNull Context context, @NonNull String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02d5 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02db A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02e4 A[DONT_GENERATE] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    @androidx.annotation.NonNull
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule load(@androidx.annotation.NonNull android.content.Context r29, @androidx.annotation.NonNull com.google.android.gms.dynamite.DynamiteModule.VersionPolicy r30, @androidx.annotation.NonNull java.lang.String r31) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.load(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$VersionPolicy, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x0172, code lost:
        if (r0 != 0) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(@androidx.annotation.NonNull android.content.Context r12, @androidx.annotation.NonNull java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, java.lang.String, boolean):int");
    }

    private static boolean zzb(Context context) {
        int i10;
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(zzg)) {
            return true;
        }
        boolean z10 = false;
        if (zzg == null) {
            PackageManager packageManager = context.getPackageManager();
            if (true != PlatformVersion.isAtLeastQ()) {
                i10 = 0;
            } else {
                i10 = 268435456;
            }
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider("com.google.android.gms.chimera", i10);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, ExceptionCode.CRASH_EXCEPTION) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z10 = true;
            }
            zzg = Boolean.valueOf(z10);
            if (z10 && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                zze = true;
            }
        }
        if (!z10) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x0149, code lost:
        r9.close();
     */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0145: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:93:0x0145 */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzc(android.content.Context r15, java.lang.String r16, boolean r17, boolean r18) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzc(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static boolean zzd(Cursor cursor) {
        zzn zznVar = (zzn) zzh.get();
        if (zznVar != null && zznVar.zza == null) {
            zznVar.zza = cursor;
            return true;
        }
        return false;
    }

    private static DynamiteModule zze(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    private static void zzf(ClassLoader classLoader) throws LoadingException {
        zzq zzqVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzqVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof zzq) {
                    zzqVar = (zzq) queryLocalInterface;
                } else {
                    zzqVar = new zzq(iBinder);
                }
            }
            zzm = zzqVar;
        } catch (ClassNotFoundException e10) {
            e = e10;
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        } catch (IllegalAccessException e11) {
            e = e11;
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        } catch (InstantiationException e12) {
            e = e12;
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        } catch (NoSuchMethodException e13) {
            e = e13;
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        } catch (InvocationTargetException e14) {
            e = e14;
            throw new LoadingException("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static zzp zzg(Context context) {
        zzp zzpVar;
        synchronized (DynamiteModule.class) {
            zzp zzpVar2 = zzl;
            if (zzpVar2 != null) {
                return zzpVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof zzp) {
                        zzpVar = (zzp) queryLocalInterface;
                    } else {
                        zzpVar = new zzp(iBinder);
                    }
                }
                if (zzpVar != null) {
                    zzl = zzpVar;
                    return zzpVar;
                }
            } catch (Exception e10) {
                String message = e10.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(message).length() + 45);
                sb2.append("Failed to load IDynamiteLoader from GmsCore: ");
                sb2.append(message);
                Log.e("DynamiteModule", sb2.toString());
            }
            return null;
        }
    }

    @NonNull
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzk;
    }

    @NonNull
    @KeepForSdk
    public IBinder instantiate(@NonNull String str) throws LoadingException {
        try {
            return (IBinder) this.zzk.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e10, null);
        }
    }
}
