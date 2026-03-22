package io.bidmachine.media3.common.util;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.Matrix;
import android.os.Build;
import androidx.work.Data;
import cn.m0;
import com.adjust.sdk.Constants;
import com.ss.texturerender.TextureRenderKeys;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
/* loaded from: classes8.dex */
public final class GlUtil {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f55271a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f55272b = {12352, 4, 12324, 10, 12323, 10, 12322, 10, 12321, 2, 12325, 0, 12326, 0, 12344};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f55273c = {TextureRenderKeys.EGL_GL_COLORSPACE_KHR, TextureRenderKeys.EGL_GL_COLORSPACE_BT2020_PQ_EXT, 12344, 12344};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f55274d = {TextureRenderKeys.EGL_GL_COLORSPACE_KHR, 13632, 12344, 12344};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f55275e = {12344};

    /* loaded from: classes8.dex */
    public static final class GlException extends Exception {
        public GlException(String str) {
            super(str);
        }
    }

    public static void a(int i10, int i11, int i12) throws GlException {
        GLES20.glBindTexture(i10, i11);
        b();
        GLES20.glTexParameteri(i10, Data.MAX_DATA_BYTES, i12);
        b();
        GLES20.glTexParameteri(i10, 10241, i12);
        b();
        GLES20.glTexParameteri(i10, 10242, 33071);
        b();
        GLES20.glTexParameteri(i10, 10243, 33071);
        b();
    }

    public static void b() throws GlException {
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z10) {
                sb2.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                gluErrorString = "error code: 0x" + Integer.toHexString(glGetError);
            }
            sb2.append("glError: ");
            sb2.append(gluErrorString);
            z10 = true;
        }
        if (!z10) {
            return;
        }
        throw new GlException(sb2.toString());
    }

    public static void c(boolean z10, String str) throws GlException {
        if (z10) {
            return;
        }
        throw new GlException(str);
    }

    private static FloatBuffer d(int i10) {
        return ByteBuffer.allocateDirect(i10 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static FloatBuffer e(float[] fArr) {
        return (FloatBuffer) d(fArr.length).put(fArr).flip();
    }

    public static int f() throws GlException {
        int g10 = g();
        a(36197, g10, 9729);
        return g10;
    }

    public static int g() throws GlException {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        b();
        return iArr[0];
    }

    private static boolean h(String str) {
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        if (eglQueryString == null || !eglQueryString.contains(str)) {
            return false;
        }
        return true;
    }

    public static boolean i(Context context) {
        int i10 = m0.f3614a;
        if (i10 < 24) {
            return false;
        }
        if (i10 < 26 && (Constants.REFERRER_API_SAMSUNG.equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) {
            return false;
        }
        if (i10 < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return false;
        }
        return h("EGL_EXT_protected_content");
    }

    public static boolean j() {
        return h("EGL_KHR_surfaceless_context");
    }

    public static void k(float[] fArr) {
        Matrix.setIdentityM(fArr, 0);
    }
}
