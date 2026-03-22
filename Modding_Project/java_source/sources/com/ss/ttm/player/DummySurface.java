package com.ss.ttm.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.adjust.sdk.Constants;
import java.util.concurrent.ConcurrentLinkedQueue;
@TargetApi(17)
/* loaded from: classes6.dex */
public final class DummySurface extends Surface {
    public static final int CACHE_MODE_ALL = 0;
    public static final int CACHE_MODE_DYNAMIC_EXCEPTION = 1;
    public static final int CACHE_MODE_DYNAMIC_EXCEPTION_OTHER = 2;
    public static final int CACHE_MODE_FORBIDDEN_EXCEPTION = 3;
    public static final int CACHE_MODE_FORBIDDEN_EXCEPTION_OTHER = 4;
    public static final int EVENT_SETOUTPUTSSURFACE_EXCEPTION = 1;
    public static final int EVENT_SETOUTPUTSSURFACE_EXCEPTION_OTHER = 2;
    private static final String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    private static final String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    private static final int MAX_CAPACITY_CACHES = 2;
    private static int SetOutputSurfaceExceptionCounter = 0;
    private static volatile int SetOutputSurfaceExceptionLimit = 1;
    private static int SetOutputSurfaceExceptionOtherCounter = 0;
    private static volatile int SetOutputSurfaceExceptionOtherLimit = 1;
    private static final String TAG = "DummySurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    private volatile boolean cached;
    private boolean hasSetOutputSurfaceException;
    private boolean hasSetOutputSurfaceExceptionOther;
    public final boolean secure;
    private final DummySurfaceThread thread;
    private boolean threadReleased;
    private static final ConcurrentLinkedQueue<DummySurface> caches = new ConcurrentLinkedQueue<>();
    private static volatile boolean useDummySurfaceCaches = false;
    private static volatile int cacheMode = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class DummySurfaceThread extends HandlerThread implements Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 2;
        @NonNull
        private EGLSurfaceTexture eglSurfaceTexture;
        @NonNull
        private Handler handler;
        @Nullable
        private Error initError;
        @Nullable
        private RuntimeException initException;
        @Nullable
        private DummySurface surface;

        public DummySurfaceThread() {
            super("dummySurface");
        }

        private void initInternal(int i10) {
            boolean z10;
            this.eglSurfaceTexture.getClass();
            this.eglSurfaceTexture.init(i10);
            SurfaceTexture surfaceTexture = this.eglSurfaceTexture.getSurfaceTexture();
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.surface = new DummySurface(this, surfaceTexture, z10);
        }

