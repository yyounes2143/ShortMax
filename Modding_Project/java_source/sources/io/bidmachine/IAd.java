package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdRequest;
import io.bidmachine.IAd;
/* loaded from: classes7.dex */
public interface IAd<SelfType extends IAd, AdRequestType extends AdRequest> {
    boolean canShow();

    void destroy();

    @Nullable
    lp.c getAuctionResult();

    boolean isDestroyed();

    boolean isExpired();

    boolean isLoaded();

    boolean isLoading();

    @NonNull
    SelfType load(AdRequestType adrequesttype);

    @NonNull
    SelfType setRendererConfiguration(@Nullable RendererConfiguration rendererConfiguration);
}
