package nn;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import io.bidmachine.media3.exoplayer.upstream.c;
/* compiled from: DefaultHlsPlaylistParserFactory.java */
/* loaded from: classes8.dex */
public final class a implements e {
    @Override // nn.e
    public c.a<d> a(io.bidmachine.media3.exoplayer.hls.playlist.d dVar, @Nullable io.bidmachine.media3.exoplayer.hls.playlist.c cVar) {
        return new HlsPlaylistParser(dVar, cVar);
    }

    @Override // nn.e
    public c.a<d> b() {
        return new HlsPlaylistParser();
    }
}
