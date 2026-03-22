package io.bidmachine.media3.exoplayer.drm;

import io.bidmachine.media3.exoplayer.drm.m;
import java.util.UUID;
/* compiled from: MediaDrmCallback.java */
/* loaded from: classes8.dex */
public interface p {
    byte[] a(UUID uuid, m.d dVar) throws MediaDrmCallbackException;

    byte[] b(UUID uuid, m.a aVar) throws MediaDrmCallbackException;
}
