package wq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
import java.util.List;
import java.util.UUID;
/* compiled from: TrackingObjectImpl.java */
/* loaded from: classes8.dex */
public abstract class l implements k {
    @NonNull
    private final Object trackingKey;

    public l() {
        this(UUID.randomUUID());
    }

    @Override // wq.k
    @Nullable
    public AdExtension.EventConfiguration getEventConfiguration() {
        return null;
    }

    @Override // wq.k
    @NonNull
    public Object getTrackingKey() {
        return this.trackingKey;
    }

    @Override // wq.k
    @Nullable
    public List<String> getTrackingUrls(@NonNull TrackEventType trackEventType) {
        return null;
    }

    public l(@NonNull Object obj) {
        this.trackingKey = obj;
    }
}
