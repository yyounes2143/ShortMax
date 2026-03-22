package wq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdsType;
import io.bidmachine.TrackEventType;
import java.util.EnumMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: SessionTrackerImpl.java */
/* loaded from: classes8.dex */
public class g implements f {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b f70125a;
    @NonNull
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Map<Object, Map<TrackEventType, j>> f70126b = new ConcurrentHashMap();

    public g(@NonNull b bVar) {
        this.f70125a = bVar;
    }

    @Override // wq.b
    public void a(@NonNull k kVar, @NonNull TrackEventType trackEventType, @Nullable j jVar, @Nullable AdsType adsType, @Nullable fr.a aVar, @Nullable a aVar2) {
        this.f70125a.a(kVar, trackEventType, jVar, adsType, aVar, aVar2);
    }

    @Override // wq.f
    public void b(@NonNull k kVar, @NonNull TrackEventType trackEventType, @Nullable j jVar) {
        Object trackingKey = kVar.getTrackingKey();
        Map<TrackEventType, j> map = this.f70126b.get(trackingKey);
        if (map == null) {
            map = new EnumMap<>(TrackEventType.class);
            this.f70126b.put(trackingKey, map);
        }
        if (!map.containsKey(trackEventType)) {
            if (jVar == null) {
                jVar = new j();
            }
            map.put(trackEventType, jVar);
        }
    }

    @Override // wq.f
    public void c(@NonNull k kVar) {
        this.f70126b.remove(kVar.getTrackingKey());
    }

    @Override // wq.f
    public void d(@NonNull k kVar, @NonNull TrackEventType trackEventType) {
        Map<TrackEventType, j> map = this.f70126b.get(kVar.getTrackingKey());
        if (map != null) {
            map.remove(trackEventType);
        }
    }

    @Override // wq.f
    public void e(@NonNull k kVar, @NonNull TrackEventType trackEventType, @Nullable AdsType adsType, @Nullable fr.a aVar, @Nullable a aVar2) {
        j jVar;
        Map<TrackEventType, j> map = this.f70126b.get(kVar.getTrackingKey());
        if (map != null && map.containsKey(trackEventType)) {
            jVar = map.get(trackEventType);
            if (jVar != null) {
                jVar.d(System.currentTimeMillis());
            }
            map.remove(trackEventType);
            if (map.isEmpty()) {
                c(kVar);
            }
        } else {
            jVar = null;
        }
        a(kVar, trackEventType, jVar, adsType, aVar, aVar2);
    }
}
