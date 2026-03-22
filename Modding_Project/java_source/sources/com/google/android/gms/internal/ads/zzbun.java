package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbun implements zzbup {
    @Nullable
    @VisibleForTesting
    public static zzbup zza;
    @Nullable
    @VisibleForTesting
    static zzbup zzb;
    @Nullable
    @VisibleForTesting
    static zzbup zzc;
    @Nullable
    @VisibleForTesting
    static Boolean zzd;
    private static final Object zze = new Object();
    private final Object zzf;
    private final Context zzg;
    private final WeakHashMap zzh;
    private final ExecutorService zzi;
    private final VersionInfoParcel zzj;
    @Nullable
    private final PackageInfo zzk;
    private final String zzl;
    @Nullable
    private final String zzm;
    private final AtomicBoolean zzn;
    private boolean zzo;
    private Set zzp;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected zzbun(android.content.Context r3, com.google.android.gms.ads.internal.util.client.VersionInfoParcel r4) {
        /*
            r2 = this;
            r2.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r2.zzf = r0
            java.util.WeakHashMap r0 = new java.util.WeakHashMap
            r0.<init>()
            r2.zzh = r0
            com.google.android.gms.internal.ads.zzfrv.zza()
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.newCachedThreadPool()
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.unconfigurableExecutorService(r0)
            r2.zzi = r0
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r0.<init>()
            r2.zzn = r0
            android.content.Context r0 = r3.getApplicationContext()
            if (r0 == 0) goto L2f
            android.content.Context r3 = r3.getApplicationContext()
        L2f:
            r2.zzg = r3
            r2.zzj = r4
            com.google.android.gms.internal.ads.zzbcv r4 = com.google.android.gms.internal.ads.zzbde.zzif
            com.google.android.gms.internal.ads.zzbdc r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r0.zzb(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            r0 = 0
            if (r4 == 0) goto L50
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 == 0) goto L50
            android.content.pm.ApplicationInfo r4 = r3.getApplicationInfo()
            if (r4 != 0) goto L52
        L50:
            r3 = r0
            goto L61
        L52:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r4 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L50
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L50
            java.lang.String r3 = r3.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L50
            r1 = 0
            android.content.pm.PackageInfo r3 = r4.getPackageInfo(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L50
        L61:
            r2.zzk = r3
            com.google.android.gms.internal.ads.zzbcv r3 = com.google.android.gms.internal.ads.zzbde.zzic
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.zzb(r3)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            java.lang.String r1 = "unknown"
            if (r4 == 0) goto L82
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            java.util.Locale r4 = java.util.Locale.getDefault()
            java.lang.String r4 = r4.getCountry()
            goto L83
        L82:
            r4 = r1
        L83:
            r2.zzl = r4
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.zzb(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto Lb2
            android.content.Context r3 = r2.zzg
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 != 0) goto L9c
            goto Lb3
        L9c:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r3 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb3
            java.lang.String r4 = "com.android.vending"
            r1 = 128(0x80, float:1.794E-43)
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r4, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb3
            if (r3 != 0) goto Lab
            goto Lb3
        Lab:
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb3
            java.lang.String r0 = java.lang.Integer.toString(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb3
            goto Lb3
        Lb2:
            r0 = r1
        Lb3:
            r2.zzm = r0
            com.google.android.gms.internal.ads.zzbcv r3 = com.google.android.gms.internal.ads.zzbde.zzhY
            com.google.android.gms.internal.ads.zzbdc r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.zzb(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            if (r3 <= 0) goto Lce
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r2.zzp = r3
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbun.<init>(android.content.Context, com.google.android.gms.ads.internal.util.client.VersionInfoParcel):void");
    }

    public static zzbup zza(Context context) {
        synchronized (zze) {
            try {
                if (zza == null) {
                    if (zzl(context)) {
                        zza = new zzbun(context, VersionInfoParcel.forPackage());
                    } else {
                        zza = new zzbuo();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zza;
    }

    public static zzbup zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            try {
                if (zzc == null) {
                    boolean z10 = false;
                    if (((Boolean) zzbew.zzc.zze()).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhW)).booleanValue() || ((Boolean) zzbew.zza.zze()).booleanValue()) {
                            z10 = true;
                        }
                    }
                    if (zzl(context)) {
                        zzbun zzbunVar = new zzbun(context, versionInfoParcel);
                        zzbunVar.zzk();
                        zzbunVar.zzj();
                        zzc = zzbunVar;
                    } else if (z10 && context != null) {
                        zzbun zzbunVar2 = new zzbun(context, versionInfoParcel, true);
                        zzbunVar2.zzk();
                        zzbunVar2.zzj();
                        zzc = zzbunVar2;
                    } else {
                        zzc = new zzbuo();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzc;
    }

    public static zzbup zzc(Context context) {
        synchronized (zze) {
            try {
                if (zzb == null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhX)).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhW)).booleanValue()) {
                            zzb = new zzbun(context, VersionInfoParcel.forPackage());
                        }
                    }
                    zzb = new zzbuo();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzb;
    }

    public static zzbup zzd(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            try {
                if (zzb == null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhX)).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhW)).booleanValue()) {
                            zzb = new zzbun(context, versionInfoParcel);
                        }
                    }
                    zzb = new zzbuo();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzb;
    }

    public static String zze(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zzf(Throwable th2) {
        return zzfwg.zzc(com.google.android.gms.ads.internal.util.client.zzf.zzl(zze(th2)));
    }

    private final void zzj() {
        Thread.setDefaultUncaughtExceptionHandler(new zzbul(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private final void zzk() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.zzf) {
            this.zzh.put(thread, Boolean.TRUE);
        }
        thread.setUncaughtExceptionHandler(new zzbum(this, thread.getUncaughtExceptionHandler()));
    }

    private static boolean zzl(Context context) {
        boolean z10;
        if (context == null) {
            return false;
        }
        synchronized (zze) {
            try {
                if (zzd == null) {
                    if (com.google.android.gms.ads.internal.client.zzbb.zze().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzne)).intValue()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zzd = Boolean.valueOf(z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (zzd.booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhW)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzg(Thread thread, Throwable th2) {
        StackTraceElement[] stackTrace;
        if (th2 != null) {
            boolean z10 = false;
            boolean z11 = false;
            for (Throwable th3 = th2; th3 != null; th3 = th3.getCause()) {
                for (StackTraceElement stackTraceElement : th3.getStackTrace()) {
                    z10 |= com.google.android.gms.ads.internal.util.client.zzf.zzt(stackTraceElement.getClassName());
                    z11 |= zzbun.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzhY)).intValue();
            if (intValue > 0) {
                if (this.zzp.size() < intValue) {
                    String zzf = zzf(th2);
                    if (!this.zzp.contains(zzf)) {
                        this.zzp.add(zzf);
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (z10 && !z11) {
                if (!this.zzo) {
                    zzh(th2, "");
                }
                if (!this.zzn.getAndSet(true) && ((Boolean) zzbew.zzc.zze()).booleanValue()) {
                    zzbco.zzc(this.zzg);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzh(Throwable th2, String str) {
        if (this.zzo) {
            return;
        }
        zzi(th2, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzi(Throwable th2, String str, float f10) {
        Throwable th3;
        boolean z10;
        Throwable th4;
        String str2;
        int i10;
        String str3;
        String str4;
        PackageInfo packageInfo;
        ActivityManager.MemoryInfo zzc2;
        if (!this.zzo) {
            Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
            boolean z11 = false;
            if (((Boolean) zzbfn.zze.zze()).booleanValue()) {
                th3 = th2;
            } else {
                LinkedList linkedList = new LinkedList();
                for (Throwable th5 = th2; th5 != null; th5 = th5.getCause()) {
                    linkedList.push(th5);
                }
                th3 = null;
                while (!linkedList.isEmpty()) {
                    Throwable th6 = (Throwable) linkedList.pop();
                    StackTraceElement[] stackTrace = th6.getStackTrace();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcB)).booleanValue() && stackTrace != null && stackTrace.length == 0 && com.google.android.gms.ads.internal.util.client.zzf.zzt(th6.getClass().getName())) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new StackTraceElement(th6.getClass().getName(), "<filtered>", "<filtered>", 1));
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        if (com.google.android.gms.ads.internal.util.client.zzf.zzt(stackTraceElement.getClassName())) {
                            arrayList.add(stackTraceElement);
                            z10 = true;
                        } else {
                            String className = stackTraceElement.getClassName();
                            if (TextUtils.isEmpty(className) || (!className.startsWith("android.") && !className.startsWith("java."))) {
                                arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                            } else {
                                arrayList.add(stackTraceElement);
                            }
                        }
                    }
                    if (z10) {
                        if (th3 == null) {
                            th4 = new Throwable(th6.getMessage());
                        } else {
                            th4 = new Throwable(th6.getMessage(), th3);
                        }
                        th3 = th4;
                        th3.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                    }
                }
            }
            if (th3 != null) {
                String name = th2.getClass().getName();
                String zze2 = zze(th2);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjj)).booleanValue()) {
                    str2 = zzf(th2);
                } else {
                    str2 = "";
                }
                double d10 = f10;
                int i11 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
                double random = Math.random();
                if (i11 > 0) {
                    i10 = (int) (1.0f / f10);
                } else {
                    i10 = 1;
                }
                if (random < d10) {
                    ArrayList<String> arrayList2 = new ArrayList();
                    try {
                        z11 = Wrappers.packageManager(this.zzg).isCallerInstantApp();
                    } catch (Throwable th7) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Error fetching instant app info", th7);
                    }
                    try {
                        str3 = this.zzg.getPackageName();
                    } catch (Throwable unused) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot obtain package name, proceeding.");
                        str3 = "unknown";
                    }
                    Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z11)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE);
                    int i12 = Build.VERSION.SDK_INT;
                    Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("api", String.valueOf(i12));
                    String str5 = Build.MANUFACTURER;
                    String str6 = Build.MODEL;
                    if (!str6.startsWith(str5)) {
                        str6 = str5 + " " + str6;
                    }
                    Uri.Builder appendQueryParameter3 = appendQueryParameter2.appendQueryParameter("device", str6);
                    VersionInfoParcel versionInfoParcel = this.zzj;
                    Uri.Builder appendQueryParameter4 = appendQueryParameter3.appendQueryParameter("js", versionInfoParcel.afmaVersion).appendQueryParameter("appid", str3).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", zze2).appendQueryParameter("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbd.zza().zza())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "785558560").appendQueryParameter(DownloadCommon.DOWNLOAD_REPORT_RETRY_COUNT, "dev").appendQueryParameter("sampling_rate", Integer.toString(i10)).appendQueryParameter("pb_tm", String.valueOf(zzbfn.zzc.zze()));
                    Context context = this.zzg;
                    Uri.Builder appendQueryParameter5 = appendQueryParameter4.appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(context)));
                    String str7 = "1";
                    if (true == versionInfoParcel.isLiteSdk) {
                        str4 = "1";
                    } else {
                        str4 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    Uri.Builder appendQueryParameter6 = appendQueryParameter5.appendQueryParameter("lite", str4);
                    if (!TextUtils.isEmpty(str2)) {
                        appendQueryParameter6.appendQueryParameter("hash", str2);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzid)).booleanValue() && (zzc2 = com.google.android.gms.ads.internal.util.client.zzf.zzc(context)) != null) {
                        appendQueryParameter6.appendQueryParameter("available_memory", Long.toString(zzc2.availMem));
                        appendQueryParameter6.appendQueryParameter("total_memory", Long.toString(zzc2.totalMem));
                        if (true != zzc2.lowMemory) {
                            str7 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                        }
                        appendQueryParameter6.appendQueryParameter("is_low_memory", str7);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzic)).booleanValue()) {
                        String str8 = this.zzl;
                        if (!TextUtils.isEmpty(str8)) {
                            appendQueryParameter6.appendQueryParameter("countrycode", str8);
                        }
                        String str9 = this.zzm;
                        if (!TextUtils.isEmpty(str9)) {
                            appendQueryParameter6.appendQueryParameter("psv", str9);
                        }
                        if (i12 >= 26) {
                            packageInfo = WebView.getCurrentWebViewPackage();
                        } else {
                            if (context != null) {
                                try {
                                    packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.webview", 128);
                                } catch (PackageManager.NameNotFoundException unused2) {
                                }
                            }
                            packageInfo = null;
                        }
                        if (packageInfo != null) {
                            appendQueryParameter6.appendQueryParameter("wvvc", Integer.toString(packageInfo.versionCode));
                            appendQueryParameter6.appendQueryParameter("wvvn", packageInfo.versionName);
                            appendQueryParameter6.appendQueryParameter("wvpn", packageInfo.packageName);
                        }
                    }
                    PackageInfo packageInfo2 = this.zzk;
                    if (packageInfo2 != null) {
                        appendQueryParameter6.appendQueryParameter("appvc", String.valueOf(packageInfo2.versionCode));
                        appendQueryParameter6.appendQueryParameter("appvn", packageInfo2.versionName);
                    }
                    arrayList2.add(appendQueryParameter6.toString());
                    for (final String str10 : arrayList2) {
                        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = new com.google.android.gms.ads.internal.util.client.zzu(this.zzg, null);
                        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbuk
                            @Override // java.lang.Runnable
                            public final void run() {
                                com.google.android.gms.ads.internal.util.client.zzu.this.zza(str10);
                            }
                        });
                    }
                }
            }
        }
    }

    protected zzbun(Context context, VersionInfoParcel versionInfoParcel, boolean z10) {
        this(context, versionInfoParcel);
        this.zzo = true;
    }
}
