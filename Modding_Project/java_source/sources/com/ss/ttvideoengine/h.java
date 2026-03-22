package com.ss.ttvideoengine;

import com.ss.texturerender.VideoSurface;
import java.io.Serializable;
import java.nio.ByteBuffer;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes6.dex */
public final /* synthetic */ class h implements VideoSurface.SaveFrameCallback, Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SnapshotListener f37064a;

    public /* synthetic */ h(SnapshotListener snapshotListener) {
        this.f37064a = snapshotListener;
    }

    @Override // com.ss.texturerender.VideoSurface.SaveFrameCallback
    public final int onFrame(ByteBuffer byteBuffer, int i10, int i11) {
        return TTVideoEngineImpl.b(this.f37064a, byteBuffer, i10, i11);
    }
}
