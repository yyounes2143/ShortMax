package com.moloco.sdk.internal.services.bidtoken.providers;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.publisher.Moloco;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class x implements j<Boolean> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33262b = "SDKInitStateSignalProvider";

    /* renamed from: c  reason: collision with root package name */
    public boolean f33263c = Moloco.isInitialized();

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public void a() {
        this.f33263c = Moloco.isInitialized();
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    public boolean b() {
        boolean z10;
        StringBuilder sb2;
        boolean z11 = this.f33263c;
        boolean isInitialized = Moloco.isInitialized();
        if (z11 != isInitialized) {
            z10 = true;
        } else {
            z10 = false;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = this.f33262b;
        if (z10) {
            sb2 = new StringBuilder();
            sb2.append("[CBT] sdkInitialized updated from ");
            sb2.append(z11);
            sb2.append(" to ");
            sb2.append(isInitialized);
        } else {
            sb2 = new StringBuilder();
            sb2.append("[CBT] sdkInitialized didn't change (before: ");
            sb2.append(z11);
            sb2.append(", after: ");
            sb2.append(isInitialized);
            sb2.append(')');
        }
        MolocoLogger.debugBuildLog$default(molocoLogger, str, sb2.toString(), false, 4, null);
        return z10;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    public String c() {
        return this.f33262b;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.providers.j
    @NotNull
    /* renamed from: e */
    public Boolean d() {
        return Boolean.valueOf(this.f33263c);
    }
}
