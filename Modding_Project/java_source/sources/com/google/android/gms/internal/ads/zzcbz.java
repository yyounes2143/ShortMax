package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcbz extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzcbx {
    private static final float[] zza = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private volatile boolean zzA;
    private volatile boolean zzB;
    private final zzcby zzb;
    private final float[] zzc;
    private final float[] zzd;
    private final float[] zze;
    private final float[] zzf;
    private final float[] zzg;
    private final float[] zzh;
    private final float[] zzi;
    private float zzj;
    private float zzk;
    private float zzl;
    private int zzm;
    private int zzn;
    private SurfaceTexture zzo;
    private SurfaceTexture zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private final FloatBuffer zzt;
    private final CountDownLatch zzu;
    private final Object zzv;
    private EGL10 zzw;
    private EGLDisplay zzx;
    private EGLContext zzy;
    private EGLSurface zzz;

    public zzcbz(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = zza;
        int length = fArr.length;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzt = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        this.zzc = new float[9];
        this.zzd = new float[9];
        this.zze = new float[9];
        this.zzf = new float[9];
        this.zzg = new float[9];
        this.zzh = new float[9];
        this.zzi = new float[9];
        this.zzj = Float.NaN;
        zzcby zzcbyVar = new zzcby(context);
        this.zzb = zzcbyVar;
        zzcbyVar.zzb(this);
        this.zzu = new CountDownLatch(1);
        this.zzv = new Object();
    }

    private static final void zzh(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("SphericalVideoRenderer", str + ": glError " + glGetError);
        }
    }

    private static final void zzi(float[] fArr, float[] fArr2, float[] fArr3) {
        float f10 = fArr2[1];
        float f11 = fArr3[3];
        float f12 = fArr2[2];
        float f13 = fArr3[6];
        fArr[0] = (fArr2[0] * fArr3[0]) + (f10 * f11) + (f12 * f13);
        float f14 = fArr2[0];
        float f15 = fArr3[4];
        float f16 = fArr3[7];
        fArr[1] = (fArr3[1] * f14) + (f10 * f15) + (f12 * f16);
        float f17 = f14 * fArr3[2];
        float f18 = fArr2[1];
        float f19 = fArr3[5];
        float f20 = fArr3[8];
        fArr[2] = f17 + (f18 * f19) + (f12 * f20);
        float f21 = fArr2[3];
        float f22 = fArr3[0];
        float f23 = fArr2[4];
        float f24 = fArr2[5];
        fArr[3] = (f21 * f22) + (f11 * f23) + (f24 * f13);
        float f25 = fArr2[3];
        float f26 = fArr3[1];
        fArr[4] = (f25 * f26) + (f23 * f15) + (f24 * f16);
        float f27 = fArr3[2];
        fArr[5] = (f25 * f27) + (fArr2[4] * f19) + (f24 * f20);
        float f28 = fArr2[6] * f22;
        float f29 = fArr2[7];
        float f30 = fArr2[8];
        fArr[6] = f28 + (fArr3[3] * f29) + (f13 * f30);
        float f31 = fArr2[6];
        fArr[7] = (f26 * f31) + (f29 * fArr3[4]) + (f16 * f30);
        fArr[8] = (f31 * f27) + (fArr2[7] * fArr3[5]) + (f30 * f20);
    }

    private static final void zzj(float[] fArr, float f10) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d10 = f10;
        fArr[4] = (float) Math.cos(d10);
        fArr[5] = (float) (-Math.sin(d10));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d10);
        fArr[8] = (float) Math.cos(d10);
    }

    private static final void zzk(float[] fArr, float f10) {
        double d10 = f10;
        fArr[0] = (float) Math.cos(d10);
        fArr[1] = (float) (-Math.sin(d10));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d10);
        fArr[4] = (float) Math.cos(d10);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static final int zzl(int i10, String str) {
        int glCreateShader = GLES20.glCreateShader(i10);
        zzh("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            zzh("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            zzh("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            zzh("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", "Could not compile shader " + i10 + ":");
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                zzh("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzs++;
        Object obj = this.zzv;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01ca A[ADDED_TO_REGION] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbz.run():void");
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final void zza() {
        Object obj = this.zzv;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    @Nullable
    public final SurfaceTexture zzb() {
        if (this.zzp == null) {
            return null;
        }
        try {
            this.zzu.await();
        } catch (InterruptedException unused) {
        }
        return this.zzo;
    }

    public final void zzc(int i10, int i11) {
        Object obj = this.zzv;
        synchronized (obj) {
            this.zzn = i10;
            this.zzm = i11;
            this.zzA = true;
            obj.notifyAll();
        }
    }

    public final void zzd(SurfaceTexture surfaceTexture, int i10, int i11) {
        this.zzn = i10;
        this.zzm = i11;
        this.zzp = surfaceTexture;
    }

    public final void zze() {
        Object obj = this.zzv;
        synchronized (obj) {
            this.zzB = true;
            this.zzp = null;
            obj.notifyAll();
        }
    }

    public final void zzf(float f10, float f11) {
        int i10 = this.zzn;
        int i11 = this.zzm;
        if (i10 <= i11) {
            i10 = i11;
        }
        float f12 = i10;
        this.zzk -= (f10 * 1.7453293f) / f12;
        float f13 = this.zzl - ((f11 * 1.7453293f) / f12);
        this.zzl = f13;
        if (f13 < -1.5707964f) {
            this.zzl = -1.5707964f;
            f13 = -1.5707964f;
        }
        if (f13 > 1.5707964f) {
            this.zzl = 1.5707964f;
        }
    }

    @VisibleForTesting
    final boolean zzg() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.zzz;
        boolean z10 = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            z10 = this.zzw.eglDestroySurface(this.zzx, this.zzz) | this.zzw.eglMakeCurrent(this.zzx, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.zzz = null;
        }
        EGLContext eGLContext = this.zzy;
        if (eGLContext != null) {
            z10 |= this.zzw.eglDestroyContext(this.zzx, eGLContext);
            this.zzy = null;
        }
        EGLDisplay eGLDisplay = this.zzx;
        if (eGLDisplay != null) {
            boolean eglTerminate = this.zzw.eglTerminate(eGLDisplay) | z10;
            this.zzx = null;
            return eglTerminate;
        }
        return z10;
    }
}
