package tn;

import android.net.Uri;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import java.util.List;
import java.util.Map;
/* compiled from: Chunk.java */
/* loaded from: classes8.dex */
public abstract class e implements Loader.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f67460a = sn.i.a();

    /* renamed from: b  reason: collision with root package name */
    public final en.g f67461b;

    /* renamed from: c  reason: collision with root package name */
    public final int f67462c;

    /* renamed from: d  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f67463d;

    /* renamed from: e  reason: collision with root package name */
    public final int f67464e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Object f67465f;

    /* renamed from: g  reason: collision with root package name */
    public final long f67466g;

    /* renamed from: h  reason: collision with root package name */
    public final long f67467h;

    /* renamed from: i  reason: collision with root package name */
    protected final en.n f67468i;

    public e(en.d dVar, en.g gVar, int i10, io.bidmachine.media3.common.a aVar, int i11, @Nullable Object obj, long j10, long j11) {
        this.f67468i = new en.n(dVar);
        this.f67461b = (en.g) cn.a.e(gVar);
        this.f67462c = i10;
        this.f67463d = aVar;
        this.f67464e = i11;
        this.f67465f = obj;
        this.f67466g = j10;
        this.f67467h = j11;
    }

    public final long a() {
        return this.f67468i.d();
    }

    public final long b() {
        return this.f67467h - this.f67466g;
    }

    public final Map<String, List<String>> c() {
        return this.f67468i.f();
    }

    public final Uri d() {
        return this.f67468i.e();
    }
}
