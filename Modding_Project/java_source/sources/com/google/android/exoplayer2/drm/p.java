package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.m;
import java.util.UUID;
/* compiled from: MediaDrmCallback.java */
/* loaded from: classes4.dex */
public interface p {
    byte[] a(UUID uuid, m.a aVar) throws MediaDrmCallbackException;

    byte[] b(UUID uuid, m.d dVar) throws MediaDrmCallbackException;
}
