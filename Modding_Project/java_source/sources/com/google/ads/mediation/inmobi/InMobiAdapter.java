package com.google.ads.mediation.inmobi;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
@Keep
/* loaded from: classes4.dex */
public final class InMobiAdapter extends InMobiMediationAdapter {
    @VisibleForTesting
    InMobiAdapter(InMobiInitializer inMobiInitializer, InMobiAdFactory inMobiAdFactory, InMobiSdkWrapper inMobiSdkWrapper) {
        super(inMobiInitializer, inMobiAdFactory, inMobiSdkWrapper);
    }

    public InMobiAdapter() {
    }
}
