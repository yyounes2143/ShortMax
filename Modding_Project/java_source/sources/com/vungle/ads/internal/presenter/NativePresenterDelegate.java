package com.vungle.ads.internal.presenter;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: NativePresenterDelegate.kt */
@Metadata
/* loaded from: classes7.dex */
public interface NativePresenterDelegate {
    @Nullable
    List<String> getImpressionUrls();

    @Nullable
    String getPlacementRefId();
}
