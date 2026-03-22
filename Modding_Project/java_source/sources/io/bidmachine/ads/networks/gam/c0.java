package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
/* compiled from: InternalGAMAdLoadListener.java */
/* loaded from: classes7.dex */
interface c0<GAMAdType extends InternalGAMAd> {
    void a(@NonNull GAMAdType gamadtype);

    void onAdLoadFailed(@NonNull fr.a aVar);
}
