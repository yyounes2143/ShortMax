package com.ss.texturerender;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.Bundle;
import com.bytedance.bmf_mods_lite_api.bean.MultiScaleParams;
import com.bytedance.bmf_mods_lite_api.bean.OesParams;
import com.bytedance.bmf_mods_lite_api.bean.RoiParams;
import com.bytedance.bmf_mods_lite_api.bean.SRConfig;
import com.bytedance.bmf_mods_lite_api.bean.SharpLevelParams;
import com.bytedance.bmf_mods_lite_api.callback.SRInitCallback;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class VideoOCLSRBmfWrapper extends VideoOCLSRBaseWrapper {
    public static final int ASYC_INIT_DOWNLOADING = 200010;
    private static final int ASYNC_INIT_STATUS_INITING = 1;
    private static final int ASYNC_INIT_STATUS_INIT_FAIL = 3;
    private static final int ASYNC_INIT_STATUS_INIT_SUCCESS = 2;
    private static final int ASYNC_INIT_STATUS_UNKONW = 0;
    private static final int HEIGHT_DEFAULT = 4096;
    private static final String LOG_TAG = "VideoOCLSRBmfWrapper";
    private static final String VIDEO_OCLSR_CLASS_NAME = "com.bytedance.bmf_mods.VideoSuperResolution";
    private static final String VIDEO_OCLSR_COMPONENT_CLASS_NAME = "com.bytedance.bmf_mods_lite.VideoSuperResolution";
    private static final String VIDEO_OCLSR_PICO_CLASS_NAME = "com.bytedance.bmf_mods.VideoSRLut";
    private static final int WIDTH_DEFAULT = 4096;
    private int algType;
    private int bmflogCount;
    private int curr_height;
    private int curr_width;
    private Method mAsyncInitMethod;
    private volatile int mAsyncInitStatus;
    private Method mFreeMethod;
    private Method mGlInitMethod;
    private Method mInitMethod;
    private Method mMultiScaleOesProcessMethod;
    private Method mMultiScaleProcessMethod;
    private MySRInitCallback mMySRInitCallback;
    private Method mProcessMethod;
    private Method mProcessOesMethod;
    private Method mProcessOesMethodWithYUV;
    private Object mSRObject;
    private volatile int mSupportSharpness;
    private int mTexType;
    private boolean mUseBmfComponent;
    private int oTextureId;
    private boolean useGL;

    /* loaded from: classes6.dex */
    private static class MySRInitCallback implements SRInitCallback {
        private final WeakReference<VideoOCLSRBmfWrapper> mRef;

        public MySRInitCallback(VideoOCLSRBmfWrapper videoOCLSRBmfWrapper) {
            this.mRef = new WeakReference<>(videoOCLSRBmfWrapper);
        }

        public void onInitResult(int i10, int i11) {
            VideoOCLSRBmfWrapper videoOCLSRBmfWrapper = this.mRef.get();
            if (videoOCLSRBmfWrapper == null) {
                TextureRenderLog.i(-1, VideoOCLSRBmfWrapper.LOG_TAG, "bmf on initResult fail vst is null");
            } else {
                videoOCLSRBmfWrapper.onSRAsyncInitResult(i10, i11);
            }
        }
    }

    public VideoOCLSRBmfWrapper(int i10) {
        this(i10, false);
    }

    private void _initObjAndMethod() {
        Class<?> clzUsingPluginLoader;
        try {
            if (this.mUseBmfComponent) {
                clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_OCLSR_COMPONENT_CLASS_NAME);
            } else if (this.useGL) {
                clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_OCLSR_PICO_CLASS_NAME);
            } else {
                clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_OCLSR_CLASS_NAME);
            }
            if (clzUsingPluginLoader != null) {
                if (this.useGL) {
                    Class cls = Integer.TYPE;
                    Class cls2 = Boolean.TYPE;
                    this.mGlInitMethod = clzUsingPluginLoader.getDeclaredMethod("GlSrInit", String.class, cls, cls2, cls, cls);
                    this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("Process", cls, cls, cls, cls, cls2);
                } else {
                    Class cls3 = Integer.TYPE;
                    this.mInitMethod = clzUsingPluginLoader.getDeclaredMethod("Init", cls3, cls3, cls3, cls3, String.class, String.class, String.class, cls3, cls3);
                    if (this.mUseBmfComponent) {
                        this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessTexture", cls3, cls3, cls3, RoiParams.class, MultiScaleParams.class, SharpLevelParams.class);
                        this.mAsyncInitMethod = clzUsingPluginLoader.getDeclaredMethod("Init", cls3, cls3, cls3, cls3, String.class, String.class, String.class, cls3, cls3, SRConfig.class, SRInitCallback.class);
                    } else {
                        this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessTexture", cls3, cls3, cls3, cls3, cls3, cls3, cls3, cls3, Long.TYPE);
                        this.mAsyncInitMethod = null;
                    }
                }
                if (!this.useGL) {
                    if (this.mUseBmfComponent) {
                        Class cls4 = Integer.TYPE;
                        Method declaredMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessOesTexture", cls4, cls4, cls4, float[].class, RoiParams.class, MultiScaleParams.class, SharpLevelParams.class, OesParams.class);
                        this.mProcessOesMethod = declaredMethod;
                        this.mProcessOesMethodWithYUV = declaredMethod;
                        this.mMultiScaleOesProcessMethod = declaredMethod;
                        this.mMultiScaleProcessMethod = this.mProcessMethod;
                    } else {
                        Class cls5 = Integer.TYPE;
                        this.mProcessOesMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessOesTexture", cls5, cls5, cls5, float[].class, cls5, cls5, cls5, cls5, cls5, Long.TYPE);
                        try {
                            this.mProcessOesMethodWithYUV = clzUsingPluginLoader.getDeclaredMethod("ProcessOesTexture", cls5, cls5, cls5, float[].class, float[].class, float[].class, Boolean.TYPE);
                        } catch (Exception e10) {
                            int i10 = this.mTexType;
                            TextureRenderLog.e(i10, LOG_TAG, "getmethod error:" + e10.toString() + ", old bmf version maybe");
                        }
                        try {
                            Class cls6 = Integer.TYPE;
                            this.mMultiScaleProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessMultiScaleTexture", cls6, cls6, cls6, cls6, cls6, cls6, cls6, cls6, Long.TYPE, cls6, cls6);
                        } catch (Exception e11) {
                            int i11 = this.mTexType;
                            TextureRenderLog.e(i11, LOG_TAG, "getmethod error:" + e11.toString() + ", old bmf version maybe");
                        }
                        try {
                            Class cls7 = Integer.TYPE;
                            this.mMultiScaleOesProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessMultiScaleOesTexture", cls7, cls7, cls7, float[].class, cls7, cls7, cls7, cls7, cls7, Long.TYPE, cls7, cls7);
                        } catch (Exception e12) {
                            int i12 = this.mTexType;
                            TextureRenderLog.e(i12, LOG_TAG, "getmethod error:" + e12.toString() + ", old bmf version maybe");
                        }
                    }
                }
                this.mFreeMethod = clzUsingPluginLoader.getDeclaredMethod("Free", new Class[0]);
                if (this.useGL) {
                    this.mSRObject = clzUsingPluginLoader.newInstance();
                } else {
                    this.mSRObject = clzUsingPluginLoader.getConstructor(Context.class).newInstance(TextureRenderManager.getManager().getContext());
                }
            }
        } catch (Exception e13) {
            int i13 = this.mTexType;
            TextureRenderLog.e(i13, LOG_TAG, "VideoOCLSR get fail:" + e13.toString());
            this.mSRObject = null;
            this.mInitMethod = null;
            this.mGlInitMethod = null;
            this.mFreeMethod = null;
            this.mProcessMethod = null;
            this.mProcessOesMethod = null;
        }
    }

    private Object _invokeMethod(Method method, Object obj, Object... objArr) {
        if (method != null && obj != null) {
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e10) {
                e10.printStackTrace();
                TextureRenderLog.e(this.mTexType, LOG_TAG, e10.toString());
                return null;
            }
        }
        return null;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int GetVideoOclSrOutput() {
        return this.oTextureId;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoAsyncOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4, Bundle bundle) {
        SRConfig sRConfig;
        Object _invokeMethod;
        if (!this.mUseBmfComponent) {
            return false;
        }
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
                sRConfig = new SRConfig.Builder().setHostAndAccessKey(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_HOST, ""), bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_ACCESSKEY, "")).setDeviceId(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_DEVIECEID, "")).setAppId(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_APP_ID, "")).setAppVersion(bundle.getString(TextureRenderKeys.KEY_IS_DOWNLOAD_MODEL_INIT_CONFIG_APP_VERSION, "")).setSharpLevels(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_SHARP_LEVELS, 0), bundle.getBoolean(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_ALLOW_FALLBACK, false)).setModelSource(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_INIT_CONFIG_MODEL_SOURCE, 0)).build();
            } else {
                sRConfig = null;
            }
            if (str2 != null && str2.length() > 0) {
                TextureRenderLog.i(this.mTexType, LOG_TAG, "mInitWithLicenseMethod " + str2);
                _invokeMethod = _invokeMethod(this.mAsyncInitMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), str3, str2, str4, Integer.valueOf(i12), Integer.valueOf(i11), sRConfig, this.mMySRInitCallback);
            } else {
                _invokeMethod = _invokeMethod(this.mAsyncInitMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), str3, "", str4, Integer.valueOf(i12), Integer.valueOf(i11), sRConfig, this.mMySRInitCallback);
            }
            num = _invokeMethod;
            if (num != null && ((Integer) num).intValue() == 200010) {
                this.mAsyncInitStatus = 1;
            } else if (num != null && ((Integer) num).intValue() == 0) {
                this.mSupportSharpness = SRConfig.SHARP_LEVEL_DEFAULT | SRConfig.SHARP_LEVEL_WEAK | SRConfig.SHARP_LEVEL_MEDIUM | SRConfig.SHARP_LEVEL_STRONG;
                this.mAsyncInitStatus = 2;
            }
        }
        if (num == null || num.intValue() < 0) {
            this.mAsyncInitStatus = 3;
        }
        if (num != null && num.intValue() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, String str2, int i11, int i12, int i13, String str3, String str4) {
        return InitVideoOclSr(str, i10, z10, false, 4096, 4096, str2, i11, i12, i13, str3, str4);
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public void ReleaseVideoOclSr() {
        Method method;
        Object obj = this.mSRObject;
        if (obj != null && (method = this.mFreeMethod) != null) {
            _invokeMethod(method, obj, new Object[0]);
            TextureRenderLog.i(this.mTexType, LOG_TAG, "FreeVideoOclSr");
        }
        this.mAsyncInitStatus = 0;
        this.mSRObject = null;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        SharpLevelParams sharpLevelParams;
        Object _invokeMethod;
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null || this.mProcessOesMethod == null) {
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
            if (this.mUseBmfComponent) {
                _invokeMethod = _invokeMethod(this.mProcessOesMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, roiParams, null, sharpLevelParams, null);
            } else {
                _invokeMethod = _invokeMethod(this.mProcessOesMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(i16), Integer.valueOf(i17), Long.valueOf(j10));
            }
        } else {
            MultiScaleParams multiScaleParams = new MultiScaleParams(i19);
            if (this.mUseBmfComponent) {
                _invokeMethod = _invokeMethod(this.mMultiScaleOesProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, roiParams, multiScaleParams, sharpLevelParams, null);
            } else {
                _invokeMethod = _invokeMethod(this.mMultiScaleOesProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(i16), Integer.valueOf(i17), Long.valueOf(j10), Integer.valueOf(i18), Integer.valueOf(i19));
            }
        }
        if (_invokeMethod != null) {
            int intValue = ((Integer) _invokeMethod).intValue();
            this.oTextureId = intValue;
            if (intValue > 0) {
                int i21 = this.mTexType;
                TextureRenderLog.d(i21, LOG_TAG, "bmfTextureProcess oes sucess, scale type: " + i19);
            }
        }
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        SharpLevelParams sharpLevelParams;
        Object _invokeMethod;
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null || this.mProcessMethod == null) {
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
            if (this.mUseBmfComponent) {
                _invokeMethod = _invokeMethod(this.mProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), roiParams, null, sharpLevelParams);
            } else {
                _invokeMethod = _invokeMethod(this.mProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(i16), Integer.valueOf(i17), Long.valueOf(j10));
            }
        } else {
            MultiScaleParams multiScaleParams = new MultiScaleParams(i19);
            if (this.mUseBmfComponent) {
                _invokeMethod = _invokeMethod(this.mMultiScaleProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), roiParams, multiScaleParams, sharpLevelParams);
            } else {
                _invokeMethod = _invokeMethod(this.mMultiScaleProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), Integer.valueOf(i16), Integer.valueOf(i17), Long.valueOf(j10), Integer.valueOf(i18), Integer.valueOf(i19));
            }
        }
        if (_invokeMethod != null) {
            int intValue = ((Integer) _invokeMethod).intValue();
            this.oTextureId = intValue;
            int i21 = this.bmflogCount;
            if (i21 >= 100 && intValue > 0) {
                int i22 = this.mTexType;
                TextureRenderLog.d(i22, LOG_TAG, "bmfTextureProcess sucess, scale type: " + i19);
                this.bmflogCount = 0;
            } else {
                this.bmflogCount = i21 + 1;
            }
        }
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean glSrInit(String str, int i10, boolean z10, int i11, int i12) {
        Object obj;
        Method method;
        this.bmflogCount = 0;
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        this.algType = i10;
        Object obj2 = this.mSRObject;
        if (obj2 != null && (method = this.mGlInitMethod) != null) {
            obj = _invokeMethod(method, obj2, "", Integer.valueOf(i10), Boolean.valueOf(z10), 4096, 4096);
        } else {
            obj = null;
        }
        if (obj == null || !((Boolean) obj).booleanValue()) {
            return false;
        }
        return true;
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
    public int videoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13) {
        Object obj;
        if (this.mSRObject == null || this.mProcessMethod == null) {
            _initObjAndMethod();
        }
        try {
            obj = _invokeMethod(this.mProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i13), Integer.valueOf(i11), Integer.valueOf(i12), Boolean.valueOf(z10));
        } catch (Exception e10) {
            e10.printStackTrace();
            TextureRenderLog.d(this.mTexType, LOG_TAG, "fatal bmf sr");
            obj = null;
        }
        if (obj != null) {
            int i14 = this.bmflogCount;
            if (i14 >= 100) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, "bmfTextureProcess sucess");
                this.bmflogCount = 0;
            } else {
                this.bmflogCount = i14 + 1;
            }
        }
        if (obj == null) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }

    public VideoOCLSRBmfWrapper(int i10, boolean z10) {
        this.mSRObject = null;
        this.mInitMethod = null;
        this.mGlInitMethod = null;
        this.mAsyncInitMethod = null;
        this.mProcessMethod = null;
        this.mProcessOesMethod = null;
        this.mMultiScaleProcessMethod = null;
        this.mMultiScaleOesProcessMethod = null;
        this.mProcessOesMethodWithYUV = null;
        this.mFreeMethod = null;
        this.useGL = false;
        this.bmflogCount = 0;
        this.oTextureId = -1;
        this.mTexType = -1;
        this.mUseBmfComponent = false;
        this.mAsyncInitStatus = 0;
        this.mSupportSharpness = SRConfig.SHARP_LEVEL_DEFAULT;
        this.mMySRInitCallback = null;
        this.mTexType = i10;
        this.mUseBmfComponent = z10;
        if (DeviceManager.isVRDevice()) {
            this.useGL = true;
        }
        TextureRenderLog.d(this.mTexType, LOG_TAG, "new VideoOCLSRBmfWrapper");
        _initObjAndMethod();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, int i11, int i12) {
        return InitVideoOclSr(str, i10, z10, false, i11, i12, "", 0, 0, 0, "", "");
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4) {
        Object obj;
        if (this.mSRObject == null) {
            _initObjAndMethod();
        }
        this.algType = i10;
        if (this.mSRObject == null) {
            obj = null;
        } else if (str2 != null && str2.length() > 0) {
            int i16 = this.mTexType;
            TextureRenderLog.i(i16, LOG_TAG, "mInitWithLicenseMethod " + str2);
            obj = _invokeMethod(this.mInitMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), str3, str2, str4, Integer.valueOf(i12), Integer.valueOf(i11));
        } else {
            obj = _invokeMethod(this.mInitMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i13), Integer.valueOf(i14), Integer.valueOf(i15), str3, "", str4, Integer.valueOf(i12), Integer.valueOf(i11));
        }
        this.mAsyncInitStatus = 2;
        return obj != null && ((Integer) obj).intValue() == 0;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10) {
        Object obj;
        if (this.mSRObject == null || this.mProcessMethod == null) {
            _initObjAndMethod();
        }
        if (this.curr_width != i11 || this.curr_height != i12) {
            TexGLUtils.deleteTexture(this.oTextureId);
            this.curr_width = i11;
            this.curr_height = i12;
            double d10 = this.algType == 0 ? 2.0d : 1.5d;
            int i13 = (int) (i11 * d10);
            int i14 = (int) (d10 * i12);
            if (DeviceManager.isVRDevice()) {
                this.oTextureId = TexGLUtils.genTexture(3553, 9728);
            } else {
                this.oTextureId = TexGLUtils.genTexture(3553);
            }
            GLES20.glBindTexture(3553, this.oTextureId);
            if (this.useGL) {
                GLES30.glTexStorage2D(3553, 1, 32856, i13, i14);
            } else {
                GLES20.glTexImage2D(3553, 0, 6408, i13, i14, 0, 6408, 5121, null);
            }
        }
        try {
            obj = _invokeMethod(this.mProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(this.oTextureId), Integer.valueOf(i11), Integer.valueOf(i12), Boolean.valueOf(z10));
        } catch (Exception e10) {
            e10.printStackTrace();
            TextureRenderLog.d(this.mTexType, LOG_TAG, "fatal bmf sr");
            obj = null;
        }
        if (obj != null) {
            int i15 = this.bmflogCount;
            if (i15 >= 100) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, "bmfTextureProcess sucess");
                this.bmflogCount = 0;
            } else {
                this.bmflogCount = i15 + 1;
            }
        }
        if (obj == null) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, float[] fArr2, float[] fArr3, boolean z10, Bundle bundle) {
        if (this.mAsyncInitStatus != 2) {
            return -1;
        }
        if (this.mSRObject == null || this.mProcessOesMethodWithYUV == null) {
            _initObjAndMethod();
        }
        OesParams oesParams = new OesParams(fArr2, fArr3, z10);
        Object obj = null;
        SharpLevelParams sharpLevelParams = (bundle == null || !bundle.containsKey(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL)) ? null : new SharpLevelParams(bundle.getInt(TextureRenderKeys.KEY_IS_BMF_SHARP_LEVEL));
        if (this.algType == 12) {
            if (this.mUseBmfComponent) {
                obj = _invokeMethod(this.mProcessOesMethodWithYUV, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, null, null, sharpLevelParams, oesParams);
            } else {
                obj = _invokeMethod(this.mProcessOesMethodWithYUV, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr2, fArr3, fArr, Boolean.valueOf(z10));
            }
        }
        if (obj != null) {
            int intValue = ((Integer) obj).intValue();
            this.oTextureId = intValue;
            int i13 = this.bmflogCount;
            if (i13 >= 100 && intValue > 0) {
                TextureRenderLog.d(this.mTexType, LOG_TAG, "bmfTextureProcess oes yuv sucess");
                this.bmflogCount = 0;
            } else {
                this.bmflogCount = i13 + 1;
            }
        }
        if (obj == null) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }
}
