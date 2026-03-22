package io.bidmachine.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.datasource.DataSourceException;
import io.bidmachine.media3.datasource.HttpDataSource$CleartextNotPermittedException;
import io.bidmachine.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: DefaultLoadErrorHandlingPolicy.java */
/* loaded from: classes8.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f57112a;

    public a() {
        this(-1);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.b
    public int b(int i10) {
        int i11 = this.f57112a;
        if (i11 == -1) {
            if (i10 == 7) {
                return 6;
            }
            return 3;
        }
        return i11;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.b
    @Nullable
    public b.C0807b c(b.a aVar, b.c cVar) {
        if (!e(cVar.f57121c)) {
            return null;
        }
        if (aVar.a(1)) {
            return new b.C0807b(1, PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        }
        if (!aVar.a(2)) {
            return null;
        }
        return new b.C0807b(2, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.b
    public long d(b.c cVar) {
        IOException iOException = cVar.f57121c;
        if (!(iOException instanceof ParserException) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof HttpDataSource$CleartextNotPermittedException) && !(iOException instanceof Loader.UnexpectedLoaderException) && !DataSourceException.b(iOException)) {
            return Math.min((cVar.f57122d - 1) * 1000, 5000);
        }
        return -9223372036854775807L;
    }

    protected boolean e(IOException iOException) {
        if (!(iOException instanceof HttpDataSource$InvalidResponseCodeException)) {
            return false;
        }
        int i10 = ((HttpDataSource$InvalidResponseCodeException) iOException).f55324d;
        if (i10 != 403 && i10 != 404 && i10 != 410 && i10 != 416 && i10 != 500 && i10 != 503) {
            return false;
        }
        return true;
    }

    public a(int i10) {
        this.f57112a = i10;
    }
}
