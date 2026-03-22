package com.ss.texturerender;

import androidx.annotation.NonNull;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class AdaptiveGradingWrapper {
    private static final int HEIGHT_DEFAULT = 720;
    private static final String LOG_TAG = "AdaptiveGradingWrapper";
    private static final int MAX_RETRY_COUNT = 3;
    private static final String VIDEO_ADAPTIVE_GRADING_CLASS_NAME = "com.bytedance.bmf_mods.AdaptiveGrading";
    private static final int WIDTH_DEFAULT = 1440;
    private float[] mBrightnessThreshold;
    private String mCacheFile;
    private float[] mContrastThreshold;
    private int mMaxHeight;
    private int mMaxWidth;
    private float[] mSaturationThreshold;
    private int mTexType;
    private Object mAdaptiveGradingObject = null;
    private Method mInitMethod = null;
    private Method mProcessMethod = null;
    private Method mProcessOesMethod = null;
    private Method mFreeMethod = null;
    private int mMaxInitRetryCount = 0;

    public AdaptiveGradingWrapper(int i10) {
        this.mTexType = i10;
        TextureRenderLog.i(i10, LOG_TAG, "new AdaptiveGradingWrapper");
    }

    private void _initObjAndMethod() {
        try {
            Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_ADAPTIVE_GRADING_CLASS_NAME);
            if (clzUsingPluginLoader != null) {
                Class cls = Integer.TYPE;
                this.mInitMethod = clzUsingPluginLoader.getDeclaredMethod("Init", cls, cls, String.class, float[].class, float[].class, float[].class);
                Class cls2 = Float.TYPE;
                Class cls3 = Boolean.TYPE;
                this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessTexture", cls, cls, cls, cls2, cls2, cls2, cls2, cls2, cls2, cls3);
                this.mProcessOesMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessOesTexture", cls, cls, cls, float[].class, cls2, cls2, cls2, cls2, cls2, cls2, cls3);
                this.mFreeMethod = clzUsingPluginLoader.getDeclaredMethod("Free", new Class[0]);
                this.mAdaptiveGradingObject = clzUsingPluginLoader.newInstance();
            }
        } catch (Exception e10) {
            int i10 = this.mTexType;
            TextureRenderLog.e(i10, LOG_TAG, "VideoOCLSR get fail:" + e10.toString());
            this.mAdaptiveGradingObject = null;
            this.mInitMethod = null;
            this.mFreeMethod = null;
            this.mProcessMethod = null;
        }
    }

    private Object _invokeMethod(Method method, Object obj, Object... objArr) {
        if (method != null && obj != null) {
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e10) {
                TextureRenderLog.e(this.mTexType, LOG_TAG, e10.toString());
                return null;
            }
        }
        return null;
    }

    public void free() {
        _invokeMethod(this.mFreeMethod, this.mAdaptiveGradingObject, new Object[0]);
        this.mAdaptiveGradingObject = null;
        this.mInitMethod = null;
        this.mFreeMethod = null;
        this.mProcessMethod = null;
    }

    public boolean init(int i10, int i11, @NonNull String str, float[] fArr, float[] fArr2, float[] fArr3) {
        if (this.mAdaptiveGradingObject == null || this.mInitMethod == null) {
            _initObjAndMethod();
        }
        if (i10 <= 0) {
            i10 = WIDTH_DEFAULT;
        }
        this.mMaxWidth = i10;
        if (i11 <= 0) {
            i11 = 720;
        }
        this.mMaxHeight = i11;
        this.mCacheFile = str;
        this.mBrightnessThreshold = fArr;
        this.mContrastThreshold = fArr2;
        this.mSaturationThreshold = fArr3;
        Object _invokeMethod = _invokeMethod(this.mInitMethod, this.mAdaptiveGradingObject, Integer.valueOf(i10), Integer.valueOf(this.mMaxHeight), str, fArr, fArr2, fArr3);
        if (_invokeMethod != null && (_invokeMethod instanceof Integer) && ((Integer) _invokeMethod).intValue() >= 0) {
            return true;
        }
        int i12 = this.mTexType;
        TextureRenderLog.i(i12, "AdaptiveGrading", "AdaptiveGrading init error:" + _invokeMethod);
        free();
        return false;
    }

    public int process(int i10, int i11, int i12, float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
        Object obj = this.mAdaptiveGradingObject;
        if (obj != null && this.mInitMethod != null) {
            if (i10 >= 0 && i11 > 0 && i12 > 0) {
                Object _invokeMethod = _invokeMethod(this.mProcessMethod, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), Float.valueOf(f14), Float.valueOf(f15), Boolean.valueOf(z10));
                if (_invokeMethod != null && (_invokeMethod instanceof Integer)) {
                    Integer num = (Integer) _invokeMethod;
                    if (num.intValue() >= 0) {
                        return num.intValue();
                    }
                }
                return i10;
            }
            TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "AdaptiveGrading width height = 0");
            return i10;
        }
        TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "AdaptiveGrading mInitMethod null");
        return i10;
    }

    public int processOES(int i10, int i11, int i12, float[] fArr, float f10, float f11, float f12, float f13, float f14, float f15, boolean z10) {
        Object obj = this.mAdaptiveGradingObject;
        if (obj != null && this.mInitMethod != null) {
            if (i10 >= 0 && i11 > 0 && i12 > 0) {
                Object _invokeMethod = _invokeMethod(this.mProcessOesMethod, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Float.valueOf(f13), Float.valueOf(f14), Float.valueOf(f15), Boolean.valueOf(z10));
                if (_invokeMethod != null && (_invokeMethod instanceof Integer)) {
                    Integer num = (Integer) _invokeMethod;
                    if (num.intValue() >= 0) {
                        return num.intValue();
                    }
                }
                return i10;
            }
            TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "AdaptiveGrading oes width height = 0");
            return i10;
        }
        TextureRenderLog.i(this.mTexType, "AdaptiveGrading", "AdaptiveGrading oes mInitMethod null");
        return i10;
    }
}
