package io.bidmachine.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import cn.m0;
import en.d;
import en.e;
import en.g;
import en.n;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import sn.i;
/* compiled from: ParsingLoadable.java */
/* loaded from: classes8.dex */
public final class c<T> implements Loader.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f57123a;

    /* renamed from: b  reason: collision with root package name */
    public final g f57124b;

    /* renamed from: c  reason: collision with root package name */
    public final int f57125c;

    /* renamed from: d  reason: collision with root package name */
    private final n f57126d;

    /* renamed from: e  reason: collision with root package name */
    private final a<? extends T> f57127e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private volatile T f57128f;

    /* compiled from: ParsingLoadable.java */
    /* loaded from: classes8.dex */
    public interface a<T> {
        T parse(Uri uri, InputStream inputStream) throws IOException;
    }

    public c(d dVar, Uri uri, int i10, a<? extends T> aVar) {
        this(dVar, new g.b().i(uri).b(1).a(), i10, aVar);
    }

    public long a() {
        return this.f57126d.d();
    }

    public Map<String, List<String>> b() {
        return this.f57126d.f();
    }

    @Nullable
    public final T c() {
        return this.f57128f;
    }

    public Uri d() {
        return this.f57126d.e();
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void load() throws IOException {
        this.f57126d.g();
        e eVar = new e(this.f57126d, this.f57124b);
        try {
            eVar.k();
            this.f57128f = this.f57127e.parse((Uri) cn.a.e(this.f57126d.getUri()), eVar);
        } finally {
            m0.m(eVar);
        }
    }

    public c(d dVar, g gVar, int i10, a<? extends T> aVar) {
        this.f57126d = new n(dVar);
        this.f57124b = gVar;
        this.f57125c = i10;
        this.f57127e = aVar;
        this.f57123a = i.a();
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public final void cancelLoad() {
    }
}
