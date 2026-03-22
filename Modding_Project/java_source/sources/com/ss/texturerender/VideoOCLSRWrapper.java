package com.ss.texturerender;

import android.os.Bundle;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class VideoOCLSRWrapper extends VideoOCLSRBaseWrapper {
    private static final int HEIGHT_DEFAULT = 720;
    private static final String LOG_TAG = "VideoOCLSRWrapper";
    private static final String VIDEO_OCLSR_CLASS_NAME = "com.ss.lens.algorithm.VideoOCLSR";
    private static final int WIDTH_DEFAULT = 1440;
    private int mTexType;
    private Object mSRObject = null;
    private Method mInitMethod = null;
    private Method mInitMethodMax = null;
    private Method mInitMethodMaxMalisync = null;
    private Method mInitWithLicenseMethod = null;
    private Method mProcessOesMethod = null;
    private Method mProcessMethod = null;
    private Method mGetOutputMethod = null;
    private Method mReleaseMethod = null;

    public VideoOCLSRWrapper(int i10) {
        this.mTexType = i10;
        TextureRenderLog.i(i10, LOG_TAG, "new VideoOCLSRWrapper");
        _initObjAndMethod();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _initObjAndMethod() {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.texturerender.VideoOCLSRWrapper._initObjAndMethod():void");
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

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int GetVideoOclSrOutput() {
        if (this.mSRObject == null || this.mGetOutputMethod == null) {
            _initObjAndMethod();
        }
        Object _invokeMethod = _invokeMethod(this.mGetOutputMethod, this.mSRObject, new Object[0]);
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoAsyncOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4, Bundle bundle) {
        return InitVideoOclSr(str, i10, z10, i11, i12);
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, String str2, int i11, int i12, int i13, String str3, String str4) {
        Object obj;
        if (this.mSRObject == null || this.mInitWithLicenseMethod == null) {
            _initObjAndMethod();
        }
        Object obj2 = this.mSRObject;
        if (obj2 != null) {
            if (this.mInitWithLicenseMethod != null) {
                int i14 = this.mTexType;
                TextureRenderLog.i(i14, LOG_TAG, "mInitWithLicenseMethod " + str2);
                obj = _invokeMethod(this.mInitWithLicenseMethod, this.mSRObject, str, Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.TRUE, str2, 720, Integer.valueOf((int) WIDTH_DEFAULT));
            } else {
                Method method = this.mInitMethod;
                if (method != null) {
                    obj = _invokeMethod(method, obj2, str, Integer.valueOf(i10), Boolean.valueOf(z10));
                }
            }
            return obj == null && ((Boolean) obj).booleanValue();
        }
        obj = null;
        if (obj == null) {
        }
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public void ReleaseVideoOclSr() {
        Method method;
        Object obj = this.mSRObject;
        if (obj != null && (method = this.mReleaseMethod) != null) {
            _invokeMethod(method, obj, new Object[0]);
            TextureRenderLog.i(this.mTexType, LOG_TAG, "ReleaseVideoOclSr");
        }
        this.mSRObject = null;
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrOesProcess(int i10, int i11, int i12, float[] fArr, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        if (this.mSRObject == null || this.mProcessOesMethod == null) {
            _initObjAndMethod();
        }
        Object _invokeMethod = _invokeMethod(this.mProcessOesMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fArr, Boolean.valueOf(z10));
        if (_invokeMethod != null) {
            TextureRenderLog.d(this.mTexType, LOG_TAG, "lensTextureProcess sucess");
        }
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public int VideoOclSrProcess(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15, int i16, int i17, long j10, int i18, int i19, Bundle bundle) {
        if (this.mSRObject == null || this.mProcessMethod == null) {
            _initObjAndMethod();
        }
        Object _invokeMethod = _invokeMethod(this.mProcessMethod, this.mSRObject, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Boolean.valueOf(z10));
        if (_invokeMethod != null) {
            TextureRenderLog.d(this.mTexType, LOG_TAG, "lensTextureProcess sucess");
        }
        if (_invokeMethod == null) {
            return -1;
        }
        return ((Integer) _invokeMethod).intValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean glSrInit(String str, int i10, boolean z10, int i11, int i12) {
        return InitVideoOclSr(str, i10, z10, i12, i11);
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, int i11, int i12) {
        if (this.mSRObject == null || this.mInitMethodMax == null) {
            _initObjAndMethod();
        }
        Object _invokeMethod = _invokeMethod(this.mInitMethodMax, this.mSRObject, str, Integer.valueOf(i10), Boolean.valueOf(z10), Integer.valueOf(i11), Integer.valueOf(i12));
        return _invokeMethod != null && ((Boolean) _invokeMethod).booleanValue();
    }

    @Override // com.ss.texturerender.VideoOCLSRBaseWrapper
    public boolean InitVideoOclSr(String str, int i10, boolean z10, boolean z11, int i11, int i12, String str2, int i13, int i14, int i15, String str3, String str4) {
        Object obj;
        if (this.mSRObject == null || this.mInitWithLicenseMethod == null) {
            _initObjAndMethod();
        }
        Object obj2 = this.mSRObject;
        if (obj2 != null) {
            if (this.mInitWithLicenseMethod != null) {
                int i16 = this.mTexType;
                TextureRenderLog.i(i16, LOG_TAG, "mInitWithLicenseMethod " + str2);
                obj = _invokeMethod(this.mInitWithLicenseMethod, this.mSRObject, str, Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.valueOf(z11), str2, Integer.valueOf(i11), Integer.valueOf(i12));
            } else {
                Method method = this.mInitMethodMaxMalisync;
                if (method != null) {
                    obj = _invokeMethod(method, obj2, str, Integer.valueOf(i10), Boolean.valueOf(z10), Boolean.valueOf(z11), Integer.valueOf(i11), Integer.valueOf(i12));
                } else if (this.mInitMethodMax != null) {
                    TextureRenderLog.i(this.mTexType, LOG_TAG, "mInitMethodMaxMalisync null, use mInitMethodMax");
                    obj = _invokeMethod(this.mInitMethodMax, this.mSRObject, str, Integer.valueOf(i10), Boolean.valueOf(z10), Integer.valueOf(i11), Integer.valueOf(i12));
                } else if (this.mInitMethod != null) {
                    TextureRenderLog.i(this.mTexType, LOG_TAG, "mInitMethodMaxMalisync/mInitMethodMax null,use mInitMethod");
                    obj = _invokeMethod(this.mInitMethod, this.mSRObject, str, Integer.valueOf(i10), Boolean.valueOf(z10));
                }
            }
            return obj == null && ((Boolean) obj).booleanValue();
        }
        obj = null;
        if (obj == null) {
        }
    }
}
