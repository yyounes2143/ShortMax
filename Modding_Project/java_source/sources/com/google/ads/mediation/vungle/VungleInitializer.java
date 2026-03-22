package com.google.ads.mediation.vungle;

import android.content.Context;
import androidx.annotation.NonNull;
import com.applovin.mediation.adapters.vungle.BuildConfig;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleError;
import com.vungle.ads.VunglePrivacySettings;
import com.vungle.ads.VungleWrapperFramework;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class VungleInitializer implements InitializationListener {
    private static final VungleInitializer instance = new VungleInitializer();
    private final AtomicBoolean isInitializing = new AtomicBoolean(false);
    private final ArrayList<VungleInitializationListener> initListeners = new ArrayList<>();

    /* loaded from: classes4.dex */
    public interface VungleInitializationListener {
        void onInitializeError(AdError adError);

        void onInitializeSuccess();
    }

    private VungleInitializer() {
        VungleAds.setIntegrationName(VungleWrapperFramework.admob, BuildConfig.VERSION_NAME.replace('.', '_'));
    }

    @NonNull
    public static VungleInitializer getInstance() {
        return instance;
    }

    public void initialize(@NonNull String str, @NonNull Context context, @NonNull VungleInitializationListener vungleInitializationListener) {
        if (VungleSdkWrapper.delegate.isInitialized()) {
            vungleInitializationListener.onInitializeSuccess();
        } else if (this.isInitializing.getAndSet(true)) {
            this.initListeners.add(vungleInitializationListener);
        } else {
            updateCoppaStatus(MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment());
            VungleSdkWrapper.delegate.init(context, str, this);
            this.initListeners.add(vungleInitializationListener);
        }
    }

    @Override // com.vungle.ads.InitializationListener
    public void onError(@NonNull VungleError vungleError) {
        AdError adError = VungleMediationAdapter.getAdError(vungleError);
        Iterator<VungleInitializationListener> it = this.initListeners.iterator();
        while (it.hasNext()) {
            it.next().onInitializeError(adError);
        }
        this.initListeners.clear();
        this.isInitializing.set(false);
    }

    @Override // com.vungle.ads.InitializationListener
    public void onSuccess() {
        Iterator<VungleInitializationListener> it = this.initListeners.iterator();
        while (it.hasNext()) {
            it.next().onInitializeSuccess();
        }
        this.initListeners.clear();
        this.isInitializing.set(false);
    }

    public void updateCoppaStatus(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                VunglePrivacySettings.setCOPPAStatus(true);
                return;
            }
            return;
        }
        VunglePrivacySettings.setCOPPAStatus(false);
    }
}
