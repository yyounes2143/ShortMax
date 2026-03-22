package io.bidmachine.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.source.s;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import nn.e;
/* loaded from: classes8.dex */
public interface HlsPlaylistTracker {

    /* loaded from: classes8.dex */
    public static final class PlaylistResetException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f56172a;

        public PlaylistResetException(Uri uri) {
            this.f56172a = uri;
        }
    }

    /* loaded from: classes8.dex */
    public static final class PlaylistStuckException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f56173a;

        public PlaylistStuckException(Uri uri) {
            this.f56173a = uri;
        }
    }

    /* loaded from: classes8.dex */
    public interface a {
        HlsPlaylistTracker a(mn.d dVar, io.bidmachine.media3.exoplayer.upstream.b bVar, e eVar, @Nullable wn.e eVar2);
    }

    /* loaded from: classes8.dex */
    public interface b {
        void c();

        boolean d(Uri uri, b.c cVar, boolean z10);
    }

    /* loaded from: classes8.dex */
    public interface c {
        void j(io.bidmachine.media3.exoplayer.hls.playlist.c cVar);
    }

    long a();

    void b(b bVar);

    void d(Uri uri) throws IOException;

    void e(b bVar);

    void i(Uri uri, s.a aVar, c cVar);

    @Nullable
    d k();

    void l(Uri uri);

    boolean m(Uri uri);

    boolean n();

    boolean o(Uri uri, long j10);

    void p() throws IOException;

    @Nullable
    io.bidmachine.media3.exoplayer.hls.playlist.c q(Uri uri, boolean z10);

    void stop();

    default void c(Uri uri) {
    }
}
