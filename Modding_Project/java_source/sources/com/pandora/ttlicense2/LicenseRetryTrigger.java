package com.pandora.ttlicense2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.pandora.ttlicense2.utils.NetWorkUtils;
/* loaded from: classes6.dex */
public class LicenseRetryTrigger {
    private final LicenseRetryListener mListener;

    /* loaded from: classes6.dex */
    interface LicenseRetryListener {
        @MainThread
        void onActivityResumed();

        @MainThread
        void onNetworkConnectionChanged(@NonNull NetworkInfo networkInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public LicenseRetryTrigger(LicenseRetryListener licenseRetryListener) {
        this.mListener = licenseRetryListener;
    }

    private void registerLifeCycleDetector(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.pandora.ttlicense2.LicenseRetryTrigger.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(@NonNull Activity activity) {
                    NetWorkUtils.setEnable(activity.getApplicationContext(), false);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(@NonNull Activity activity) {
                    NetWorkUtils.setEnable(activity.getApplicationContext(), true);
                    LicenseRetryTrigger.this.mListener.onActivityResumed();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(@NonNull Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(@NonNull Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(@NonNull Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
                }
            });
        }
    }

    private void registerNetworkDetector(Context context) {
        NetWorkUtils.setNetworkInfoListener(context, new NetWorkUtils.NetworkInfoListener() { // from class: com.pandora.ttlicense2.LicenseRetryTrigger.1
            @Override // com.pandora.ttlicense2.utils.NetWorkUtils.NetworkInfoListener
            @MainThread
            public void onNetworkConnectionChanged(@NonNull NetworkInfo networkInfo) {
                LicenseRetryTrigger.this.mListener.onNetworkConnectionChanged(networkInfo);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AnyThread
    public void init(Context context) {
        registerLifeCycleDetector(context);
        registerNetworkDetector(context);
    }
}
