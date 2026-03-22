package io.bidmachine.media3.exoplayer.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.media3.common.util.GlUtil;
import io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import io.bidmachine.media3.exoplayer.video.spherical.b;
import io.bidmachine.media3.exoplayer.video.spherical.h;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes8.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f57320m = 0;

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<b> f57321a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f57322b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f57323c;

    /* renamed from: d  reason: collision with root package name */
    private final io.bidmachine.media3.exoplayer.video.spherical.b f57324d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f57325e;

    /* renamed from: f  reason: collision with root package name */
    private final h f57326f;

    /* renamed from: g  reason: collision with root package name */
    private final g f57327g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SurfaceTexture f57328h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Surface f57329i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f57330j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f57331k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f57332l;

    @VisibleForTesting
    /* loaded from: classes8.dex */
    final class a implements GLSurfaceView.Renderer, h.a, b.a {

        /* renamed from: a  reason: collision with root package name */
        private final g f57333a;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f57336d;

        /* renamed from: e  reason: collision with root package name */
        private final float[] f57337e;

        /* renamed from: f  reason: collision with root package name */
        private final float[] f57338f;

        /* renamed from: g  reason: collision with root package name */
        private float f57339g;

        /* renamed from: h  reason: collision with root package name */
        private float f57340h;

        /* renamed from: b  reason: collision with root package name */
        private final float[] f57334b = new float[16];

        /* renamed from: c  reason: collision with root package name */
        private final float[] f57335c = new float[16];

        /* renamed from: i  reason: collision with root package name */
        private final float[] f57341i = new float[16];

        /* renamed from: j  reason: collision with root package name */
        private final float[] f57342j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f57336d = fArr;
            float[] fArr2 = new float[16];
            this.f57337e = fArr2;
            float[] fArr3 = new float[16];
            this.f57338f = fArr3;
            this.f57333a = gVar;
            GlUtil.k(fArr);
            GlUtil.k(fArr2);
            GlUtil.k(fArr3);
            this.f57340h = 3.1415927f;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f10)) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        private void d() {
            Matrix.setRotateM(this.f57337e, 0, -this.f57339g, (float) Math.cos(this.f57340h), (float) Math.sin(this.f57340h), 0.0f);
        }

        @Override // io.bidmachine.media3.exoplayer.video.spherical.b.a
        @BinderThread
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f57336d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f57340h = -f10;
            d();
        }

        @Override // io.bidmachine.media3.exoplayer.video.spherical.h.a
        @UiThread
        public synchronized void b(PointF pointF) {
            this.f57339g = pointF.y;
            d();
            Matrix.setRotateM(this.f57338f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f57342j, 0, this.f57336d, 0, this.f57338f, 0);
                Matrix.multiplyMM(this.f57341i, 0, this.f57337e, 0, this.f57342j, 0);
            }
            Matrix.multiplyMM(this.f57335c, 0, this.f57334b, 0, this.f57341i, 0);
            this.f57333a.e(this.f57335c, false);
        }

        @Override // io.bidmachine.media3.exoplayer.video.spherical.h.a
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f10 = i10 / i11;
            Matrix.perspectiveM(this.f57334b, 0, c(f10), f10, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.g(this.f57333a.f());
        }
    }

    /* loaded from: classes8.dex */
    public interface b {
        void t(Surface surface);

        void w(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        Surface surface = this.f57329i;
        if (surface != null) {
            Iterator<b> it = this.f57321a.iterator();
            while (it.hasNext()) {
                it.next().t(surface);
            }
        }
        h(this.f57328h, surface);
        this.f57328h = null;
        this.f57329i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f57328h;
        Surface surface = this.f57329i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f57328h = surfaceTexture;
        this.f57329i = surface2;
        Iterator<b> it = this.f57321a.iterator();
        while (it.hasNext()) {
            it.next().w(surface2);
        }
        h(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final SurfaceTexture surfaceTexture) {
        this.f57325e.post(new Runnable() { // from class: zn.d
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.f(surfaceTexture);
            }
        });
    }

    private static void h(@Nullable SurfaceTexture surfaceTexture, @Nullable Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void j() {
        boolean z10;
        if (this.f57330j && this.f57331k) {
            z10 = true;
        } else {
            z10 = false;
        }
        Sensor sensor = this.f57323c;
        if (sensor != null && z10 != this.f57332l) {
            if (z10) {
                this.f57322b.registerListener(this.f57324d, sensor, 0);
            } else {
                this.f57322b.unregisterListener(this.f57324d);
            }
            this.f57332l = z10;
        }
    }

    public void d(b bVar) {
        this.f57321a.add(bVar);
    }

    public zn.a getCameraMotionListener() {
        return this.f57327g;
    }

    public yn.f getVideoFrameMetadataListener() {
        return this.f57327g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f57329i;
    }

    public void i(b bVar) {
        this.f57321a.remove(bVar);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f57325e.post(new Runnable() { // from class: zn.c
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.e();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f57331k = false;
        j();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f57331k = true;
        j();
    }

    public void setDefaultStereoMode(int i10) {
        this.f57327g.h(i10);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f57330j = z10;
        j();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57321a = new CopyOnWriteArrayList<>();
        this.f57325e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) cn.a.e(context.getSystemService("sensor"));
        this.f57322b = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f57323c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f57327g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f57326f = hVar;
        this.f57324d = new io.bidmachine.media3.exoplayer.video.spherical.b(((WindowManager) cn.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f57330j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }
}
