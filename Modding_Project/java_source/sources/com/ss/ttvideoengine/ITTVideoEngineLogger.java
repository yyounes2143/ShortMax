package com.ss.ttvideoengine;

import com.ss.ttvideoengine.utils.Error;
/* loaded from: classes6.dex */
public interface ITTVideoEngineLogger {
    void initLogger();

    void logBeginToPlay();

    void logBufferingEnd(int i10);

    void logBufferingStart(int i10, int i11);

    void logCompletion();

    void logError(Error error);

    void logLoopAgain();

    void logPrepareBeforePlay();

    void logPrepareEnd();

    void logPrepareStart();

    void logRetry(Error error, int i10);

    void logSeek(int i10);

    void logSeekCompletion();

    void logSetDataSource();

    void logSetSurface(String str);

    void logStop(int i10);

    void logVideoRenderStart();

    void logVideoSizeChanged(int i10, int i11);
}
