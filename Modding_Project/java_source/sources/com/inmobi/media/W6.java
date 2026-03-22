package com.inmobi.media;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class W6 implements GoogleApiClient.ConnectionCallbacks {
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Intrinsics.checkNotNullExpressionValue(X6.f24366e, "access$getTAG$p(...)");
        X6.f24367f = true;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i10) {
        X6.f24367f = false;
        Intrinsics.checkNotNullExpressionValue(X6.f24366e, "access$getTAG$p(...)");
    }
}
