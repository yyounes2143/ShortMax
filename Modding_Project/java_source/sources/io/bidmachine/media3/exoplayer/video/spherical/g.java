package io.bidmachine.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import cn.g0;
import cn.r;
import io.bidmachine.media3.common.util.GlUtil;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SceneRenderer.java */
/* loaded from: classes8.dex */
public final class g implements yn.f, zn.a {

    /* renamed from: i  reason: collision with root package name */
    private int f57391i;

    /* renamed from: j  reason: collision with root package name */
    private SurfaceTexture f57392j;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private byte[] f57395m;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f57383a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f57384b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    private final e f57385c = new e();

    /* renamed from: d  reason: collision with root package name */
    private final a f57386d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final g0<Long> f57387e = new g0<>();

    /* renamed from: f  reason: collision with root package name */
    private final g0<c> f57388f = new g0<>();

    /* renamed from: g  reason: collision with root package name */
    private final float[] f57389g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    private final float[] f57390h = new float[16];

    /* renamed from: k  reason: collision with root package name */
    private volatile int f57393k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f57394l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.f57383a.set(true);
    }

    private void i(@Nullable byte[] bArr, int i10, long j10) {
        c cVar;
        byte[] bArr2 = this.f57395m;
        int i11 = this.f57394l;
        this.f57395m = bArr;
        if (i10 == -1) {
            i10 = this.f57393k;
        }
        this.f57394l = i10;
        if (i11 == i10 && Arrays.equals(bArr2, this.f57395m)) {
            return;
        }
        byte[] bArr3 = this.f57395m;
        if (bArr3 != null) {
            cVar = d.a(bArr3, this.f57394l);
        } else {
            cVar = null;
        }
        if (cVar == null || !e.c(cVar)) {
            cVar = c.b(this.f57394l);
        }
        this.f57388f.a(j10, cVar);
    }

    @Override // zn.a
    public void a(long j10, float[] fArr) {
        this.f57386d.e(j10, fArr);
    }

    @Override // zn.a
    public void b() {
        this.f57387e.c();
        this.f57386d.d();
        this.f57384b.set(true);
    }

    @Override // yn.f
    public void c(long j10, long j11, io.bidmachine.media3.common.a aVar, @Nullable MediaFormat mediaFormat) {
        this.f57387e.a(j11, Long.valueOf(j10));
        i(aVar.A, aVar.B, j11);
    }

    public void e(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            r.d("SceneRenderer", "Failed to draw a frame", e10);
        }
        if (this.f57383a.compareAndSet(true, false)) {
            ((SurfaceTexture) cn.a.e(this.f57392j)).updateTexImage();
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                r.d("SceneRenderer", "Failed to draw a frame", e11);
            }
            if (this.f57384b.compareAndSet(true, false)) {
                GlUtil.k(this.f57389g);
            }
            long timestamp = this.f57392j.getTimestamp();
            Long g10 = this.f57387e.g(timestamp);
            if (g10 != null) {
                this.f57386d.c(this.f57389g, g10.longValue());
            }
            c j10 = this.f57388f.j(timestamp);
            if (j10 != null) {
                this.f57385c.d(j10);
            }
        }
        Matrix.multiplyMM(this.f57390h, 0, fArr, 0, this.f57389g, 0);
        this.f57385c.a(this.f57391i, this.f57390h, z10);
    }

    public SurfaceTexture f() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.f57385c.b();
            GlUtil.b();
            this.f57391i = GlUtil.f();
        } catch (GlUtil.GlException e10) {
            r.d("SceneRenderer", "Failed to initialize the renderer", e10);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f57391i);
        this.f57392j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: io.bidmachine.media3.exoplayer.video.spherical.f
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                g.this.g(surfaceTexture2);
            }
        });
        return this.f57392j;
    }

    public void h(int i10) {
        this.f57393k = i10;
    }
}
