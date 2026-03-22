package com.unity3d.ads.core.domain;

import com.google.protobuf.kotlin.ByteStringsKt;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.AdRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonGetAdObject.kt */
@c
@Metadata
/* loaded from: classes7.dex */
public final class CommonGetAdObject implements GetAdObject {
    @NotNull
    private final AdRepository adRepository;

    public CommonGetAdObject(@NotNull AdRepository adRepository) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        this.adRepository = adRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetAdObject
    @Nullable
    public AdObject invoke(@NotNull String opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        return this.adRepository.getAd(ByteStringsKt.toByteStringUtf8(opportunityId));
    }
}
