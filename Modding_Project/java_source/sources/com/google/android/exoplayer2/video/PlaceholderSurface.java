package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.q;
import com.google.android.exoplayer2.util.GlUtil;
@RequiresApi(17)
/* loaded from: classes4.dex */
public final class PlaceholderSurface extends Surface {

    /* renamed from: d  reason: collision with root package name */
    private static int f19209d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f19210e;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f19211a;

    /* renamed from: b  reason: collision with root package name */
    private final b f19212b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19213c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.exoplayer2.util.a f19214a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f19215b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Error f19216c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f19217d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private PlaceholderSurface f19218e;

        public b() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void c(int i10) throws GlUtil.GlException {
            boolean z10;
            b7.a.e(this.f19214a);
            this.f19214a.i(i10);
            SurfaceTexture h10 = this.f19214a.h();
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f19218e = new PlaceholderSurface(this, h10, z10);
        }

        private void e() {
            b7.a.e(this.f19214a);
            this.f19214a.j();
        }

        public PlaceholderSurface a(int i10) {
            boolean z10;
            start();
            this.f19215b = new Handler(getLooper(), this);
            this.f19214a = new com.google.android.exoplayer2.util.a(this.f19215b);
            synchronized (this) {
                z10 = false;
                this.f19215b.obtainMessage(1, i10, 0).sendToTarget();
                while (this.f19218e == null && this.f19217d == null && this.f19216c == null) {
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
            RuntimeException runtimeException = this.f19217d;
            if (runtimeException == null) {
                Error error = this.f19216c;
                if (error == null) {
                    return (PlaceholderSurface) b7.a.e(this.f19218e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void d() {
            b7.a.e(this.f19215b);
            this.f19215b.sendEmptyMessage(2);
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
                    q.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                    this.f19217d = new IllegalStateException(e10);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e11) {
                    q.d("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                    this.f19216c = e11;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e12) {
                    q.d("PlaceholderSurface", "Failed to initialize placeholder surface", e12);
                    this.f19217d = e12;
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
        if (GlUtil.h(context)) {
            if (GlUtil.i()) {
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
                if (!f19210e) {
                    f19209d = a(context);
                    f19210e = true;
                }
                if (f19209d == 0) {
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
        b7.a.g(z11);
        b bVar = new b();
        if (z10) {
            i10 = f19209d;
        }
        return bVar.a(i10);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f19212b) {
            try {
                if (!this.f19213c) {
                    this.f19212b.d();
                    this.f19213c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private PlaceholderSurface(b bVar, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.f19212b = bVar;
        this.f19211a = z10;
    }
}
