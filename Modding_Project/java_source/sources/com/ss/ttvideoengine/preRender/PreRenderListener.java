package com.ss.ttvideoengine.preRender;

import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.utils.Error;
/* loaded from: classes6.dex */
public interface PreRenderListener {
    public static final int PRERENDER_ERROR_ENGINE_EMPTY = 2;
    public static final int PRERENDER_ERROR_PREPARE_ERROR = 3;
    public static final int PRERENDER_ERROR_SOURCE_EMPTY = 1;
    public static final int PRERENDER_ERROR_STATE_ERROR = 0;

    default boolean onPreRenderPause(TTVideoEngine tTVideoEngine, Source source) {
        return false;
    }

    default void onPreRenderStart(TTVideoEngine tTVideoEngine, Source source) {
    }

    default void onPreRenderSuccess(TTVideoEngine tTVideoEngine, Source source) {
    }

    default void onPreRenderError(TTVideoEngine tTVideoEngine, Source source, int i10, Error error) {
    }
}
