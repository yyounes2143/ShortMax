package io.bidmachine.ads.networks.gam_dynamic;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsFormat;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GAMEventTrackerImpl.java */
/* loaded from: classes7.dex */
public class k extends wq.e implements j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(@NonNull AdExtension.EventConfiguration eventConfiguration) {
        super(eventConfiguration);
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.j
    public void f(@NonNull TrackEventType trackEventType, @NonNull AdsFormat adsFormat, @NonNull wq.a aVar, @Nullable fr.a aVar2) {
        a(new wq.i(), trackEventType, null, adsFormat.getAdsType(), aVar2, aVar);
    }
}
