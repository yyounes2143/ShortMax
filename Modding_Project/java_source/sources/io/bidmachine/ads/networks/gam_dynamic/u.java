package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
/* compiled from: InternalAdLoadListener.java */
/* loaded from: classes7.dex */
interface u<InternalAdType extends InternalAd> {
    void a(@NonNull InternalAdType internaladtype);

    void onAdLoadFailed(@NonNull fr.a aVar);
}
