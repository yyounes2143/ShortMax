package nn;

import androidx.annotation.Nullable;
import io.bidmachine.media3.common.StreamKey;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.util.List;
/* compiled from: FilteringHlsPlaylistParserFactory.java */
/* loaded from: classes8.dex */
public final class c implements e {

    /* renamed from: a  reason: collision with root package name */
    private final e f62982a;

    /* renamed from: b  reason: collision with root package name */
    private final List<StreamKey> f62983b;

    public c(e eVar, List<StreamKey> list) {
        this.f62982a = eVar;
        this.f62983b = list;
    }

    @Override // nn.e
    public c.a<d> a(io.bidmachine.media3.exoplayer.hls.playlist.d dVar, @Nullable io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        return new rn.c(this.f62982a.a(dVar, cVar), this.f62983b);
    }

    @Override // nn.e
    public c.a<d> b() {
        return new rn.c(this.f62982a.b(), this.f62983b);
    }
}
