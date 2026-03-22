package com.google.ads.mediation.bidmachine.waterfall.request;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import io.bidmachine.AdRequest;
import kotlin.jvm.internal.Intrinsics;
import vq.c;
/* loaded from: classes4.dex */
public final class e extends a {
    @Override // com.google.ads.mediation.bidmachine.waterfall.request.a
    public void a(MediationRewardedAdConfiguration adConfiguration, Bundle extras, com.google.ads.mediation.bidmachine.common.b listener) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        AdRequest build = ((c.b) a(new c.b(), extras)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        listener.onSuccess(build);
    }
}
