package com.ss.ttvideoengine.source.strategy;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DirectUrlItem;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineImpl;
import com.ss.ttvideoengine.TTVideoEngineInternal;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.source.VidPlayAuthTokenSource;
import com.ss.ttvideoengine.source.VideoModelSource;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.source.strategy.SmartUrlFetcher;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.utils.EngineException;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes6.dex */
public class CodecStrategyAdapter {
    public final String TAG;
    private final List<CodecStrategy.Dimension> mErrorDimensions;
    private CodecStrategy.ResolveResult mResolveResult;
    private SmartUrlFetcher mSmartUrlFetcher;
    private StrategySource mSource;
    private final SourceSetter mSourceSetter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class PlayerSourceSetter implements SourceSetter {
        TTVideoEngineImpl mEngine;

        public PlayerSourceSetter(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mEngine = tTVideoEngineImpl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void configPlayerWithDimension(CodecStrategy.Dimension dimension) {
            if (dimension == null) {
                return;
            }
            this.mEngine.setStringOption(1000, dimension.encodeType);
            if (dimension.decoder == 1) {
                this.mEngine.setIntOption(7, 1);
                if (TextUtils.equals(dimension.encodeType, "h265")) {
                    this.mEngine.setAsyncInit(true, 1);
                    return;
                } else if (TextUtils.equals(dimension.encodeType, "h264")) {
                    this.mEngine.setAsyncInit(true, 0);
                    return;
                } else {
                    return;
                }
            }
            this.mEngine.setIntOption(7, 0);
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        public String createTag() {
            return TTVideoEngineInternal.logcatTag(this.mEngine) + "_" + CodecStrategy.TAG;
        }

        public void play() {
            this.mEngine.play();
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        public void setDirectUrl(String str, DirectUrlSource.UrlItem urlItem, @Nullable CodecStrategy.Dimension dimension, boolean z10) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setDirectUrl vid = " + str + ", urlItem = " + urlItem + ", dimension = " + dimension + ", isFetchSmartUrl = " + z10);
            if (!z10) {
                if (urlItem.getUrlExpiredTime() <= 0 && urlItem.getUrlExpires() == null) {
                    this.mEngine.setDirectUrlUseDataLoader(urlItem.getUrls(), urlItem.getCacheKey(), str);
                } else {
                    this.mEngine.setDirectUrlUseDataLoader(new DirectUrlItem(urlItem.getUrls(), urlItem.getCacheKey(), str, urlItem.getUrlExpiredTime(), urlItem.getUrlExpires()));
                }
                if (urlItem.getPlayAuth() != null) {
                    this.mEngine.setEncodedKey(urlItem.getPlayAuth());
                }
            }
            if (dimension != null) {
                configPlayerWithDimension(dimension);
                this.mEngine.setIntOption(670, 0);
                return;
            }
            this.mEngine.setIntOption(670, 1);
        }

        public void setEncodedKey(String str) {
            this.mEngine.setEncodedKey(str);
        }

        public void setStringOption(int i10, String str) {
            this.mEngine.setStringOption(i10, str);
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        public void setVideoID(String str, String str2, @Nullable Resolution resolution, @Nullable String str3, @Nullable CodecStrategy.Dimension dimension) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setVideoID vid = " + str + ", playAuthToken = " + str2 + ", dimension = " + dimension);
            this.mEngine.setVideoID(str);
            this.mEngine.setPlayAuthToken(str2);
            if (dimension != null) {
                configPlayerWithDimension(dimension);
                this.mEngine.setIntOption(670, 0);
            } else if (str3 != null) {
                this.mEngine.setStringOption(1000, str3);
                this.mEngine.setIntOption(670, 1);
            }
            if (resolution != null) {
                this.mEngine.configResolution(resolution);
            }
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        public void setVideoModel(String str, IVideoModel iVideoModel, Resolution resolution) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setVideoModel vid = " + str + ", videoModel = " + iVideoModel + ", resolution = " + resolution);
            this.mEngine.setVideoModel(iVideoModel);
            this.mEngine.configResolution(resolution);
        }

        public void stop() {
            this.mEngine.stop();
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        public int type() {
            return 0;
        }
    }

    /* loaded from: classes6.dex */
    public interface PreloadSourceSetter extends SourceSetter {
        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        default String createTag() {
            return "DataLoaderHelper_CodecStrategy";
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        default void setDirectUrl(String str, DirectUrlSource.UrlItem urlItem, @Nullable CodecStrategy.Dimension dimension, boolean z10) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setDirectUrl vid = " + str + ", urlItem = " + urlItem + ", dimension = " + dimension + ", isFetchSmartUrl = " + z10);
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        default void setVideoID(String str, String str2, @Nullable Resolution resolution, @Nullable String str3, @Nullable CodecStrategy.Dimension dimension) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setVideoID vid = " + str + ", playAuthToken = " + str2 + ", encodeType = " + str3 + ", dimension = " + dimension);
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        default void setVideoModel(String str, IVideoModel iVideoModel, Resolution resolution) {
            String createTag = createTag();
            TTVideoEngineLog.d(createTag, "setVideoModel vid = " + str + ", videoModel = " + iVideoModel + ", resolution = " + resolution);
        }

        @Override // com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter.SourceSetter
        default int type() {
            return 1;
        }
    }

    public CodecStrategyAdapter(SourceSetter sourceSetter) {
        this.mErrorDimensions = new ArrayList();
        this.mSourceSetter = sourceSetter;
        this.TAG = createTag(sourceSetter);
    }

    private void correctDimension(PlayerSourceSetter playerSourceSetter, CodecStrategy.Dimension dimension) {
        if (dimension == null) {
            return;
        }
        CodecStrategy.ResolveResult resolveResult = this.mResolveResult;
        if (resolveResult != null) {
            resolveResult.correctedDimension = dimension;
        }
        playerSourceSetter.configPlayerWithDimension(dimension);
    }

    static String createTag(@NonNull SourceSetter sourceSetter) {
        return sourceSetter.createTag();
    }

    private static String resolveVideoModelEncoderType(IVideoModel iVideoModel) {
        String[] codecs;
        if (iVideoModel == null || (codecs = iVideoModel.getCodecs()) == null) {
            return null;
        }
        List asList = Arrays.asList(codecs);
        if (asList.contains("h266")) {
            return "h266";
        }
        if (asList.contains("h265")) {
            return "h265";
        }
        return "h264";
    }

    private void setupSource(SourceSetter sourceSetter, CodecStrategy.ResolveResult resolveResult) {
        this.mResolveResult = resolveResult;
        StrategySource strategySource = resolveResult.source;
        CodecStrategy.Dimension dimension = resolveResult.correctedDimension;
        if (dimension == null) {
            dimension = resolveResult.dimension;
        }
        CodecStrategy.Dimension dimension2 = dimension;
        Source.Type type = strategySource.type();
        int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$Source$Type[type.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                VidPlayAuthTokenSource vidPlayAuthTokenSource = (VidPlayAuthTokenSource) strategySource;
                sourceSetter.setVideoID(vidPlayAuthTokenSource.vid(), vidPlayAuthTokenSource.playAuthToken(), vidPlayAuthTokenSource.resolution(), null, dimension2);
                return;
            }
            throw new IllegalArgumentException("unsupported source type! " + type);
        }
        DirectUrlSource.UrlItem urlItem = resolveResult.urlItem;
        DirectUrlSource.UrlItem urlItem2 = resolveResult.requestItem;
        if (urlItem != null) {
            sourceSetter.setDirectUrl(strategySource.vid(), urlItem, dimension2, false);
        } else if (urlItem2 != null) {
            sourceSetter.setDirectUrl(strategySource.vid(), urlItem2, dimension2, true);
        } else if (TTVideoEngineLog.d()) {
            String str = this.TAG;
            TTVideoEngineLog.d(str, "setupSource CodecStrategy error:" + resolveResult);
        }
    }

    public void cancelFetchSmartUrlInfo() {
        if (this.mSmartUrlFetcher == null) {
            return;
        }
        if (this.mResolveResult != null && this.mSource != null && TTVideoEngineLog.d()) {
            String str = this.TAG;
            TTVideoEngineLog.d(str, "cancelFetchSmartUrlInfo " + this.mSource.vid() + " " + this.mResolveResult.requestItem);
        }
        this.mSmartUrlFetcher.cancel();
        this.mSmartUrlFetcher = null;
    }

    public void correctStrategy(IVideoModel iVideoModel) {
        SourceSetter sourceSetter;
        StrategySource strategySource;
        String resolveVideoModelEncoderType;
        if (iVideoModel != null && (sourceSetter = this.mSourceSetter) != null && sourceSetter.type() == 0) {
            PlayerSourceSetter playerSourceSetter = (PlayerSourceSetter) this.mSourceSetter;
            CodecStrategy.ResolveResult resolveResult = this.mResolveResult;
            if (resolveResult == null || (strategySource = this.mSource) == null || !strategySource.isCodecStrategyValid() || (resolveVideoModelEncoderType = resolveVideoModelEncoderType(iVideoModel)) == null) {
                return;
            }
            CodecStrategy.Dimension dimension = resolveResult.dimension;
            if (TextUtils.equals(dimension.encodeType, resolveVideoModelEncoderType)) {
                if (TTVideoEngineLog.d()) {
                    TTVideoEngineLog.d(this.TAG, "correctStrategy result is [right] " + dimension);
                    return;
                }
                return;
            }
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(this.TAG, "correctStrategy result is [wrong] " + resolveVideoModelEncoderType + " " + dimension);
            }
            for (CodecStrategy.Dimension dimension2 : CodecStrategy.Dimension.values()) {
                if (TextUtils.equals(dimension2.encodeType, dimension.encodeType)) {
                    this.mErrorDimensions.add(dimension);
                }
            }
            CodecStrategy.Dimension resolveWithEncoderType = CodecStrategy.resolveWithEncoderType(resolveVideoModelEncoderType, strategySource, this.mErrorDimensions);
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(this.TAG, "correctStrategy corrected dimension = " + resolveWithEncoderType + "; old = " + dimension);
            }
            if (resolveWithEncoderType == null) {
                return;
            }
            correctDimension(playerSourceSetter, resolveWithEncoderType);
        }
    }

    public boolean fallbackToDirectUrl() {
        DirectUrlSource directUrlSource;
        SourceSetter sourceSetter = this.mSourceSetter;
        if (sourceSetter == null) {
            return false;
        }
        StrategySource strategySource = this.mSource;
        if (strategySource != null && strategySource.type() == Source.Type.DIRECT_URL_SOURCE) {
            directUrlSource = (DirectUrlSource) this.mSource;
        } else {
            directUrlSource = null;
        }
        if (directUrlSource == null) {
            return false;
        }
        CodecStrategy.ResolveResult resolveStartPlayback = CodecStrategy.resolveStartPlayback(directUrlSource, false);
        if (TTVideoEngineLog.d()) {
            String str = this.TAG;
            TTVideoEngineLog.d(str, "fallbackToDirectUrl " + directUrlSource + " " + resolveStartPlayback);
        }
        if (resolveStartPlayback == null) {
            setupSource(sourceSetter, directUrlSource);
        } else {
            setupSource(sourceSetter, resolveStartPlayback);
        }
        if (sourceSetter.type() == 0) {
            ((PlayerSourceSetter) sourceSetter).play();
            return true;
        }
        return true;
    }

    public void fetchSmartUrlInfo(SmartUrlFetcher.Callback callback) {
        CodecStrategy.ResolveResult resolveResult;
        DirectUrlSource.UrlItem urlItem;
        SmartUrlFetcher smartUrlFetcher = this.mSmartUrlFetcher;
        if (smartUrlFetcher != null) {
            smartUrlFetcher.cancel();
            this.mSmartUrlFetcher = null;
        }
        if (this.mSource == null || (resolveResult = this.mResolveResult) == null || (urlItem = resolveResult.requestItem) == null) {
            return;
        }
        if (TTVideoEngineLog.d()) {
            String str = this.TAG;
            TTVideoEngineLog.d(str, "fetchSmartUrlInfo " + this.mSource.vid() + " " + this.mResolveResult.requestItem);
        }
        this.mSmartUrlFetcher = new SmartUrlFetcher(callback);
        SmartUrlFetcher.RequestParams requestParams = new SmartUrlFetcher.RequestParams();
        requestParams.videoId = this.mSource.vid();
        requestParams.playUrl = urlItem.getUrl();
        requestParams.cacheKey = urlItem.getCacheKey();
        requestParams.codec = CodecStrategy.SmartUrlVod.encodeType();
        requestParams.definition = CodecStrategy.SmartUrlVod.videoResolution().toString(VideoRef.TYPE_VIDEO);
        this.mSmartUrlFetcher.setRequestParams(requestParams);
        this.mSmartUrlFetcher.start();
    }

    public StrategySource getStrategySource() {
        return this.mSource;
    }

    public boolean interceptFallbackRetry(Error error) {
        CodecStrategy.ResolveResult resolveResult;
        SourceSetter sourceSetter = this.mSourceSetter;
        if (sourceSetter == null || sourceSetter.type() != 0) {
            return false;
        }
        PlayerSourceSetter playerSourceSetter = (PlayerSourceSetter) this.mSourceSetter;
        StrategySource strategySource = this.mSource;
        if (strategySource == null || !strategySource.isCodecStrategyValid() || (resolveResult = this.mResolveResult) == null) {
            return false;
        }
        if (!this.mErrorDimensions.contains(resolveResult.dimension)) {
            this.mErrorDimensions.add(resolveResult.dimension);
        }
        CodecStrategy.ResolveResult resolveFallback = CodecStrategy.resolveFallback(strategySource, this.mErrorDimensions);
        if (resolveFallback == null) {
            if (TTVideoEngineLog.e()) {
                String str = this.TAG;
                TTVideoEngineLog.e(str, "resolveFallback return null! " + strategySource + " " + this.mErrorDimensions + " " + CodecStrategy.dump());
            }
            return false;
        }
        if (TTVideoEngineLog.d()) {
            String str2 = this.TAG;
            TTVideoEngineLog.d(str2, "resolveFallback " + resolveFallback + " " + CodecStrategy.dump());
        }
        setupSource(playerSourceSetter, resolveFallback);
        playerSourceSetter.play();
        return true;
    }

    public boolean isCodecStrategyValid() {
        StrategySource strategySource = this.mSource;
        if (strategySource == null) {
            return false;
        }
        return strategySource.isCodecStrategyValid();
    }

    public boolean isFetchSmartUrl() {
        CodecStrategy.ResolveResult resolveResult;
        StrategySource strategySource = this.mSource;
        if (strategySource == null || strategySource.type() != Source.Type.DIRECT_URL_SOURCE || !CodecStrategy.SmartUrlVod.isEnable((DirectUrlSource) this.mSource) || (resolveResult = this.mResolveResult) == null || resolveResult.requestItem == null) {
            return false;
        }
        return true;
    }

    public void release() {
        reset();
        this.mErrorDimensions.clear();
    }

    public void reset() {
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(this.TAG, "reset");
        }
        cancelFetchSmartUrlInfo();
        this.mSource = null;
        this.mResolveResult = null;
    }

