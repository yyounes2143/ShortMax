package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.privacy.InternalMolocoPrivacySettings;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class v implements x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final InternalMolocoPrivacySettings f33290a;

    public v(@NotNull InternalMolocoPrivacySettings internalMolocoPrivacySettings) {
        Intrinsics.checkNotNullParameter(internalMolocoPrivacySettings, "internalMolocoPrivacySettings");
        this.f33290a = internalMolocoPrivacySettings;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.x
    @NotNull
    public MolocoPrivacy.PrivacySettings getPrivacy() {
        return this.f33290a.getUpdatedPrivacySettings(MolocoPrivacy.INSTANCE.getPrivacySettings());
    }
}
