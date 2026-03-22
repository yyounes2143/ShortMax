package com.ss.texturerender;

import android.content.Context;
import android.os.Bundle;
import com.bytedance.bmf_mods_lite_api.SuperResolutionLiteApi;
import com.bytedance.bmf_mods_lite_api.bean.MultiScaleParams;
import com.bytedance.bmf_mods_lite_api.bean.OesParams;
import com.bytedance.bmf_mods_lite_api.bean.RoiParams;
import com.bytedance.bmf_mods_lite_api.bean.SRConfig;
import com.bytedance.bmf_mods_lite_api.bean.SharpLevelParams;
import com.bytedance.bmf_mods_lite_api.callback.SRInitCallback;
import java.lang.ref.WeakReference;
/* loaded from: classes6.dex */
public class VideoOCLSRBmfWrapperDirectInvoke extends VideoOCLSRBaseWrapper {
    public static final int ASYC_INIT_DOWNLOADING = 200010;
    private static final int ASYNC_INIT_STATUS_INITING = 1;
    private static final int ASYNC_INIT_STATUS_INIT_FAIL = 3;
    private static final int ASYNC_INIT_STATUS_INIT_SUCCESS = 2;
    private static final int ASYNC_INIT_STATUS_UNKONW = 0;
    private static final int HEIGHT_DEFAULT = 4096;
    private static final String LOG_TAG = "VideoOCLSRBmfWrapperDirectInovke";
    private static final String VIDEO_OCLSR_COMPONENT_CLASS_NAME = "com.bytedance.bmf_mods_lite.VideoSuperResolution";
    private static final int WIDTH_DEFAULT = 4096;
    private int algType;
    private int mTexType;
    private SuperResolutionLiteApi mSRObject = null;
    private int bmflogCount = 0;
    private int oTextureId = -1;
    private volatile int mAsyncInitStatus = 0;
    private volatile int mSupportSharpness = SRConfig.SHARP_LEVEL_DEFAULT;
    private MySRInitCallback mMySRInitCallback = null;

    /* loaded from: classes6.dex */
    private static class MySRInitCallback implements SRInitCallback {
        private final WeakReference<VideoOCLSRBmfWrapperDirectInvoke> mRef;

        public MySRInitCallback(VideoOCLSRBmfWrapperDirectInvoke videoOCLSRBmfWrapperDirectInvoke) {
            this.mRef = new WeakReference<>(videoOCLSRBmfWrapperDirectInvoke);
        }

        public void onInitResult(int i10, int i11) {
            VideoOCLSRBmfWrapperDirectInvoke videoOCLSRBmfWrapperDirectInvoke = this.mRef.get();
            if (videoOCLSRBmfWrapperDirectInvoke == null) {
                TextureRenderLog.i(-1, VideoOCLSRBmfWrapperDirectInvoke.LOG_TAG, "bmf on initResult fail vst is null");
            } else {
                videoOCLSRBmfWrapperDirectInvoke.onSRAsyncInitResult(i10, i11);
            }
        }
    }

    public VideoOCLSRBmfWrapperDirectInvoke(int i10) {
        this.mTexType = -1;
        this.mTexType = i10;
        TextureRenderLog.d(i10, LOG_TAG, "new VideoOCLSRBmfWrapperDirectInvoke");
        _initObjAndMethod();
    }

