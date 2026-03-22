package com.ss.ttvideoengine;
@Deprecated
/* loaded from: classes6.dex */
public interface VideoBufferDetailListener {
    public static final int AFTER_FIRST_FRAME = 1;
    public static final int BEFORE_FIRST_FRAME = 0;
    public static final int BUFFERING_TYPE_DECODER = 1;
    public static final int BUFFERING_TYPE_NET = 0;
    public static final int BUFFER_START_ACTION_CHANG_RESOLUTION = 2;
    public static final int BUFFER_START_ACTION_NONE = 0;
    public static final int BUFFER_START_ACTION_SEEK = 1;

    @Deprecated
    void onBufferEnd(int i10);

    @Deprecated
    void onBufferStart(int i10, int i11, int i12);
}
