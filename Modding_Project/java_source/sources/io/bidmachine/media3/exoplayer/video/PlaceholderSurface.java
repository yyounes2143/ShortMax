package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import cn.r;
import io.bidmachine.media3.common.util.GlUtil;
/* loaded from: classes8.dex */
public final class PlaceholderSurface extends Surface {

    /* renamed from: d  reason: collision with root package name */
    private static int f57140d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f57141e;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f57142a;

    /* renamed from: b  reason: collision with root package name */
    private final b f57143b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57144c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static class b extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private io.bidmachine.media3.common.util.a f57145a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f57146b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Error f57147c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f57148d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private PlaceholderSurface f57149e;

        public b() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void c(int i10) throws GlUtil.GlException {
            boolean z10;
            cn.a.e(this.f57145a);
            this.f57145a.i(i10);
            SurfaceTexture h10 = this.f57145a.h();
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f57149e = new PlaceholderSurface(this, h10, z10);
        }

        private void e() {
            cn.a.e(this.f57145a);
            this.f57145a.j();
        }

        public PlaceholderSurface a(int i10) {
            boolean z10;
            start();
            this.f57146b = new Handler(getLooper(), this);
            this.f57145a = new io.bidmachine.media3.common.util.a(this.f57146b);
            synchronized (this) {
                z10 = false;
                this.f57146b.obtainMessage(1, i10, 0).sendToTarget();
                while (this.f57149e == null && this.f57148d == null && this.f57147c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f57148d;
            if (runtimeException == null) {
                Error error = this.f57147c;
                if (error == null) {
                    return (PlaceholderSurface) cn.a.e(this.f57149e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void d() {
            cn.a.e(this.f57146b);
            this.f57146b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            try {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return true;
                    }
                    try {
                        e();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    c(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (GlUtil.GlException e10) {
                    r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                    this.f57148d = new IllegalStateException(e10);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e11) {
                    r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                    this.f57147c = e11;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e12) {
                    r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e12);
                    this.f57148d = e12;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th2) {
                synchronized (this) {
                    notify();
                    throw th2;
                }
            }
        }
    }

    private static int a(Context context) {
        if (GlUtil.i(context)) {
            if (GlUtil.j()) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    public static synchronized boolean b(Context context) {
        boolean z10;
        synchronized (PlaceholderSurface.class) {
            try {
                z10 = true;
                if (!f57141e) {
                    f57140d = a(context);
                    f57141e = true;
                }
                if (f57140d == 0) {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public static PlaceholderSurface c(Context context, boolean z10) {
        boolean z11;
        int i10 = 0;
        if (z10 && !b(context)) {
            z11 = false;
        } else {
            z11 = true;
        }
        cn.a.g(z11);
        b bVar = new b();
        if (z10) {
            i10 = f57140d;
        }
        return bVar.a(i10);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f57143b) {
            try {
                if (!this.f57144c) {
                    this.f57143b.d();
                    this.f57144c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private PlaceholderSurface(b bVar, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.f57143b = bVar;
        this.f57142a = z10;
    }
}
