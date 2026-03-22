package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public interface AdRepository {
    void addAd(@NotNull ByteString byteString, @NotNull AdObject adObject);

    void enqueueOpportunityForPlacement(@NotNull String str, @NotNull ByteString byteString);

    @Nullable
    AdObject getAd(@NotNull ByteString byteString);

    @NotNull
    Map<ByteString, AdObject> getAllAds();

    boolean hasOpportunityId(@NotNull ByteString byteString);

    @Nullable
    ByteString pollOpportunityIdForPlacement(@NotNull String str);

    void removeAd(@NotNull ByteString byteString);
}