    public void setStrategySource(StrategySource strategySource) throws EngineException {
        reset();
        if (strategySource != null) {
            if (TTVideoEngineLog.d()) {
                String str = this.TAG;
                TTVideoEngineLog.d(str, "setStrategySource " + strategySource);
                String str2 = this.TAG;
                TTVideoEngineLog.d(str2, "setStrategySource " + CodecStrategy.dump());
            }
            this.mSource = strategySource;
            if (strategySource.isCodecStrategyValid()) {
                CodecStrategy.ResolveResult resolveStartPlayback = CodecStrategy.resolveStartPlayback(strategySource, true);
                if (resolveStartPlayback != null) {
                    setupSource(this.mSourceSetter, resolveStartPlayback);
                    return;
                } else {
                    setupSource(this.mSourceSetter, strategySource);
                    return;
                }
            }
            setupSource(this.mSourceSetter, strategySource);
            return;
        }
        throw new EngineException(new Error(Error.SetStrategySource, Error.InvalidSource));
    }

    public CodecStrategyAdapter(TTVideoEngineImpl tTVideoEngineImpl) {
        this(new PlayerSourceSetter(tTVideoEngineImpl));
    }

    private void setupSource(SourceSetter sourceSetter, StrategySource strategySource) {
        this.mResolveResult = null;
        int i10 = AnonymousClass1.$SwitchMap$com$ss$ttvideoengine$source$Source$Type[strategySource.type().ordinal()];
        if (i10 == 1) {
            sourceSetter.setDirectUrl(strategySource.vid(), ((DirectUrlSource) strategySource).firstItem(), null, false);
        } else if (i10 == 2) {
            VidPlayAuthTokenSource vidPlayAuthTokenSource = (VidPlayAuthTokenSource) strategySource;
            sourceSetter.setVideoID(strategySource.vid(), vidPlayAuthTokenSource.playAuthToken(), vidPlayAuthTokenSource.resolution(), vidPlayAuthTokenSource.encodeType(), null);
        } else if (i10 != 3) {
        } else {
            VideoModelSource videoModelSource = (VideoModelSource) strategySource;
            sourceSetter.setVideoModel(videoModelSource.vid(), videoModelSource.videoModel(), videoModelSource.resolution());
        }
    }

    /* loaded from: classes6.dex */
    public interface SourceSetter {
        public static final int TYPE_PLAYER = 0;
        public static final int TYPE_PRELOAD = 1;

        default String createTag() {
            return CodecStrategy.TAG;
        }

        default int type() {
            return -1;
        }

        default void setVideoModel(String str, IVideoModel iVideoModel, Resolution resolution) {
        }

        default void setDirectUrl(String str, DirectUrlSource.UrlItem urlItem, @Nullable CodecStrategy.Dimension dimension, boolean z10) {
        }

        default void setVideoID(String str, String str2, @Nullable Resolution resolution, @Nullable String str3, @Nullable CodecStrategy.Dimension dimension) {
        }
    }
}
