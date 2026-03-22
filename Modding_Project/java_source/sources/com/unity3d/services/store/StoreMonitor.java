package com.unity3d.services.store;

import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.store.core.StoreExceptionHandler;
import com.unity3d.services.store.core.StoreLifecycleListener;
import com.unity3d.services.store.gpbl.StoreBilling;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.FeatureSupportedListener;
import com.unity3d.services.store.gpbl.listeners.PurchaseHistoryResponseListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import com.unity3d.services.store.gpbl.listeners.SkuDetailsResponseListener;
import com.unity3d.services.store.gpbl.listeners.StoreEventListener;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StoreMonitor.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StoreMonitor {
    @NotNull
    private final e<Boolean> _isInitialized;
    @Nullable
    private StoreBilling storeBilling;
    @NotNull
    private final StoreExceptionHandler storeExceptionHandler;
    @Nullable
    private StoreLifecycleListener storeLifecycleListener;

    public StoreMonitor(@NotNull StoreExceptionHandler storeExceptionHandler) {
        Intrinsics.checkNotNullParameter(storeExceptionHandler, "storeExceptionHandler");
        this.storeExceptionHandler = storeExceptionHandler;
        this._isInitialized = o.a(Boolean.FALSE);
    }

    public final void getPurchaseHistory(int i10, @Nullable String str, int i11, @NotNull PurchaseHistoryResponseListener purchaseHistoryResponseListener) {
        Intrinsics.checkNotNullParameter(purchaseHistoryResponseListener, "purchaseHistoryResponseListener");
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                storeBilling.getPurchaseHistory(str, i11, purchaseHistoryResponseListener);
            }
        } catch (Exception e10) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.PURCHASE_HISTORY_LIST_REQUEST_ERROR, i10, e10);
        }
    }

    public final void getPurchases(int i10, @Nullable String str, @NotNull PurchasesResponseListener purchasesResponseListener) {
        Intrinsics.checkNotNullParameter(purchasesResponseListener, "purchasesResponseListener");
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                if (storeBilling != null) {
                    storeBilling.getPurchases(str, purchasesResponseListener);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Required value was null.");
        } catch (Exception e10) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.PURCHASES_REQUEST_ERROR, i10, e10);
        }
    }

    public final void getSkuDetails(int i10, @Nullable String str, @Nullable List<String> list, @NotNull SkuDetailsResponseListener skuDetailsResponseListener) {
        Intrinsics.checkNotNullParameter(skuDetailsResponseListener, "skuDetailsResponseListener");
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                storeBilling.getSkuDetails(str, list, skuDetailsResponseListener);
            }
        } catch (Exception e10) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.SKU_DETAILS_LIST_REQUEST_ERROR, i10, e10);
        }
    }

    public final void initialize(@NotNull BillingInitializationListener billingInitializationListener) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Intrinsics.checkNotNullParameter(billingInitializationListener, "billingInitializationListener");
        if (isInitialized()) {
            billingInitializationListener.onIsAlreadyInitialized();
            return;
        }
        StoreBilling storeBilling = new StoreBilling(ClientProperties.getApplicationContext(), billingInitializationListener);
        this.storeBilling = storeBilling;
        storeBilling.initialize(billingInitializationListener);
        this._isInitialized.setValue(Boolean.TRUE);
    }

    public final int isFeatureSupported(int i10, @Nullable String str, @NotNull FeatureSupportedListener featureSupportedListener) {
        Intrinsics.checkNotNullParameter(featureSupportedListener, "featureSupportedListener");
        int i11 = -1;
        try {
            StoreBilling storeBilling = this.storeBilling;
            if (storeBilling != null) {
                i11 = storeBilling.isFeatureSupported(str);
            }
            featureSupportedListener.onFeatureSupported(i11);
        } catch (Exception e10) {
            this.storeExceptionHandler.handleStoreException(StoreEvent.IS_FEATURE_SUPPORTED_REQUEST_ERROR, i10, e10);
        }
        return i11;
    }

    public final boolean isInitialized() {
        return this._isInitialized.getValue().booleanValue();
    }

    public final void startPurchaseTracking(@NotNull ArrayList<String> purchaseTypes, @NotNull StoreEventListener storeEventListener) {
        Intrinsics.checkNotNullParameter(purchaseTypes, "purchaseTypes");
        Intrinsics.checkNotNullParameter(storeEventListener, "storeEventListener");
        if (this.storeLifecycleListener != null) {
            stopPurchaseTracking();
        }
        StoreBilling storeBilling = this.storeBilling;
        Intrinsics.checkNotNull(storeBilling);
        this.storeLifecycleListener = new StoreLifecycleListener(purchaseTypes, storeBilling, storeEventListener);
        ClientProperties.getApplication().registerActivityLifecycleCallbacks(this.storeLifecycleListener);
    }

    public final void stopPurchaseTracking() {
        if (this.storeLifecycleListener != null) {
            ClientProperties.getApplication().unregisterActivityLifecycleCallbacks(this.storeLifecycleListener);
            this.storeLifecycleListener = null;
        }
    }
}
