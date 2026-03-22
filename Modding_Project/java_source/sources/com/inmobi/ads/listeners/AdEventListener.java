package com.inmobi.ads.listeners;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.Map;
@Keep
/* loaded from: classes5.dex */
public abstract class AdEventListener<T> {
    public void onAdImpression(@NonNull T t10) {
    }

    public void onRequestPayloadCreated(byte[] bArr) {
    }

    public void onRequestPayloadCreationFailed(@NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
    }

    public void onAdClicked(@NonNull T t10, Map<Object, Object> map) {
    }

    public void onAdFetchSuccessful(@NonNull T t10, @NonNull AdMetaInfo adMetaInfo) {
    }

    public void onAdLoadFailed(@NonNull T t10, @NonNull InMobiAdRequestStatus inMobiAdRequestStatus) {
    }

    public void onAdLoadSucceeded(@NonNull T t10, @NonNull AdMetaInfo adMetaInfo) {
    }
}
