package com.google.android.gms.net;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.lang.reflect.Method;
import org.chromium.net.ApiVersion;
/* compiled from: com.google.android.gms:play-services-cronet@@17.0.1 */
/* loaded from: classes5.dex */
public class CronetProviderInstaller {
    @NonNull
    public static final String PROVIDER_NAME = "Google-Play-Services-Cronet-Provider";
    private static final String zza = "CronetProviderInstaller";
    private static final GoogleApiAvailabilityLight zzb = GoogleApiAvailabilityLight.getInstance();
    private static final Object zzc = new Object();
    @Nullable
    private static DynamiteModule zzd = null;
    private static String zze = MBridgeConstans.ENDCARD_URL_TYPE_PL;

    private CronetProviderInstaller() {
    }

    @NonNull
    public static Task<Void> installProvider(@NonNull final Context context) {
        Preconditions.checkNotNull(context, "Context must not be null");
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        if (isInstalled()) {
            taskCompletionSource.setResult(null);
            return taskCompletionSource.getTask();
        }
        new Thread(new Runnable() { // from class: com.google.android.gms.net.zza
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                try {
                    CronetProviderInstaller.zzc(context2);
                    taskCompletionSource2.setResult(null);
                } catch (Exception e10) {
                    taskCompletionSource2.setException(e10);
                }
            }
        }).start();
        return taskCompletionSource.getTask();
    }

    public static boolean isInstalled() {
        if (zza() != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static DynamiteModule zza() {
        DynamiteModule dynamiteModule;
        synchronized (zzc) {
            dynamiteModule = zzd;
        }
        return dynamiteModule;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb() {
        String str;
        synchronized (zzc) {
            str = zze;
        }
        return str;
    }

    @ShowFirstParty
    @Deprecated
    public static void zzc(@NonNull Context context) throws GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        synchronized (zzc) {
            try {
                if (isInstalled()) {
                    return;
                }
                Preconditions.checkNotNull(context, "Context must not be null");
                try {
                    ((ClassLoader) Preconditions.checkNotNull(CronetProviderInstaller.class.getClassLoader())).loadClass("org.chromium.net.CronetEngine");
                    int apiLevel = ApiVersion.getApiLevel();
                    GoogleApiAvailabilityLight googleApiAvailabilityLight = zzb;
                    googleApiAvailabilityLight.verifyGooglePlayServicesIsAvailable(context, 11925000);
                    try {
                        DynamiteModule load = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, "com.google.android.gms.cronet_dynamite");
                        try {
                            Class<?> loadClass = load.getModuleContext().getClassLoader().loadClass("org.chromium.net.impl.ImplVersion");
                            if (loadClass.getClassLoader() != CronetProviderInstaller.class.getClassLoader()) {
                                Method method = loadClass.getMethod("getApiLevel", new Class[0]);
                                Method method2 = loadClass.getMethod("getCronetVersion", new Class[0]);
                                int intValue = ((Integer) Preconditions.checkNotNull((Integer) method.invoke(null, new Object[0]))).intValue();
                                zze = (String) Preconditions.checkNotNull((String) method2.invoke(null, new Object[0]));
                                if (apiLevel > intValue) {
                                    Intent errorResolutionIntent = googleApiAvailabilityLight.getErrorResolutionIntent(context, 2, SRStrategy.KEY_CURRENT_RESOLUTION);
                                    if (errorResolutionIntent == null) {
                                        Log.e(zza, "Unable to fetch error resolution intent");
                                        throw new GooglePlayServicesNotAvailableException(2);
                                    }
                                    String str = zze;
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 174);
                                    sb2.append("Google Play Services update is required. The API Level of the client is ");
                                    sb2.append(apiLevel);
                                    sb2.append(". The API Level of the implementation is ");
                                    sb2.append(intValue);
                                    sb2.append(". The Cronet implementation version is ");
                                    sb2.append(str);
                                    throw new GooglePlayServicesRepairableException(2, sb2.toString(), errorResolutionIntent);
                                }
                                zzd = load;
                                return;
                            }
                            Log.e(zza, "ImplVersion class is missing from Cronet module.");
                            throw new GooglePlayServicesNotAvailableException(8);
                        } catch (Exception e10) {
                            Log.e(zza, "Unable to read Cronet version from the Cronet module ", e10);
                            throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(8).initCause(e10));
                        }
                    } catch (DynamiteModule.LoadingException e11) {
                        Log.e(zza, "Unable to load Cronet module", e11);
                        throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(8).initCause(e11));
                    }
                } catch (ClassNotFoundException e12) {
                    Log.e(zza, "Cronet API is not available. Have you included all required dependencies?");
                    throw ((GooglePlayServicesNotAvailableException) new GooglePlayServicesNotAvailableException(10).initCause(e12));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
