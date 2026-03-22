package rn;

import android.net.Uri;
import androidx.annotation.Nullable;
import io.bidmachine.media3.common.StreamKey;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import rn.b;
/* compiled from: FilteringManifestParser.java */
/* loaded from: classes8.dex */
public final class c<T extends b<T>> implements c.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c.a<? extends T> f65910a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final List<StreamKey> f65911b;

    public c(c.a<? extends T> aVar, @Nullable List<StreamKey> list) {
        this.f65910a = aVar;
        this.f65911b = list;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.c.a
    /* renamed from: a */
    public T parse(Uri uri, InputStream inputStream) throws IOException {
        T parse = this.f65910a.parse(uri, inputStream);
        List<StreamKey> list = this.f65911b;
        if (list != null && !list.isEmpty()) {
            return (T) parse.copy(this.f65911b);
        }
        return parse;
    }
}
