package io.bidmachine;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
/* loaded from: classes7.dex */
public abstract class HeaderBiddingAdapter extends NetworkAdapter {
    /* JADX INFO: Access modifiers changed from: protected */
    public HeaderBiddingAdapter(@NonNull String str, @NonNull String str2, @NonNull String str3, int i10, @NonNull AdsType[] adsTypeArr) {
        super(str, str2, str3, i10, adsTypeArr);
    }

    @WorkerThread
    public final void collectHeaderBiddingParams(@NonNull ContextProvider contextProvider, @NonNull xq.d dVar, @NonNull NetworkAdUnit networkAdUnit, @NonNull HeaderBiddingAdRequestParams headerBiddingAdRequestParams, @NonNull HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable {
        int adapterMinDeviceApiVersion = getAdapterMinDeviceApiVersion();
        if (Build.VERSION.SDK_INT < adapterMinDeviceApiVersion) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.a("minSdkVersion is " + adapterMinDeviceApiVersion));
        } else if (!isInitialized(contextProvider)) {
            headerBiddingCollectParamsCallback.onCollectFail(fr.a.d());
        } else {
            onCollectHeaderBiddingParams(contextProvider, dVar, networkAdUnit, headerBiddingAdRequestParams, headerBiddingCollectParamsCallback);
        }
    }

    @WorkerThread
    protected abstract void onCollectHeaderBiddingParams(@NonNull ContextProvider contextProvider, @NonNull xq.d dVar, @NonNull NetworkAdUnit networkAdUnit, @NonNull HeaderBiddingAdRequestParams headerBiddingAdRequestParams, @NonNull HeaderBiddingCollectParamsCallback headerBiddingCollectParamsCallback) throws Throwable;
}
