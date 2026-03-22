package com.ss.texturerender.effect;

import com.ss.texturerender.SharpenBaseWrapper;
import com.ss.texturerender.TextureRenderHelper;
import com.ss.texturerender.TextureRenderLog;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class AdaptiveSharpenWrapper extends SharpenBaseWrapper {
    private static final String LOG_TAG = "TR_AdaptiveSharpenWrapper";
    private static final String VIDEO_SHARPEN_CLASS_NAME = "com.ss.lens.algorithm.AdaptiveSharpen";
    private Method mGetOutputMethod;
    private Method mInitMethod;
    private Method mProcessMethod;
    private Method mProcessOESMethod;
    private Method mReleaseMethod;
    private Object mSharpenObject;
    private int mTexType;

    public AdaptiveSharpenWrapper(int i10) {
        this.mSharpenObject = null;
        this.mInitMethod = null;
        this.mProcessMethod = null;
        this.mProcessOESMethod = null;
        this.mGetOutputMethod = null;
        this.mReleaseMethod = null;
        this.mTexType = i10;
        TextureRenderLog.i(i10, LOG_TAG, "new AdaptiveSharpenWrapper");
        try {
            Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_SHARPEN_CLASS_NAME);
            if (clzUsingPluginLoader != null) {
                Class cls = Boolean.TYPE;
                Class cls2 = Integer.TYPE;
                this.mInitMethod = clzUsingPluginLoader.getDeclaredMethod("InitAdaptiveSharpen", cls, cls2, cls2, cls2);
                Class cls3 = Float.TYPE;
                this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("AdaptiveSharpenProcess", cls2, cls2, cls2, cls, cls2, cls3, cls3, cls3, cls2);
                this.mProcessOESMethod = clzUsingPluginLoader.getDeclaredMethod("AdaptiveSharpenOesProcess", cls2, cls2, cls2, float[].class, cls, cls2, cls3, cls3, cls3, cls2);
                this.mGetOutputMethod = clzUsingPluginLoader.getDeclaredMethod("GetAdaptiveSharpenOutput", new Class[0]);
                this.mReleaseMethod = clzUsingPluginLoader.getDeclaredMethod("ReleaseAdaptiveSharpen", new Class[0]);
                this.mSharpenObject = clzUsingPluginLoader.newInstance();
            }
        } catch (Exception e10) {
            int i11 = this.mTexType;
            TextureRenderLog.i(i11, LOG_TAG, "AdaptiveSharpen get fail:" + e10.toString());
            this.mSharpenObject = null;
            this.mInitMethod = null;
            this.mProcessMethod = null;
            this.mGetOutputMethod = null;
            this.mReleaseMethod = null;
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

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public int AdaptiveSharpenOesProcess(int i10, int i11, int i12, float[] fArr, boolean z10, int i13, float f10, float f11, float f12, int i14) {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mProcessOESMethod) == null || (_invokeMethod = _invokeMethod(method, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, Boolean.valueOf(z10), Integer.valueOf(i13), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Integer.valueOf(i14))) == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public int AdaptiveSharpenProcess(int i10, int i11, int i12, boolean z10, int i13, float f10, float f11, float f12, int i14) {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mProcessMethod) == null || (_invokeMethod = _invokeMethod(method, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Boolean.valueOf(z10), Integer.valueOf(i13), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Integer.valueOf(i14))) == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public int GetAdaptiveSharpenOutput() {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mGetOutputMethod) == null || (_invokeMethod = _invokeMethod(method, obj, new Object[0])) == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public boolean InitAdaptiveSharpen(boolean z10, int i10, int i11, int i12) {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mInitMethod) == null || (_invokeMethod = _invokeMethod(method, obj, Boolean.valueOf(z10), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12))) == null) {
            return false;
        }
        return ((Boolean) _invokeMethod).booleanValue();
    }

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public void ReleaseAdaptiveSharpen() {
        Method method;
        Object obj = this.mSharpenObject;
        if (obj != null && (method = this.mReleaseMethod) != null) {
            _invokeMethod(method, obj, new Object[0]);
            TextureRenderLog.i(this.mTexType, LOG_TAG, "ReleaseAdaptiveSharpen");
        }
        this.mSharpenObject = null;
    }
}
