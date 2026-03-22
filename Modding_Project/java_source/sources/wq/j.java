package wq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
/* compiled from: TrackEventInfo.java */
/* loaded from: classes8.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private final long f70127a;

    /* renamed from: b  reason: collision with root package name */
    private long f70128b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f70129c;

    public j() {
        long currentTimeMillis = System.currentTimeMillis();
        this.f70127a = currentTimeMillis;
        this.f70128b = currentTimeMillis;
    }

    @Nullable
    public Map<String, Object> a() {
        return this.f70129c;
    }

    public long b() {
        return this.f70128b;
    }

    public long c() {
        return this.f70127a;
    }

    public void d(long j10) {
        this.f70128b = Math.max(j10, this.f70127a);
    }

    @NonNull
    public j e(@NonNull String str, @NonNull Object obj) {
        if (this.f70129c == null) {
            this.f70129c = new HashMap();
        }
        this.f70129c.put(str, obj);
        return this;
    }
}