    private void _initObjAndMethod() {
        try {
            Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_OCLSR_COMPONENT_CLASS_NAME);
            if (clzUsingPluginLoader != null) {
                this.mSRObject = (SuperResolutionLiteApi) clzUsingPluginLoader.getConstructor(Context.class).newInstance(TextureRenderManager.getManager().getContext());
            }
        } catch (Exception e10) {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, LOG_TAG, "VideoOCLSR get fail:" + e10.toString());
            this.mSRObject = null;
        }
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int GetVideoOclSrOutput() {
        return this.oTextureId;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoAsyncOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4, Bundle bundle) {
        SRConfig sRConfig;
        Integer valueOf;
        if (this.mAsyncInitStatus == 1 || this.mAsyncInitStatus == 2) {
            return false;
        }
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        this.algType = i10;
        Integer num = null;
        if (this.mSRObject != null) {
            if (this.mMySRInitCallback == null) {
                this.mMySRInitCallback = new MySRInitCallback(this);
            }
            if (bundle != null) {
                sRConfig = new SRConfig.Builder().setHostAndAccessKey(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_HOST, ""), bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_ACCESSKEY, "")).setDeviceId(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_DEVIECEID, "")).setAppId(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_APP_ID, "")).setAppVersion(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_APP_VERSION, "")).setSharpLevels(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_SHARP_LEVELS), bundle.getBoolean(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_ALLOW_FALLBACK)).setModelSource(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_MODEL_SOURCE, 0)).build();
            } else {
                sRConfig = null;
            }
            if (str2 != null && str2.length() > 0) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "mInitWithLicenseMethod " + str2);
                valueOf = Integer.valueOf(this.mSRObject.Init(i10, i13, i14, i15, str3, str2, str4, i12, i11));
            } else {
                valueOf = Integer.valueOf(this.mSRObject.Init(i10, i13, i14, i15, str3, "", str4, i12, i11, sRConfig, this.mMySRInitCallback));
            }
            num = valueOf;
            if (num.intValue() == 200010) {
                this.mAsyncInitStatus = 1;
            } else if (num.intValue() == 0) {
                this.mSupportSharpness = SRConfig.SHARP_LEVEL_DEFAULT | SRConfig.SHARP_LEVEL_WEAK | SRConfig.SHARP_LEVEL_MEDIUM | SRConfig.SHARP_LEVEL_STRONG;
                this.mAsyncInitStatus = 2;
            }
        }
        if (num == null || num.intValue() < 0) {
            this.mAsyncInitStatus = 3;
        }
        if (num == null || num.intValue() != 0) {
            return false;
        }
        return true;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, String str2, int i11, int i12, int i13, String str3, String str4) {
        return InitVideoOclSr(str, i10, z10, false, 4096, 4096, str2, i11, i12, i13, str3, str4);
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public void ReleaseVideoOclSr() {
        SuperResolutionLiteApi superResolutionLiteApi = this.mSRObject;
        if (superResolutionLiteApi != null) {
            superResolutionLiteApi.Free();
        }
        this.mAsyncInitStatus = 0;
        this.mSRObject = null;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        SharpLevelParams sharpLevelParams;
        Integer valueOf;
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        RoiParams roiParams = new RoiParams(i13, i14, i15, i16, i17, j10);
        if (bundle == null || !bundle.containsKey(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL)) {
            sharpLevelParams = null;
        } else {
            int i20 = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL);
            if (i20 != -1 && (this.mSupportSharpness & i20) == 0) {
                i20 = SRConfig.SHARP_LEVEL_DEFAULT;
            }
            sharpLevelParams = new SharpLevelParams(i20);
        }
        if (this.algType < 7) {
            valueOf = Integer.valueOf(this.mSRObject.ProcessOesTexture(i10, i11, i12, fArr, roiParams, (MultiScaleParams) null, sharpLevelParams, (OesParams) null));
        } else {
            valueOf = Integer.valueOf(this.mSRObject.ProcessOesTexture(i10, i11, i12, fArr, roiParams, new MultiScaleParams(i19), sharpLevelParams, (OesParams) null));
        }
        int intValue = valueOf.intValue();
        this.oTextureId = intValue;
        int i21 = this.bmflogCount;
        if (i21 >= 100 && intValue > 0) {
            int i22 = this.mTexType;
            TextureRenderLog.d(i22, LOG_TAG, "bmfTextureProcess oes sucess, scale type: " + i19);
            this.bmflogCount = 0;
        } else {
            this.bmflogCount = i21 + 1;
        }
        return valueOf.intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        SharpLevelParams sharpLevelParams;
        Integer valueOf;
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        RoiParams roiParams = new RoiParams(i13, i14, i15, i16, i17, j10);
        if (bundle != null && bundle.containsKey(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL)) {
            int i20 = bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL);
            if (i20 != -1 && (this.mSupportSharpness & i20) == 0) {
                i20 = SRConfig.SHARP_LEVEL_DEFAULT;
            }
            sharpLevelParams = new SharpLevelParams(i20);
        } else {
            sharpLevelParams = null;
        }
        if (this.algType < 7) {
            valueOf = Integer.valueOf(this.mSRObject.ProcessTexture(i10, i11, i12, roiParams, (MultiScaleParams) null, sharpLevelParams));
        } else {
            valueOf = Integer.valueOf(this.mSRObject.ProcessTexture(i10, i11, i12, roiParams, new MultiScaleParams(i19), sharpLevelParams));
        }
        int intValue = valueOf.intValue();
        this.oTextureId = intValue;
        int i21 = this.bmflogCount;
        if (i21 >= 100 && intValue > 0) {
            int i22 = this.mTexType;
            TextureRenderLog.d(i22, LOG_TAG, "bmfTextureProcess sucess, scale type: " + i19);
            this.bmflogCount = 0;
        } else {
            this.bmflogCount = i21 + 1;
        }
        return valueOf.intValue();
    }

    public void onSRAsyncInitResult(int i10, int i11) {
        this.mSupportSharpness = i11;
        if (i10 != 0) {
            this.mAsyncInitStatus = 3;
            int i12 = this.mTexType;
            TextureRenderLog.i(i12, LOG_TAG, "bmf asyncinit fail:" + i10);
            return;
        }
        int i13 = this.mTexType;
        TextureRenderLog.i(i13, LOG_TAG, "bmf asyncinit success:" + i11);
        this.mAsyncInitStatus = 2;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, int i11, int i12) {
        return InitVideoOclSr(str, i10, z10, false, i11, i12, "", 0, 0, 0, "", "");
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4) {
        Integer num;
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        this.algType = i10;
        if (this.mSRObject == null) {
            num = null;
        } else if (str2 != null && str2.length() > 0) {
            int i16 = this.mTexType;
            TextureRenderLog.i(i16, LOG_TAG, "mInitWithLicenseMethod " + str2);
            num = Integer.valueOf(this.mSRObject.Init(i10, i13, i14, i15, str3, str2, str4, i12, i11));
        } else {
            num = Integer.valueOf(this.mSRObject.Init(i10, i13, i14, i15, str3, "", str4, i12, i11));
        }
        this.mAsyncInitStatus = 2;
        return num != null && num.intValue() == 0;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, float[] fArr2, float[] fArr3, boolean z10, Bundle bundle) {
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        OesParams oesParams = new OesParams(fArr2, fArr3, z10);
        Integer num = null;
        SharpLevelParams sharpLevelParams = (bundle == null || !bundle.containsKey(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL)) ? null : new SharpLevelParams(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL));
        int i13 = this.algType;
        if (i13 == 12 || i13 == 14) {
            num = Integer.valueOf(this.mSRObject.ProcessOesTexture(i10, i11, i12, fArr, (RoiParams) null, (MultiScaleParams) null, sharpLevelParams, oesParams));
        }
        if (num != null) {
            int intValue = num.intValue();
            this.oTextureId = intValue;
            int i14 = this.bmflogCount;
            if (i14 >= 100 && intValue > 0) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, "bmfTextureProcess oes yuv sucess");
                this.bmflogCount = 0;
            } else {
                this.bmflogCount = i14 + 1;
            }
        }
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}
