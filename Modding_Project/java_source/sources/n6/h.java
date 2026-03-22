package n6;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: LoadEventInfo.java */
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f62772h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f62773a;

    /* renamed from: b  reason: collision with root package name */
    public final a7.k f62774b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f62775c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f62776d;

    /* renamed from: e  reason: collision with root package name */
    public final long f62777e;

    /* renamed from: f  reason: collision with root package name */
    public final long f62778f;

    /* renamed from: g  reason: collision with root package name */
    public final long f62779g;

    public h(long j10, a7.k kVar, long j11) {
        this(j10, kVar, kVar.f198a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f62772h.getAndIncrement();
    }

    public h(long j10, a7.k kVar, Uri uri, Map<String, List<String>> map, long j11, long j12, long j13) {
        this.f62773a = j10;
        this.f62774b = kVar;
        this.f62775c = uri;
        this.f62776d = map;
        this.f62777e = j11;
        this.f62778f = j12;
        this.f62779g = j13;
    }
}
