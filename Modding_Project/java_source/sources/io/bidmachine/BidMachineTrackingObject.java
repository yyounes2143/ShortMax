package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: classes7.dex */
public class BidMachineTrackingObject extends wq.h {
    public BidMachineTrackingObject() {
        super(j2.e().r());
    }

    public void eventFinish(@NonNull TrackEventType trackEventType, @Nullable AdsType adsType, @Nullable u uVar, @Nullable fr.a aVar) {
        eventFinish(trackEventType, adsType, uVar, aVar, null);
    }

    @Override // wq.k
    public /* bridge */ /* synthetic */ void eventStart(@NonNull TrackEventType trackEventType) {
        super.eventStart(trackEventType);
    }

    public BidMachineTrackingObject(@NonNull Object obj) {
        super(obj, j2.e().r());
    }

    public void eventFinish(@NonNull TrackEventType trackEventType, @Nullable AdsType adsType, @Nullable u uVar, @Nullable fr.a aVar, @Nullable Map<String, Object> map) {
        wq.a aVar2;
        if (uVar != null) {
            aVar2 = new wq.a().h(uVar.D().a()).i(Double.valueOf(uVar.F()));
            if (map != null) {
                aVar2.a(map);
            }
            lp.a A = uVar.A();
            if (A != null) {
                aVar2.a(A.getCustomParams());
            }
        } else {
            aVar2 = null;
        }
        eventFinish(trackEventType, adsType, aVar2, aVar);
    }
}
