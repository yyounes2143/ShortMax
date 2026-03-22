package com.google.android.exoplayer2.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class MediaDrmCallbackException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final a7.k f17564a;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f17565b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, List<String>> f17566c;

    /* renamed from: d  reason: collision with root package name */
    public final long f17567d;

    public MediaDrmCallbackException(a7.k kVar, Uri uri, Map<String, List<String>> map, long j10, Throwable th2) {
        super(th2);
        this.f17564a = kVar;
        this.f17565b = uri;
        this.f17566c = map;
        this.f17567d = j10;
    }
}
