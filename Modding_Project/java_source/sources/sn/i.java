package sn;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: LoadEventInfo.java */
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f66488h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f66489a;

    /* renamed from: b  reason: collision with root package name */
    public final en.g f66490b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f66491c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f66492d;

    /* renamed from: e  reason: collision with root package name */
    public final long f66493e;

    /* renamed from: f  reason: collision with root package name */
    public final long f66494f;

    /* renamed from: g  reason: collision with root package name */
    public final long f66495g;

    public i(long j10, en.g gVar, long j11) {
        this(j10, gVar, gVar.f51378a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f66488h.getAndIncrement();
    }

    public i(long j10, en.g gVar, Uri uri, Map<String, List<String>> map, long j11, long j12, long j13) {
        this.f66489a = j10;
        this.f66490b = gVar;
        this.f66491c = uri;
        this.f66492d = map;
        this.f66493e = j11;
        this.f66494f = j12;
        this.f66495g = j13;
    }
}
