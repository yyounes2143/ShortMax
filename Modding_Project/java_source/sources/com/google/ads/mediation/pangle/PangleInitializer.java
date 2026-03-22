package com.google.ads.mediation.pangle;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.google.android.gms.ads.AdError;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class PangleInitializer implements PAGSdk.PAGInitCallback {
    private static PangleInitializer instance;
    private final ArrayList<Listener> initListeners;
    private boolean isInitialized;
    private boolean isInitializing;
    private final PangleFactory pangleFactory;
    private final PangleSdkWrapper pangleSdkWrapper;

    /* loaded from: classes4.dex */
    public interface Listener {
        void onInitializeError(@NonNull AdError adError);

        void onInitializeSuccess();
    }

    private PangleInitializer() {
        this.isInitializing = false;
        this.isInitialized = false;
        this.initListeners = new ArrayList<>();
        this.pangleSdkWrapper = new PangleSdkWrapper();
        this.pangleFactory = new PangleFactory();
    }

    @NonNull
    public static PangleInitializer getInstance() {
        if (instance == null) {
            instance = new PangleInitializer();
        }
        return instance;
    }

    @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
    public void fail(int i10, @NonNull String str) {
        this.isInitializing = false;
        this.isInitialized = false;
        AdError createSdkError = PangleConstants.createSdkError(i10, str);
        Iterator<Listener> it = this.initListeners.iterator();
        while (it.hasNext()) {
            it.next().onInitializeError(createSdkError);
        }
        this.initListeners.clear();
    }

    public void initialize(@NonNull Context context, @NonNull String str, @NonNull Listener listener) {
        if (TextUtils.isEmpty(str)) {
            AdError createAdapterError = PangleConstants.createAdapterError(101, "Failed to initialize Pangle SDK. Missing or invalid App ID.");
            Log.w(PangleMediationAdapter.TAG, createAdapterError.toString());
            listener.onInitializeError(createAdapterError);
        } else if (this.isInitializing) {
            this.initListeners.add(listener);
        } else if (this.isInitialized) {
            listener.onInitializeSuccess();
        } else {
            this.isInitializing = true;
            this.initListeners.add(listener);
            this.pangleSdkWrapper.init(context, this.pangleFactory.createPAGConfigBuilder().appId(str).setAdxId(PangleConstants.ADX_ID).setGDPRConsent(PangleMediationAdapter.getGDPRConsent()).setUserData(String.format("[{\"name\":\"mediation\",\"value\":\"google\"},{\"name\":\"adapter_version\",\"value\":\"%s\"}]", "7.5.0.4.0")).build(), this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
    public void success() {
        this.isInitializing = false;
        this.isInitialized = true;
        Iterator<Listener> it = this.initListeners.iterator();
        while (it.hasNext()) {
            it.next().onInitializeSuccess();
        }
        this.initListeners.clear();
    }

    @VisibleForTesting
    public PangleInitializer(PangleSdkWrapper pangleSdkWrapper, PangleFactory pangleFactory) {
        this.isInitializing = false;
        this.isInitialized = false;
        this.initListeners = new ArrayList<>();
        this.pangleSdkWrapper = pangleSdkWrapper;
        this.pangleFactory = pangleFactory;
    }
}
