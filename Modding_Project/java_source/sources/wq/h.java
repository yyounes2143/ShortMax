package wq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import java.util.UUID;
/* compiled from: SessionTrackingObject.java */
/* loaded from: classes8.dex */
public class h extends l {
    @NonNull
    private final f sessionTracker;

    public h(@NonNull f fVar) {
        this(UUID.randomUUID(), fVar);
    }

    public void clear() {
        this.sessionTracker.c(this);
    }

    @Override // wq.k
    public void clearEvent(@NonNull TrackEventType trackEventType) {
        this.sessionTracker.d(this, trackEventType);
    }

    @Override // wq.k
    public void eventFinish(@NonNull TrackEventType trackEventType, @Nullable AdsType adsType, @Nullable a aVar, @Nullable fr.a aVar2) {
        this.sessionTracker.e(this, trackEventType, adsType, aVar2, aVar);
    }

    @Override // wq.k
    public void eventStart(@NonNull TrackEventType trackEventType, @Nullable j jVar) {
        this.sessionTracker.b(this, trackEventType, jVar);
    }

    public h(@NonNull Object obj, @NonNull f fVar) {
        super(obj);
        this.sessionTracker = fVar;
    }
}
