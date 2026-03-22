package com.ss.ttvideoengine.strategy.preload;

import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.ss.ttvideoengine.IPreLoaderItemCallBackListener;
import com.ss.ttvideoengine.PreLoaderItemCallBackInfo;
import com.ss.ttvideoengine.PreloaderURLItem;
import com.ss.ttvideoengine.PreloaderVidItem;
import com.ss.ttvideoengine.PreloaderVideoModelItem;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.source.VideoModelSource;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class PreloadSync implements PreloadListener {
    private static final PreloadTaskFactory DEFAULT_FACTORY = new PreloadTaskFactory() { // from class: com.ss.ttvideoengine.strategy.preload.PreloadSync.1
    };
    private static final String TAG = "StrategyPreload";
    private final PreloadTaskFactory mFactory;
    private PreloadListener mListener;
    private final int mPreloadSize;
    private boolean mStop;
    private final List<StrategySource> mStrategySources;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.strategy.preload.PreloadSync$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$ttvideoengine$source$Source$Type;

        static {
            int[] iArr = new int[Source.Type.values().length];
            $SwitchMap$com$ss$ttvideoengine$source$Source$Type = iArr;
            try {
                iArr[Source.Type.DIRECT_URL_SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$Source$Type[Source.Type.VID_PLAY_AUTH_TOKEN_SOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$source$Source$Type[Source.Type.VIDEO_MODEL_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes6.dex */
    public static class PreloadCallback implements IPreLoaderItemCallBackListener {
        private final PreloadListener mPreloadListener;
        private final PreloaderVidItem mPreloaderVidItem;
        private final Resolution mResolution;
        private final String mVideoID;

        public PreloadCallback(String str, PreloadListener preloadListener) {
            this(str, preloadListener, null, null);
        }

        @Override // com.ss.ttvideoengine.IPreLoaderItemCallBackListener
        public void preloadItemInfo(PreLoaderItemCallBackInfo preLoaderItemCallBackInfo) {
            VideoModel videoModel;
            if (preLoaderItemCallBackInfo == null) {
                return;
            }
            int key = preLoaderItemCallBackInfo.getKey();
            if (key != 2) {
                if (key != 3) {
                    if (key != 4) {
                        if (key == 5) {
                            TTVideoEngineLog.d(PreloadSync.TAG, "preload result canceled, videoID:" + this.mVideoID);
                            this.mPreloadListener.onResult(5, this.mVideoID);
                            return;
                        }
                        return;
                    }
                    PreloaderVidItem preloaderVidItem = this.mPreloaderVidItem;
                    if (preloaderVidItem == null || (videoModel = preLoaderItemCallBackInfo.fetchVideoModel) == null) {
                        return;
                    }
                    preloaderVidItem.mResolution = TTVideoEngine.findDefaultResolution(videoModel, this.mResolution);
                    return;
                }
                TTVideoEngineLog.d(PreloadSync.TAG, "preload result failed, videoID:" + this.mVideoID);
                this.mPreloadListener.onResult(3, this.mVideoID);
                return;
            }
            TTVideoEngineLog.d(PreloadSync.TAG, "preload result success，videoID:" + this.mVideoID);
            this.mPreloadListener.onResult(2, this.mVideoID);
        }

        public PreloadCallback(String str, PreloadListener preloadListener, PreloaderVidItem preloaderVidItem, Resolution resolution) {
            this.mVideoID = str;
            this.mPreloadListener = preloadListener;
            this.mPreloaderVidItem = preloaderVidItem;
            this.mResolution = resolution;
        }
    }

    public PreloadSync(List<StrategySource> list, PreloadTaskFactory preloadTaskFactory, int i10) {
        ArrayList arrayList = new ArrayList();
        this.mStrategySources = arrayList;
        arrayList.addAll(list);
        this.mFactory = preloadTaskFactory == null ? DEFAULT_FACTORY : preloadTaskFactory;
        this.mPreloadSize = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResult$0(int i10, String str) {
        PreloadListener preloadListener = this.mListener;
        if (preloadListener != null) {
            preloadListener.onResult(i10, str);
        }
    }

    private void preload() {
        if (this.mStop || this.mStrategySources.size() <= 0) {
            return;
        }
        StrategySource strategySource = this.mStrategySources.get(0);
        if (strategySource == null) {
            preloadNext();
        } else {
            preload(strategySource);
        }
    }

    private void preloadNext() {
        if (this.mStrategySources.size() <= 0) {
            return;
        }
        this.mStrategySources.remove(0);
        preload();
    }

    @Override // com.ss.ttvideoengine.strategy.preload.PreloadListener
    public void onResult(final int i10, final String str) {
        preloadNext();
        StrategyManager.instance().runOnWorkThread(new Runnable() { // from class: com.ss.ttvideoengine.strategy.preload.a
            @Override // java.lang.Runnable
            public final void run() {
                PreloadSync.this.lambda$onResult$0(i10, str);
            }
        });
    }

    public void setListener(PreloadListener preloadListener) {
        this.mListener = preloadListener;
    }

    public void start() {
        preload();
    }

    public void stop() {
        this.mStop = true;
    }

    private void preload(StrategySource strategySource) {
        long j10 = this.mPreloadSize * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        Source.Type type = strategySource.type();
        String vid = strategySource.vid();
        int i10 = AnonymousClass2.$SwitchMap$com$ss$ttvideoengine$source$Source$Type[type.ordinal()];
        if (i10 == 1) {
            PreloaderURLItem createUrlItem = this.mFactory.createUrlItem((DirectUrlSource) strategySource, j10);
            createUrlItem.setCallBackListener(new PreloadCallback(vid, this));
            TTVideoEngine.addTask(createUrlItem);
        } else if (i10 == 2) {
            VidPlayAuthTokenSource vidPlayAuthTokenSource = (VidPlayAuthTokenSource) strategySource;
            Resolution resolution = vidPlayAuthTokenSource.resolution();
            PreloaderVidItem createVidItem = this.mFactory.createVidItem(vidPlayAuthTokenSource, j10);
            createVidItem.setCallBackListener(new PreloadCallback(vid, this, createVidItem, resolution));
            TTVideoEngine.addTask(createVidItem);
        } else if (i10 != 3) {
        } else {
            PreloaderVideoModelItem createVideoModelItem = this.mFactory.createVideoModelItem((VideoModelSource) strategySource, j10);
            createVideoModelItem.setCallBackListener(new PreloadCallback(vid, this));
            TTVideoEngine.addTask(createVideoModelItem);
        }
    }
}
