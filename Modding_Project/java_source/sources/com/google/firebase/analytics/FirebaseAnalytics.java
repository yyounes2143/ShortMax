package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.c;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class FirebaseAnalytics {

    /* renamed from: b  reason: collision with root package name */
    private static volatile FirebaseAnalytics f20329b;

    /* renamed from: a  reason: collision with root package name */
    private final zzfb f20330a;

    /* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
    /* loaded from: classes5.dex */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
    /* loaded from: classes5.dex */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    public FirebaseAnalytics(zzfb zzfbVar) {
        Preconditions.checkNotNull(zzfbVar);
        this.f20330a = zzfbVar;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f20329b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f20329b == null) {
                        f20329b = new FirebaseAnalytics(zzfb.zza(context, null));
                    }
                } finally {
                }
            }
        }
        return f20329b;
    }

    @Nullable
    @Keep
    public static zzlk getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        zzfb zza = zzfb.zza(context, bundle);
        if (zza == null) {
            return null;
        }
        return new a(zza);
    }

    public void a(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.f20330a.zzh(str, bundle);
    }

    public void b(@Nullable String str) {
        this.f20330a.zzo(str);
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(c.p().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f20330a.zzp(zzdf.zza(activity), str, str2);
    }
}
