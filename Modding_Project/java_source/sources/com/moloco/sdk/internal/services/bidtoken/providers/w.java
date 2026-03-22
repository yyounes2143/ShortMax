package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.privacy.MolocoPrivacy;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class w implements j<MolocoPrivacy.PrivacySettings> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.bidtoken.x f33259b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f33260c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public MolocoPrivacy.PrivacySettings f33261d;

    public w(@NotNull com.moloco.sdk.internal.services.bidtoken.x privacyProvider) {
        Intrinsics.checkNotNullParameter(privacyProvider, "privacyProvider");
        this.f33259b = privacyProvider;
        this.f33260c = "PrivacyStateSignalProvider";
        this.f33261d = privacyProvider.getPrivacy();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33261d = this.f33259b.getPrivacy();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        String str;
        boolean areEqual = Intrinsics.areEqual(this.f33261d, this.f33259b.getPrivacy());
        boolean z10 = !areEqual;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str2 = this.f33260c;
        if (!areEqual) {
            str = "[CBT] privacy updated";
        } else {
            str = "[CBT] privacy didn't change";
        }
        MolocoLogger.debugBuildLog$default(molocoLogger, str2, str, false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return this.f33260c;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: e */
    public MolocoPrivacy.PrivacySettings d() {
        return this.f33261d;
    }
}
