package com.google.android.exoplayer2.video.spherical;

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
import b7.s0;
import c7.j;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.b;
import com.google.android.exoplayer2.video.spherical.h;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* loaded from: classes4.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f19236m = 0;

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<b> f19237a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f19238b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f19239c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.video.spherical.b f19240d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f19241e;

    /* renamed from: f  reason: collision with root package name */
    private final h f19242f;

    /* renamed from: g  reason: collision with root package name */
    private final g f19243g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SurfaceTexture f19244h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Surface f19245i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f19246j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f19247k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19248l;

    @VisibleForTesting
    /* loaded from: classes4.dex */
    final class a implements GLSurfaceView.Renderer, h.a, b.a {

        /* renamed from: a  reason: collision with root package name */
        private final g f19249a;

        /* renamed from: d  reason: collision with root package name */
        private final float[] f19252d;

        /* renamed from: e  reason: collision with root package name */
        private final float[] f19253e;

        /* renamed from: f  reason: collision with root package name */
        private final float[] f19254f;

        /* renamed from: g  reason: collision with root package name */
        private float f19255g;

        /* renamed from: h  reason: collision with root package name */
        private float f19256h;

        /* renamed from: b  reason: collision with root package name */
        private final float[] f19250b = new float[16];

        /* renamed from: c  reason: collision with root package name */
        private final float[] f19251c = new float[16];

        /* renamed from: i  reason: collision with root package name */
        private final float[] f19257i = new float[16];

        /* renamed from: j  reason: collision with root package name */
        private final float[] f19258j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f19252d = fArr;
            float[] fArr2 = new float[16];
            this.f19253e = fArr2;
            float[] fArr3 = new float[16];
            this.f19254f = fArr3;
            this.f19249a = gVar;
            GlUtil.j(fArr);
            GlUtil.j(fArr2);
            GlUtil.j(fArr3);
            this.f19256h = 3.1415927f;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / f10)) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        private void d() {
            Matrix.setRotateM(this.f19253e, 0, -this.f19255g, (float) Math.cos(this.f19256h), (float) Math.sin(this.f19256h), 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.b.a
        @BinderThread
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f19252d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f19256h = -f10;
            d();
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        @UiThread
        public synchronized void b(PointF pointF) {
            this.f19255g = pointF.y;
            d();
            Matrix.setRotateM(this.f19254f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f19258j, 0, this.f19252d, 0, this.f19254f, 0);
                Matrix.multiplyMM(this.f19257i, 0, this.f19253e, 0, this.f19258j, 0);
            }
            Matrix.multiplyMM(this.f19251c, 0, this.f19250b, 0, this.f19257i, 0);
            this.f19249a.e(this.f19251c, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f10 = i10 / i11;
            Matrix.perspectiveM(this.f19250b, 0, c(f10), f10, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.g(this.f19249a.f());
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void t(Surface surface);

        void w(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        Surface surface = this.f19245i;
        if (surface != null) {
            Iterator<b> it = this.f19237a.iterator();
            while (it.hasNext()) {
                it.next().t(surface);
            }
        }
        h(this.f19244h, surface);
        this.f19244h = null;
        this.f19245i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f19244h;
        Surface surface = this.f19245i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f19244h = surfaceTexture;
        this.f19245i = surface2;
        Iterator<b> it = this.f19237a.iterator();
        while (it.hasNext()) {
            it.next().w(surface2);
        }
        h(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final SurfaceTexture surfaceTexture) {
        this.f19241e.post(new Runnable() { // from class: d7.c
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
        if (this.f19246j && this.f19247k) {
            z10 = true;
        } else {
            z10 = false;
        }
        Sensor sensor = this.f19239c;
        if (sensor != null && z10 != this.f19248l) {
            if (z10) {
                this.f19238b.registerListener(this.f19240d, sensor, 0);
            } else {
                this.f19238b.unregisterListener(this.f19240d);
            }
            this.f19248l = z10;
        }
    }

    public void d(b bVar) {
        this.f19237a.add(bVar);
    }

    public d7.a getCameraMotionListener() {
        return this.f19243g;
    }

    public j getVideoFrameMetadataListener() {
        return this.f19243g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f19245i;
    }

    public void i(b bVar) {
        this.f19237a.remove(bVar);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f19241e.post(new Runnable() { // from class: d7.d
            @Override // java.lang.Runnable
            public final void run() {
                SphericalGLSurfaceView.this.e();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f19247k = false;
        j();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f19247k = true;
        j();
    }

    public void setDefaultStereoMode(int i10) {
        this.f19243g.h(i10);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f19246j = z10;
        j();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19237a = new CopyOnWriteArrayList<>();
        this.f19241e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) b7.a.e(context.getSystemService("sensor"));
        this.f19238b = sensorManager;
        Sensor defaultSensor = s0.f2506a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f19239c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f19243g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f19242f = hVar;
        this.f19240d = new com.google.android.exoplayer2.video.spherical.b(((WindowManager) b7.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f19246j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }
}
