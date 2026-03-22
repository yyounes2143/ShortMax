package com.moloco.sdk.publisher.privacy;

import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public interface InternalMolocoPrivacySettings {
    @NotNull
    MolocoPrivacy.PrivacySettings getUpdatedPrivacySettings(@NotNull MolocoPrivacy.PrivacySettings privacySettings);
}
