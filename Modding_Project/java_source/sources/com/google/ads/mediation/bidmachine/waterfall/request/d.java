package com.google.ads.mediation.bidmachine.waterfall.request;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import io.bidmachine.AdRequest;
import io.bidmachine.nativead.NativeRequest;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class d extends a {
    @Override // com.google.ads.mediation.bidmachine.waterfall.request.a
    public void a(MediationNativeAdConfiguration adConfiguration, Bundle extras, com.google.ads.mediation.bidmachine.common.b listener) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listener, "listener");
        AdRequest build = ((NativeRequest.Builder) a(new NativeRequest.Builder(), extras)).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        listener.onSuccess(build);
    }
}
