package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrivacyDeviceInfoDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface PrivacyDeviceInfoDataSource {

    /* compiled from: PrivacyDeviceInfoDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ PiiOuterClass.Pii fetch$default(PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource, AllowedPiiOuterClass.AllowedPii allowedPii, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    allowedPii = AllowedPiiOuterClass.AllowedPii.getDefaultInstance();
                    Intrinsics.checkNotNullExpressionValue(allowedPii, "getDefaultInstance()");
                }
                return privacyDeviceInfoDataSource.fetch(allowedPii);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetch");
        }
    }

    @NotNull
    PiiOuterClass.Pii fetch(@NotNull AllowedPiiOuterClass.AllowedPii allowedPii);
}
