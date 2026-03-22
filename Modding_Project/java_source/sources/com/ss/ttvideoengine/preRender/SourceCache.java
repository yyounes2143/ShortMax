package com.ss.ttvideoengine.preRender;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VideoModelCache;
import com.ss.ttvideoengine.fetcher.FetcherApiHelper;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.preRender.Timer;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.source.VideoModelSource;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class SourceCache implements Timer.TimerListener {
    private static final String TAG = "PreRender_SourceCache";
    private final CopyOnWriteArrayList<SourceCacheListener> mListeners = new CopyOnWriteArrayList<>();
    private Source mSource;
    private final Timer mTimer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SourceCache(@NonNull Timer timer) {
        this.mTimer = timer;
    }

    public void addSourceCacheListener(SourceCacheListener sourceCacheListener) {
        if (sourceCacheListener != null && !this.mListeners.contains(sourceCacheListener)) {
            this.mListeners.add(sourceCacheListener);
        }
    }

    public void removeSourceCacheListener(SourceCacheListener sourceCacheListener) {
        this.mListeners.remove(sourceCacheListener);
    }

    public void setSource(Source source) {
        this.mSource = source;
    }

    public void start() {
        this.mTimer.addTimerListener(this);
        this.mTimer.start();
    }

    public void stop() {
        this.mTimer.removeTimerListener(this);
        this.mTimer.stop();
        this.mListeners.clear();
        this.mSource = null;
    }

    @Override // com.ss.ttvideoengine.preRender.Timer.TimerListener
    public void trigger() {
        VideoModel videoModel;
        VideoInfo videoInfo;
        VideoInfo videoInfo2;
        Source source = this.mSource;
        if (source == null) {
            stop();
            return;
        }
        String str = "";
        if (source instanceof DirectUrlSource) {
            DirectUrlSource.UrlItem firstItem = ((DirectUrlSource) source).firstItem();
            if (firstItem != null) {
                str = firstItem.getCacheKey();
            }
        } else if (source instanceof VideoModelSource) {
            VideoModelSource videoModelSource = (VideoModelSource) source;
            IVideoModel videoModel2 = videoModelSource.videoModel();
            if (videoModel2 != null && (videoInfo2 = videoModel2.getVideoInfo(videoModelSource.resolution())) != null) {
                str = videoInfo2.getValueStr(15);
            }
        } else if (source instanceof VidPlayAuthTokenSource) {
            VidPlayAuthTokenSource vidPlayAuthTokenSource = (VidPlayAuthTokenSource) source;
            VideoModelCache.VideoModelCacheInfo videoModelCacheInfo = VideoModelCache.getInstance().get(vidPlayAuthTokenSource.vid(), new FetcherApiHelper(vidPlayAuthTokenSource.playAuthToken(), vidPlayAuthTokenSource.encodeType()).getAPIString());
            if (videoModelCacheInfo != null && (videoModel = videoModelCacheInfo.model) != null && (videoInfo = videoModel.getVideoInfo(vidPlayAuthTokenSource.resolution())) != null) {
                str = videoInfo.getValueStr(15);
            }
        }
        if (TextUtils.isEmpty(str)) {
            stop();
            return;
        }
        DataLoaderHelper.DataLoaderCacheInfo cacheInfo = TTVideoEngine.getCacheInfo(str);
        Iterator<SourceCacheListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onCacheSize(source, cacheInfo.mMediaSize);
        }
    }
}
