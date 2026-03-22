package wq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
import java.util.List;
/* compiled from: TrackingObject.java */
/* loaded from: classes8.dex */
public interface k {
    void clearEvent(@NonNull TrackEventType trackEventType);

    void eventFinish(@NonNull TrackEventType trackEventType, @Nullable AdsType adsType, @Nullable a aVar, @Nullable fr.a aVar2);

    default void eventStart(@NonNull TrackEventType trackEventType) {
        eventStart(trackEventType, null);
    }

    void eventStart(@NonNull TrackEventType trackEventType, @Nullable j jVar);

    @Nullable
    AdExtension.EventConfiguration getEventConfiguration();

    @NonNull
    Object getTrackingKey();

    @Nullable
    List<String> getTrackingUrls(@NonNull TrackEventType trackEventType);
}
