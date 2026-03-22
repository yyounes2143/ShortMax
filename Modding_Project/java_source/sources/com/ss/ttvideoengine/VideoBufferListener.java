package com.ss.ttvideoengine;
@Deprecated
/* loaded from: classes6.dex */
public interface VideoBufferListener {
    public static final int BUFFERING_TYPE_DECODER = 1;
    public static final int BUFFERING_TYPE_NET = 0;

    @Deprecated
    void onBufferEnd(int i10);

    @Deprecated
    void onBufferStart(int i10);
}
