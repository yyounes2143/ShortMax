package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import b7.n0;
import b7.q;
import c7.j;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.v0;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SceneRenderer.java */
/* loaded from: classes4.dex */
public final class g implements j, d7.a {

    /* renamed from: i  reason: collision with root package name */
    private int f19307i;

    /* renamed from: j  reason: collision with root package name */
    private SurfaceTexture f19308j;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private byte[] f19311m;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f19299a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f19300b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    private final e f19301c = new e();

    /* renamed from: d  reason: collision with root package name */
    private final a f19302d = new a();

    /* renamed from: e  reason: collision with root package name */
    private final n0<Long> f19303e = new n0<>();

    /* renamed from: f  reason: collision with root package name */
    private final n0<c> f19304f = new n0<>();

    /* renamed from: g  reason: collision with root package name */
    private final float[] f19305g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    private final float[] f19306h = new float[16];

    /* renamed from: k  reason: collision with root package name */
    private volatile int f19309k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f19310l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.f19299a.set(true);
    }

    private void i(@Nullable byte[] bArr, int i10, long j10) {
        c cVar;
        byte[] bArr2 = this.f19311m;
        int i11 = this.f19310l;
        this.f19311m = bArr;
        if (i10 == -1) {
            i10 = this.f19309k;
        }
        this.f19310l = i10;
        if (i11 == i10 && Arrays.equals(bArr2, this.f19311m)) {
            return;
        }
        byte[] bArr3 = this.f19311m;
        if (bArr3 != null) {
            cVar = d.a(bArr3, this.f19310l);
        } else {
            cVar = null;
        }
        if (cVar == null || !e.c(cVar)) {
            cVar = c.b(this.f19310l);
        }
        this.f19304f.a(j10, cVar);
    }

    @Override // d7.a
    public void a(long j10, float[] fArr) {
        this.f19302d.e(j10, fArr);
    }

    @Override // d7.a
    public void b() {
        this.f19303e.c();
        this.f19302d.d();
        this.f19300b.set(true);
    }

    @Override // c7.j
    public void c(long j10, long j11, v0 v0Var, @Nullable MediaFormat mediaFormat) {
        this.f19303e.a(j11, Long.valueOf(j10));
        i(v0Var.f19167v, v0Var.f19168w, j11);
    }

    public void e(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e10) {
            q.d("SceneRenderer", "Failed to draw a frame", e10);
        }
        if (this.f19299a.compareAndSet(true, false)) {
            ((SurfaceTexture) b7.a.e(this.f19308j)).updateTexImage();
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                q.d("SceneRenderer", "Failed to draw a frame", e11);
            }
            if (this.f19300b.compareAndSet(true, false)) {
                GlUtil.j(this.f19305g);
            }
            long timestamp = this.f19308j.getTimestamp();
            Long g10 = this.f19303e.g(timestamp);
            if (g10 != null) {
                this.f19302d.c(this.f19305g, g10.longValue());
            }
            c j10 = this.f19304f.j(timestamp);
            if (j10 != null) {
                this.f19301c.d(j10);
            }
        }
        Matrix.multiplyMM(this.f19306h, 0, fArr, 0, this.f19305g, 0);
        this.f19301c.a(this.f19307i, this.f19306h, z10);
    }

    public SurfaceTexture f() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.f19301c.b();
            GlUtil.b();
            this.f19307i = GlUtil.f();
        } catch (GlUtil.GlException e10) {
            q.d("SceneRenderer", "Failed to initialize the renderer", e10);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f19307i);
        this.f19308j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.f
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                g.this.g(surfaceTexture2);
            }
        });
        return this.f19308j;
    }

    public void h(int i10) {
        this.f19309k = i10;
    }
}
