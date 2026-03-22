package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidAdRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidAdRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAdRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidAdRepository\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n73#2,2:40\n1#3:42\n*S KotlinDebug\n*F\n+ 1 AndroidAdRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidAdRepository\n*L\n24#1:40,2\n24#1:42\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidAdRepository implements AdRepository {
    @NotNull
    private final ConcurrentHashMap<ByteString, AdObject> loadedAds = new ConcurrentHashMap<>();
    @NotNull
    private final ConcurrentHashMap<String, List<ByteString>> placementsLoadedAds = new ConcurrentHashMap<>();

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void addAd(@NotNull ByteString opportunityId, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        this.loadedAds.put(opportunityId, adObject);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void enqueueOpportunityForPlacement(@NotNull String placementId, @NotNull ByteString opportunityId) {
        List<ByteString> putIfAbsent;
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        ConcurrentHashMap<String, List<ByteString>> concurrentHashMap = this.placementsLoadedAds;
        List<ByteString> list = concurrentHashMap.get(placementId);
        if (list == null && (putIfAbsent = concurrentHashMap.putIfAbsent(placementId, (list = new ArrayList<>()))) != null) {
            list = putIfAbsent;
        }
        list.add(opportunityId);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @Nullable
    public AdObject getAd(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        return this.loadedAds.get(opportunityId);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @NotNull
    public Map<ByteString, AdObject> getAllAds() {
        return p0.x(this.loadedAds);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public boolean hasOpportunityId(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        return this.loadedAds.containsKey(opportunityId);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @Nullable
    public ByteString pollOpportunityIdForPlacement(@NotNull String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        List<ByteString> list = this.placementsLoadedAds.get(placementId);
        if (list != null) {
            return (ByteString) CollectionsKt.Q(list);
        }
        return null;
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void removeAd(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        this.loadedAds.remove(opportunityId);
    }
}
