package com.google.ads.mediation.moloco;

import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: MolocoAdapterUtils.kt */
@Metadata
/* loaded from: classes4.dex */
public final class MolocoAdapterUtils {
    @NotNull
    public static final MolocoAdapterUtils INSTANCE = new MolocoAdapterUtils();

    private MolocoAdapterUtils() {
    }

    @NotNull
    public static final String getAdapterVersion() {
        return "4.0.0.0";
    }

    public static final void setMolocoIsAgeRestricted(boolean z10) {
        MolocoPrivacy molocoPrivacy = MolocoPrivacy.INSTANCE;
        MolocoPrivacy.setPrivacy(new MolocoPrivacy.PrivacySettings(molocoPrivacy.getPrivacySettings().isUserConsent(), Boolean.valueOf(z10), molocoPrivacy.getPrivacySettings().isDoNotSell()));
    }

    public static /* synthetic */ void getAdapterVersion$annotations() {
    }
}
