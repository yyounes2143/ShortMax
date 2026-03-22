package com.ss.texturerender.effect;

import com.ss.texturerender.SharpenBaseWrapper;
import com.ss.texturerender.TextureRenderHelper;
import com.ss.texturerender.TextureRenderLog;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class BMFAdaptiveSharpenWrapper extends SharpenBaseWrapper {
    private static final String LOG_TAG = "TR_BMFAdaptiveSharpenWrapper";
    private static final String VIDEO_SHARPEN_CLASS_NAME = "com.bytedance.bmf_mods.Sharp";
    private Method mGetOutputMethod;
    private Method mInitMethod;
    private Method mProcessMethod;
    private Method mProcessOESMethod;
    private Method mReleaseMethod;
    private Object mSharpenObject;
    private int mTexType;

    public BMFAdaptiveSharpenWrapper(int i10) {
        this.mSharpenObject = null;
        this.mInitMethod = null;
        this.mProcessMethod = null;
        this.mProcessOESMethod = null;
        this.mGetOutputMethod = null;
        this.mReleaseMethod = null;
        this.mTexType = i10;
        TextureRenderLog.i(i10, LOG_TAG, "new BMFAdaptiveSharpenWrapper");
        try {
            Class<?> clzUsingPluginLoader = TextureRenderHelper.getClzUsingPluginLoader(1, VIDEO_SHARPEN_CLASS_NAME);
            if (clzUsingPluginLoader != null) {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                this.mInitMethod = clzUsingPluginLoader.getDeclaredMethod("Init", cls, cls, cls, cls, String.class, cls2, cls2, cls2, Boolean.TYPE, cls2, cls2);
                this.mProcessMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessTexture", cls, cls, cls);
                this.mProcessOESMethod = clzUsingPluginLoader.getDeclaredMethod("ProcessOesTexture", cls, cls, cls, float[].class, float[].class, float[].class);
                this.mGetOutputMethod = clzUsingPluginLoader.getDeclaredMethod("GetResult", new Class[0]);
                this.mReleaseMethod = clzUsingPluginLoader.getDeclaredMethod("Free", new Class[0]);
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
    public int AdaptiveSharpenOesProcess(int i10, int i11, int i12, float[] fArr, float[] fArr2, float[] fArr3) {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mProcessOESMethod) == null || (_invokeMethod = _invokeMethod(method, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, fArr2, fArr3)) == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.SharpenBaseWrapper
    public int AdaptiveSharpenProcess(int i10, int i11, int i12) {
        Method method;
        Object _invokeMethod;
        Object obj = this.mSharpenObject;
        if (obj == null || (method = this.mProcessMethod) == null || (_invokeMethod = _invokeMethod(method, obj, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12))) == null) {
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
    public int InitAdaptiveSharpen(int i10, int i11, int i12, int i13, String str, float f10, float f11, float f12, boolean z10, float f13, float f14) {
        Object _invokeMethod = _invokeMethod(this.mInitMethod, this.mSharpenObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), str, Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(f12), Boolean.valueOf(z10), Float.valueOf(f13), Float.valueOf(f14));
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
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
