package com.vungle.ads;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BidTokenCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public interface BidTokenCallback {
    void onBidTokenCollected(@NotNull String str);

    void onBidTokenError(@NotNull String str);
}
