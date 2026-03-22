package com.vungle.ads.internal.load;

import com.vungle.ads.VungleError;
import com.vungle.ads.internal.model.AdPayload;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdLoaderCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public interface AdLoaderCallback {
    void onFailure(@NotNull VungleError vungleError);

    void onSuccess(@NotNull AdPayload adPayload);
}