        private void releaseInternal() {
            this.eglSurfaceTexture.getClass();
            this.eglSurfaceTexture.release();
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
                        releaseInternal();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    initInternal(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e10) {
                    Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e10);
                    this.initError = e10;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e11) {
                    Log.e(DummySurface.TAG, "Failed to initialize dummy surface", e11);
                    this.initException = e11;
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

        public DummySurface init(int i10) {
            boolean z10;
            start();
            this.handler = new Handler(getLooper(), this);
            this.eglSurfaceTexture = new EGLSurfaceTexture(this.handler);
            synchronized (this) {
                z10 = false;
                this.handler.obtainMessage(1, i10, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
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
            RuntimeException runtimeException = this.initException;
            if (runtimeException == null) {
                Error error = this.initError;
                if (error == null) {
                    this.surface.getClass();
                    return this.surface;
                }
                throw error;
            }
            throw runtimeException;
        }

        public void release() {
            this.handler.getClass();
            this.handler.sendEmptyMessage(2);
        }
    }

    @TargetApi(24)
    private static int getSecureModeV24(Context context) {
        String eglQueryString;
        if ((Build.VERSION.SDK_INT < 26 && (Constants.REFERRER_API_SAMSUNG.equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) || (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) == null || !eglQueryString.contains(EXTENSION_PROTECTED_CONTENT)) {
            return 0;
        }
        if (eglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT)) {
            return 1;
        }
        return 2;
    }

    public static synchronized boolean isSecureSupported(Context context) {
        boolean z10;
        synchronized (DummySurface.class) {
            try {
                z10 = true;
                if (!secureModeInitialized) {
                    secureMode = getSecureModeV24(context);
                    secureModeInitialized = true;
                }
                if (secureMode == 0) {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public static DummySurface newInstanceV17(boolean z10) {
        DummySurface poll;
        if (useDummySurfaceCaches && !z10 && (poll = caches.poll()) != null) {
            poll.cached = false;
            Log.d(TAG, "get cached DummySurface@" + poll.hashCode());
            return poll;
        }
        return newInstanceV17Internal(z10);
    }

    private static DummySurface newInstanceV17Internal(boolean z10) {
        int i10;
        Log.d(TAG, "create DummySurface internal:" + z10);
        assertApiLevel17OrHigher();
        DummySurfaceThread dummySurfaceThread = new DummySurfaceThread();
        if (z10) {
            i10 = secureMode;
        } else {
            i10 = 0;
        }
        return dummySurfaceThread.init(i10);
    }

    private void releaseInternal() {
        Log.d(TAG, "release DummySurface internal@" + hashCode());
        super.release();
        synchronized (this.thread) {
            try {
                if (!this.threadReleased) {
                    this.thread.release();
                    this.threadReleased = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void useCaches(boolean z10) {
        useCaches(z10, 0);
    }

    public void addEvent(int i10) {
        if (i10 != 1) {
            if (i10 == 2) {
                this.hasSetOutputSurfaceExceptionOther = true;
                return;
            }
            return;
        }
        this.hasSetOutputSurfaceException = true;
        this.hasSetOutputSurfaceExceptionOther = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0064  */
    @Override // android.view.Surface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release() {
        /*
            r5 = this;
            boolean r0 = com.ss.ttm.player.DummySurface.useDummySurfaceCaches
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L1c
            java.util.concurrent.ConcurrentLinkedQueue<com.ss.ttm.player.DummySurface> r0 = com.ss.ttm.player.DummySurface.caches
            int r0 = r0.size()
            if (r0 > r1) goto L1c
            boolean r0 = r5.secure
            if (r0 != 0) goto L1c
            boolean r0 = r5.isValid()
            if (r0 != 0) goto L1a
            goto L1c
        L1a:
            r0 = r3
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == 0) goto L5d
            int r4 = com.ss.ttm.player.DummySurface.cacheMode
            if (r4 != r3) goto L28
            boolean r4 = r5.hasSetOutputSurfaceException
            if (r4 == 0) goto L28
            goto L5e
        L28:
            int r4 = com.ss.ttm.player.DummySurface.cacheMode
            if (r4 != r1) goto L31
            boolean r1 = r5.hasSetOutputSurfaceExceptionOther
            if (r1 == 0) goto L31
            goto L5e
        L31:
            int r1 = com.ss.ttm.player.DummySurface.cacheMode
            r4 = 3
            if (r1 != r4) goto L47
            boolean r1 = r5.hasSetOutputSurfaceException
            if (r1 == 0) goto L47
            int r1 = com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionCounter
            int r1 = r1 + r3
            com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionCounter = r1
            int r4 = com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionLimit
            if (r1 < r4) goto L5d
            useCaches(r2)
            goto L5e
        L47:
            int r1 = com.ss.ttm.player.DummySurface.cacheMode
            r4 = 4
            if (r1 != r4) goto L5d
            boolean r1 = r5.hasSetOutputSurfaceExceptionOther
            if (r1 == 0) goto L5d
            int r1 = com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionOtherCounter
            int r1 = r1 + r3
            com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionOtherCounter = r1
            int r4 = com.ss.ttm.player.DummySurface.SetOutputSurfaceExceptionOtherLimit
            if (r1 < r4) goto L5d
            useCaches(r2)
            goto L5e
        L5d:
            r2 = r0
        L5e:
            if (r2 != 0) goto L64
            r5.releaseInternal()
            return
        L64:
            boolean r0 = r5.cached
            if (r0 != 0) goto L89
            java.util.concurrent.ConcurrentLinkedQueue<com.ss.ttm.player.DummySurface> r0 = com.ss.ttm.player.DummySurface.caches
            r0.add(r5)
            r5.cached = r3
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "cache DummySurface@"
            r0.append(r1)
            int r1 = r5.hashCode()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "DummySurface"
            android.util.Log.d(r1, r0)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.DummySurface.release():void");
    }

    private DummySurface(DummySurfaceThread dummySurfaceThread, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.cached = false;
        this.hasSetOutputSurfaceException = false;
        this.hasSetOutputSurfaceExceptionOther = false;
        this.thread = dummySurfaceThread;
        this.secure = z10;
    }

    public static void useCaches(boolean z10, int i10) {
        useCaches(z10, i10, SetOutputSurfaceExceptionLimit);
    }

    public static void useCaches(boolean z10, int i10, int i11) {
        Log.d(TAG, "useCaches:" + z10 + ":" + i10 + ":" + i11);
        useDummySurfaceCaches = z10;
        cacheMode = i10;
        if (i10 == 3) {
            SetOutputSurfaceExceptionLimit = i11;
        } else if (i10 == 4) {
            SetOutputSurfaceExceptionOtherLimit = i11;
        }
        if (useDummySurfaceCaches) {
            return;
        }
        while (true) {
            ConcurrentLinkedQueue<DummySurface> concurrentLinkedQueue = caches;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            DummySurface poll = concurrentLinkedQueue.poll();
            if (poll != null) {
                poll.release();
            }
        }
    }

    private static void assertApiLevel17OrHigher() {
    }
}
