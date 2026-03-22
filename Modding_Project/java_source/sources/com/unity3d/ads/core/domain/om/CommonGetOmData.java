package com.unity3d.ads.core.domain.om;

import com.unity3d.ads.core.data.model.OMData;
import com.unity3d.ads.core.data.repository.OpenMeasurementRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CommonGetOmData.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonGetOmData implements GetOmData {
    @NotNull
    private final OpenMeasurementRepository openMeasurementRepository;

    public CommonGetOmData(@NotNull OpenMeasurementRepository openMeasurementRepository) {
        Intrinsics.checkNotNullParameter(openMeasurementRepository, "openMeasurementRepository");
        this.openMeasurementRepository = openMeasurementRepository;
    }

    @Override // com.unity3d.ads.core.domain.om.GetOmData
    @Nullable
    public Object invoke(@NotNull c<? super OMData> cVar) {
        return this.openMeasurementRepository.getOmData();
    }
}
