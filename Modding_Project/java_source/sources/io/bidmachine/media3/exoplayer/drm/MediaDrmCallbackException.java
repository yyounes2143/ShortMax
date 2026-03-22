package io.bidmachine.media3.exoplayer.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public final class MediaDrmCallbackException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final en.g f55846a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f55847b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, List<String>> f55848c;

    /* renamed from: d  reason: collision with root package name */
    public final long f55849d;

    public MediaDrmCallbackException(en.g gVar, Uri uri, Map<String, List<String>> map, long j10, Throwable th2) {
        super(th2);
        this.f55846a = gVar;
        this.f55847b = uri;
        this.f55848c = map;
        this.f55849d = j10;
    }
}
