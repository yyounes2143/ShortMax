package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class NetworkRequestHandler extends RequestHandler {
    private static final String SCHEME_HTTP = "http";
    private static final String SCHEME_HTTPS = "https";
    private final Downloader downloader;
    private final Stats stats;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class ContentLengthException extends IOException {
        ContentLengthException(String str) {
            super(str);
        }
    }

    /* loaded from: classes6.dex */
    static final class ResponseException extends IOException {
        final int code;
        final int networkPolicy;

        ResponseException(int i10, int i11) {
            super("HTTP " + i10);
            this.code = i10;
            this.networkPolicy = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkRequestHandler(Downloader downloader, Stats stats) {
        this.downloader = downloader;
        this.stats = stats;
    }

    private static okhttp3.Request createRequest(Request request, int i10) {
        CacheControl cacheControl;
        if (i10 != 0) {
            if (NetworkPolicy.isOfflineOnly(i10)) {
                cacheControl = CacheControl.f63285p;
            } else {
                CacheControl.Builder builder = new CacheControl.Builder();
                if (!NetworkPolicy.shouldReadFromDiskCache(i10)) {
                    builder.d();
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i10)) {
                    builder.e();
                }
                cacheControl = builder.a();
            }
        } else {
            cacheControl = null;
        }
        Request.Builder k10 = new Request.Builder().k(request.uri.toString());
        if (cacheControl != null) {
            k10.c(cacheControl);
        }
        return k10.b();
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        String scheme = request.uri.getScheme();
        if (!"http".equals(scheme) && !"https".equals(scheme)) {
            return false;
        }
        return true;
    }

    @Override // com.squareup.picasso.RequestHandler
    int getRetryCount() {
        return 2;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i10) throws IOException {
        Picasso.LoadedFrom loadedFrom;
        Response load = this.downloader.load(createRequest(request, i10));
        ResponseBody d10 = load.d();
        if (load.isSuccessful()) {
            if (load.l() == null) {
                loadedFrom = Picasso.LoadedFrom.NETWORK;
            } else {
                loadedFrom = Picasso.LoadedFrom.DISK;
            }
            if (loadedFrom == Picasso.LoadedFrom.DISK && d10.contentLength() == 0) {
                d10.close();
                throw new ContentLengthException("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && d10.contentLength() > 0) {
                this.stats.dispatchDownloadFinished(d10.contentLength());
            }
            return new RequestHandler.Result(d10.source(), loadedFrom);
        }
        d10.close();
        throw new ResponseException(load.o(), request.networkPolicy);
    }

    @Override // com.squareup.picasso.RequestHandler
    boolean shouldRetry(boolean z10, NetworkInfo networkInfo) {
        if (networkInfo != null && !networkInfo.isConnected()) {
            return false;
        }
        return true;
    }

    @Override // com.squareup.picasso.RequestHandler
    boolean supportsReplay() {
        return true;
    }
}
