package com.ss.texturerender.effect.ICEffect;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderer;
import com.ss.texturerender.VideoSurfaceTexture;
import com.ss.texturerender.effect.AbsEffect;
import com.ss.texturerender.effect.EffectFactory;
import com.ss.texturerender.effect.EffectTexture;
import com.ss.texturerender.effect.EffectTextureManager;
import com.ss.texturerender.effect.FrameBuffer;
import com.ss.texturerender.effect.GLDefaultFilter;
import java.io.Serializable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class ICEffectWrapper extends AbsEffect {
    public static final int BEF_AB_DATA_TYPE_BOOL = 0;
    public static final int BEF_AB_DATA_TYPE_FLOAT = 2;
    public static final int BEF_AB_DATA_TYPE_INT = 1;
    public static final int BEF_AB_DATA_TYPE_STRING = 3;
    public static final String DEFAULT_SEI_KEY = "LiveSEI";
    private static final String LOG_TAG = "TR_ICEffectWrapper";
    private static boolean isLibLoaded = loadLibrary();
    private GLDefaultFilter mDefaultFilter;
    private long mHandle;
    private boolean mIsInit;
    public IEffectMsgListener mMsgListener;
    private boolean mProcessOccurError;
    private IEffectResourceFinder mResourceFinder;
    private String mSeiInfo;
    private String mSeiKey;

    /* loaded from: classes6.dex */
    public interface IEffectInitCallback extends Serializable {
        void onInitCallback(int i10);
    }

    /* loaded from: classes6.dex */
    public interface IEffectLogListener extends Serializable {
        void onLogReport(int i10, String str);
    }

    /* loaded from: classes6.dex */
    public interface IEffectMsgListener extends Serializable {
        void onMessageReceived(int i10, long j10, long j11, String str);
    }

    /* loaded from: classes6.dex */
    public interface IEffectResourceFinder extends Serializable {
        long createNativeResourceFinder(long j10);

        void release(long j10);
    }

    public ICEffectWrapper(int i10) {
        super(i10, 21);
        this.mSeiInfo = "";
        this.mSeiKey = DEFAULT_SEI_KEY;
        this.mIsInit = false;
        this.mProcessOccurError = false;
        this.mDefaultFilter = null;
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "new ICEffectWrapper, load so result: " + isLibLoaded);
        this.mOrder = 99;
        this.mIsSupportOes = 0;
        this.mInTextureTarget = 3553;
    }

    private native int _composerAppendNodesWithTags(long j10, Object[] objArr, int i10, Object[] objArr2);

    private native String _composerGetNodePaths(long j10);

    private native int _composerRemoveNodes(long j10, String[] strArr, int i10);

    private native int _composerSetNodesWithTags(long j10, Object[] objArr, int i10, Object[] objArr2);

    private static native int _configABBooleanValue(long j10, String str, boolean z10);

    private static native int _configABFloatValue(long j10, String str, float f10);

    private static native int _configABIntValue(long j10, String str, int i10);

    private static native int _configABStringValue(long j10, String str, String str2);

    private native int _configEffect(long j10, int i10, int i11, String str, String str2, String str3, String str4);

    private native long _createEffectWrapper();

    private native String _getEventData(long j10, int i10);

    private native int _initEffect(long j10, int i10, int i11, String str);

    private native int _processFrame(long j10, int i10, int i11, int i12, int i13, double d10, String str, String str2);

    private native int _release(long j10);

    private native int _sendEffectMsg(long j10, int i10, int i11, int i12, String str);

    private native int _setRenderCacheString(long j10, String str, String str2);

    private native int _setTextureSize(long j10, int i10, int i11);

    public static boolean loadLibrary() {
        try {
            System.loadLibrary("texturerender_native");
            return true;
        } catch (UnsatisfiedLinkError e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int composerAppendNodesWithTags(Bundle bundle) {
        if (!isLibLoaded || !this.mIsInit || bundle == null || this.mHandle == 0) {
            return -1;
        }
        String[] stringArray = bundle.getStringArray(ICEffectKeys.KEY_IS_IC_EFFECT_NODE_PATH);
        String[] stringArray2 = bundle.getStringArray(ICEffectKeys.KEY_IS_IC_EFFECT_STICKER_TAGS);
        if (stringArray == null) {
            return -1;
        }
        int _composerAppendNodesWithTags = _composerAppendNodesWithTags(this.mHandle, stringArray, stringArray.length, stringArray2);
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "_composerAppendNodesWithTags ret: " + _composerAppendNodesWithTags);
        return _composerAppendNodesWithTags;
    }

    public int composerRemoveNodes(Bundle bundle) {
        String[] stringArray;
        if (!isLibLoaded || !this.mIsInit || bundle == null || this.mHandle == 0 || (stringArray = bundle.getStringArray(ICEffectKeys.KEY_IS_IC_EFFECT_NODE_PATH)) == null) {
            return -1;
        }
        int _composerRemoveNodes = _composerRemoveNodes(this.mHandle, stringArray, stringArray.length);
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "_composerRemoveNodes ret: " + _composerRemoveNodes);
        return _composerRemoveNodes;
    }

    public int composerSetNodesWithTags(Bundle bundle) {
        if (!isLibLoaded || !this.mIsInit || bundle == null || this.mHandle == 0) {
            return -1;
        }
        String[] stringArray = bundle.getStringArray(ICEffectKeys.KEY_IS_IC_EFFECT_NODE_PATH);
        String[] stringArray2 = bundle.getStringArray(ICEffectKeys.KEY_IS_IC_EFFECT_STICKER_TAGS);
        if (stringArray == null) {
            return -1;
        }
        int _composerSetNodesWithTags = _composerSetNodesWithTags(this.mHandle, stringArray, stringArray.length, stringArray2);
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "_composerSetNodesWithTags ret: " + _composerSetNodesWithTags);
        return _composerSetNodesWithTags;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public Object getOption(Bundle bundle) {
        if (!isLibLoaded || !this.mIsInit || bundle == null || this.mHandle == 0) {
            return null;
        }
        int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_ACTION);
        if (i10 != 3) {
            if (i10 != 9) {
                return null;
            }
            return _getEventData(this.mHandle, bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE));
        }
        return _composerGetNodePaths(this.mHandle);
    }

    public long getResourceFunc(long j10) {
        IEffectResourceFinder iEffectResourceFinder = this.mResourceFinder;
        if (iEffectResourceFinder != null) {
            return iEffectResourceFinder.createNativeResourceFinder(j10);
        }
        return 0L;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public int init(Bundle bundle) {
        String str;
        if (bundle == null || !isLibLoaded || this.mIsInit) {
            return -1;
        }
        this.mHandle = _createEffectWrapper();
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, LOG_TAG, "create effect wrapper, handle: " + this.mHandle);
        if (this.mHandle == 0) {
            return -1;
        }
        int i11 = bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_LOG_LEVEL);
        String string = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_LOG_KEY);
        String string2 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_PLATFORM_CONFIG);
        int i12 = bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_USE_GL30);
        String string3 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_CACHE_PATH);
        String string4 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_LICENSE);
        this.mMsgListener = (IEffectMsgListener) bundle.getSerializable(ICEffectKeys.KEY_IS_IC_EFFECT_MSG_CALLBACK);
        IEffectInitCallback iEffectInitCallback = (IEffectInitCallback) bundle.getSerializable(ICEffectKeys.KEY_IS_IC_EFFECT_INIT_RESULT_CALLBACK);
        this.mResourceFinder = (IEffectResourceFinder) bundle.getSerializable(ICEffectKeys.KEY_IS_IC_EFFECT_RESOURCE_FINDER);
        long j10 = this.mHandle;
        String str2 = AppMeasurementSdk.ConditionalUserProperty.VALUE;
        int _configEffect = _configEffect(j10, i12, i11, string2, string3, string4, string);
        int i13 = this.mTexType;
        TextureRenderLog.i(i13, LOG_TAG, "config effect, ret: " + _configEffect);
        if (_configEffect < 0) {
            if (iEffectInitCallback != null) {
                iEffectInitCallback.onInitCallback(_configEffect);
            }
            VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
            int i14 = this.mEffectType;
            videoSurfaceTexture.notifyError(17, i14, "iceffect config effect error code: " + _configEffect);
            return _configEffect;
        }
        String string5 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_AB_CONFIG);
        if (!TextUtils.isEmpty(string5)) {
            try {
                JSONArray jSONArray = new JSONArray(string5);
                int i15 = 0;
                while (i15 < jSONArray.length()) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i15);
                    int i16 = this.mTexType;
                    TextureRenderLog.i(i16, LOG_TAG, "set effect ab config: " + optJSONObject);
                    if (optJSONObject.has("key") && optJSONObject.has("data_type")) {
                        str = str2;
                        if (optJSONObject.has(str)) {
                            String optString = optJSONObject.optString("key");
                            int optInt = optJSONObject.optInt("data_type");
                            if (optInt != 0) {
                                if (optInt != 1) {
                                    if (optInt != 2) {
                                        if (optInt == 3) {
                                            _configEffect = _configABStringValue(this.mHandle, optString, optJSONObject.optString(optString));
                                        }
                                    } else {
                                        _configEffect = _configABFloatValue(this.mHandle, optString, (float) optJSONObject.optDouble(optString));
                                    }
                                } else {
                                    _configEffect = _configABIntValue(this.mHandle, optString, optJSONObject.optInt(str));
                                }
                            } else {
                                _configEffect = _configABBooleanValue(this.mHandle, optString, optJSONObject.optBoolean(str));
                            }
                        }
                    } else {
                        str = str2;
                    }
                    i15++;
                    str2 = str;
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
                _configEffect = -1;
            }
        }
        if (_configEffect < 0) {
            if (iEffectInitCallback != null) {
                iEffectInitCallback.onInitCallback(_configEffect);
            }
            VideoSurfaceTexture videoSurfaceTexture2 = this.mSurfaceTexture;
            int i17 = this.mEffectType;
            videoSurfaceTexture2.notifyError(17, i17, "iceffect config ab params error code: " + _configEffect);
            return _configEffect;
        }
        int texWidth = this.mSurfaceTexture.getTexWidth();
        int texHeight = this.mSurfaceTexture.getTexHeight();
        if (texWidth != 0 && texHeight != 0) {
            int _initEffect = _initEffect(this.mHandle, texWidth, texHeight, bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_DEVICE_NAME));
            int i18 = this.mTexType;
            TextureRenderLog.i(i18, LOG_TAG, "init effect width: " + texWidth + ", height: " + texHeight + ", result: " + _initEffect);
            if (_initEffect == 0) {
                this.mIsInit = true;
            } else {
                VideoSurfaceTexture videoSurfaceTexture3 = this.mSurfaceTexture;
                int i19 = this.mEffectType;
                videoSurfaceTexture3.notifyError(17, i19, "iceffect init error code: " + _initEffect);
            }
            if (iEffectInitCallback != null) {
                iEffectInitCallback.onInitCallback(_initEffect);
            }
            return _initEffect;
        }
        TextureRenderLog.i(this.mTexType, LOG_TAG, "iceffect tex size is invalid");
        if (iEffectInitCallback != null) {
            iEffectInitCallback.onInitCallback(-1);
        }
        this.mSurfaceTexture.notifyError(17, this.mEffectType, "iceffect texture size is invalid");
        return -1;
    }

    public void onLogReport(int i10, String str) {
        TextureRenderLog.i(this.mTexType, LOG_TAG, str);
    }

    public void onReceiveEffectMessage(int i10, long j10, long j11, String str) {
        int i11 = this.mTexType;
        TextureRenderLog.i(i11, LOG_TAG, "onReceiveEffectMessage, msgType: " + i10 + ", arg: " + str);
        IEffectMsgListener iEffectMsgListener = this.mMsgListener;
        if (iEffectMsgListener != null) {
            iEffectMsgListener.onMessageReceived(i10, j10, j11, str);
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public EffectTexture process(EffectTexture effectTexture, FrameBuffer frameBuffer) {
        EffectTexture reverseTexture;
        EffectTexture effectTexture2;
        TextureRenderer textureRenderer;
        if (this.mHandle == 0 || effectTexture == null || !this.mIsInit || !isLibLoaded || this.mSurfaceTexture.getIntOption(163) != 1 || (reverseTexture = reverseTexture(effectTexture, frameBuffer, this.mSurfaceTexture)) == null) {
            return effectTexture;
        }
        if (reverseTexture.getWidth() != 0 && reverseTexture.getHeight() != 0) {
            if (frameBuffer != null && (textureRenderer = this.mParentRender) != null && textureRenderer.getEffectTextureManager() != null && this.mSurfaceTexture != null) {
                effectTexture2 = this.mParentRender.getEffectTextureManager().genTexture(effectTexture.getWidth(), effectTexture.getHeight(), this.mSurfaceTexture.getIntOption(130));
            } else {
                effectTexture2 = null;
            }
            EffectTexture effectTexture3 = effectTexture2;
            if (effectTexture3 != null) {
                int _processFrame = _processFrame(this.mHandle, reverseTexture.getTexID(), effectTexture3.getTexID(), reverseTexture.getWidth(), reverseTexture.getHeight(), ((long) ((System.currentTimeMillis() / 1000.0d) * 1000.0d)) / 1000.0d, this.mSeiKey, this.mSeiInfo);
                reverseTexture.giveBack();
                if (_processFrame == 0) {
                    this.mProcessOccurError = false;
                    EffectTexture reverseTexture2 = reverseTexture(effectTexture3, frameBuffer, this.mSurfaceTexture);
                    if (reverseTexture2 != null) {
                        effectTexture.giveBack();
                        reverseTexture2.giveBack();
                        return new EffectTexture((EffectTextureManager) null, reverseTexture2.getTexID(), reverseTexture2.getWidth(), reverseTexture2.getHeight(), 3553);
                    }
                    effectTexture3.giveBack();
                    return effectTexture;
                }
                if (!this.mProcessOccurError) {
                    int i10 = this.mTexType;
                    TextureRenderLog.i(i10, LOG_TAG, "iceffect process error code: " + _processFrame);
                    VideoSurfaceTexture videoSurfaceTexture = this.mSurfaceTexture;
                    int i11 = this.mEffectType;
                    videoSurfaceTexture.notifyError(18, i11, "iceffect process error code: " + _processFrame);
                    this.mProcessOccurError = true;
                }
                effectTexture3.giveBack();
                return effectTexture;
            }
            reverseTexture.giveBack();
            return effectTexture;
        }
        reverseTexture.giveBack();
        return effectTexture;
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public AbsEffect release() {
        String[] split;
        long j10 = this.mHandle;
        if (j10 != 0 && isLibLoaded) {
            String _composerGetNodePaths = _composerGetNodePaths(j10);
            if (!TextUtils.isEmpty(_composerGetNodePaths) && (split = _composerGetNodePaths.split(",")) != null && split.length > 0) {
                _composerRemoveNodes(this.mHandle, split, split.length);
                TextureRenderLog.i(this.mTexType, LOG_TAG, "remove composer nodes");
            }
            _release(this.mHandle);
            TextureRenderLog.i(this.mTexType, LOG_TAG, "release effect");
            this.mHandle = 0L;
            this.mIsInit = false;
            this.mProcessOccurError = false;
            this.mSeiInfo = "";
            this.mDefaultFilter = null;
            return super.release();
        }
        return super.release();
    }

    EffectTexture reverseTexture(EffectTexture effectTexture, FrameBuffer frameBuffer, VideoSurfaceTexture videoSurfaceTexture) {
        if (this.mDefaultFilter == null) {
            GLDefaultFilter gLDefaultFilter = (GLDefaultFilter) EffectFactory.createEffect(this.mTexType, 7);
            this.mDefaultFilter = gLDefaultFilter;
            if (gLDefaultFilter == null) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "create GLDefaultFilter failed");
                return null;
            }
            gLDefaultFilter.setSurfaceTexture(videoSurfaceTexture);
            this.mDefaultFilter.init(null);
            this.mDefaultFilter.setParentRender(this.mParentRender);
        }
        this.mDefaultFilter.setOption(31, 1);
        return this.mDefaultFilter.process(effectTexture, frameBuffer);
    }

    public void sendEffectMsg(Bundle bundle) {
        if (isLibLoaded && this.mIsInit && bundle != null && this.mHandle != 0) {
            int i10 = bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_MSG_ID);
            int i11 = bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_MSG_PARAM1);
            int i12 = bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_MSG_PARAM2);
            String string = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_MSG_STRING_PARAM3);
            if (i10 != -1) {
                _sendEffectMsg(this.mHandle, i10, i11, i12, string);
            }
        }
    }

    @Override // com.ss.texturerender.effect.AbsEffect
    public void setOption(Bundle bundle) {
        if (this.mHandle != 0 && bundle != null && isLibLoaded) {
            switch (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION)) {
                case 1:
                    sendEffectMsg(bundle);
                    return;
                case 2:
                    composerSetNodesWithTags(bundle);
                    return;
                case 3:
                case 9:
                default:
                    return;
                case 4:
                    composerAppendNodesWithTags(bundle);
                    return;
                case 5:
                    composerRemoveNodes(bundle);
                    return;
                case 6:
                    setSeiInfo(bundle);
                    return;
                case 7:
                    setRenderCacheString(bundle);
                    return;
                case 8:
                    setTextureSize(bundle);
                    return;
                case 10:
                    release();
                    return;
            }
        }
    }

    public int setRenderCacheString(Bundle bundle) {
        if (!isLibLoaded || !this.mIsInit || bundle == null || this.mHandle == 0) {
            return -1;
        }
        String string = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_RENDER_CACHE_STRING_KEY);
        String string2 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_RENDER_CACHE_STRING_VALUE);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return -1;
        }
        return _setRenderCacheString(this.mHandle, string, string2);
    }

    public void setSeiInfo(Bundle bundle) {
        if (this.mIsInit && bundle != null && this.mHandle != 0) {
            String string = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_SEI_KEY);
            String string2 = bundle.getString(ICEffectKeys.KEY_IS_IC_EFFECT_SEI_INFO);
            if (TextUtils.equals(string, DEFAULT_SEI_KEY)) {
                this.mSeiInfo = string2;
            }
        }
    }

    public int setTextureSize(Bundle bundle) {
        if (isLibLoaded && this.mIsInit && bundle != null && this.mHandle != 0) {
            return _setTextureSize(this.mHandle, bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_TEX_WIDTH), bundle.getInt(ICEffectKeys.KEY_IS_IC_EFFECT_TEX_HEIGHT));
        }
        return -1;
    }
}
