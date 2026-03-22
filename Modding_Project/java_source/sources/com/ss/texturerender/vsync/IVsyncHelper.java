package com.ss.texturerender.vsync;
/* loaded from: classes6.dex */
public interface IVsyncHelper {
    public static final int MSG_ADD_OBSERVER = 29;
    public static final int MSG_REMOVE_OBSERVER = 30;
    public static final int MSG_VSYNC_COMING = 28;

    void addObserver(IVsyncCallback iVsyncCallback);

    boolean isWorking();

    void removeObserver(IVsyncCallback iVsyncCallback);

    void setEnable(boolean z10);

    void update();
}
