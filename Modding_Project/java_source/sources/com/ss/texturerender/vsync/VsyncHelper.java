package com.ss.texturerender.vsync;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import com.ss.texturerender.TextureRenderLog;
import java.util.ArrayList;
import java.util.Iterator;
@TargetApi(16)
/* loaded from: classes6.dex */
public class VsyncHelper implements Choreographer.FrameCallback, Handler.Callback, IVsyncHelper {
    public static final float DEFAULT_REFRESH_RATE = 60.0f;
    private static final long NANOS_PER_SECOND = 1000000000;
    private static final String TAG = "VsyncHelper";
    private Choreographer choreographer;
    private ArrayList<IVsyncCallback> mCallbackList;
    private boolean mEnable;
    private int mTexType;
    private Handler mainHandler;
    private volatile long vsyncDurationNs;
    private final WindowManager windowManager;

    /* loaded from: classes6.dex */
    public static class VsyncCallback implements IVsyncCallback {
        public Handler mHandler;

        public VsyncCallback(Handler handler) {
            this.mHandler = handler;
        }

        @Override // com.ss.texturerender.vsync.IVsyncCallback
        public void notifyVsync() {
            this.mHandler.sendEmptyMessage(28);
        }
    }

    public VsyncHelper(Context context, int i10) {
        this.mTexType = -1;
        Handler handler = new Handler(Looper.getMainLooper(), this);
        this.mainHandler = handler;
        handler.post(new Runnable() { // from class: com.ss.texturerender.vsync.VsyncHelper.1
            @Override // java.lang.Runnable
            public void run() {
                VsyncHelper.this.choreographer = Choreographer.getInstance();
            }
        });
        this.mCallbackList = new ArrayList<>();
        if (context != null) {
            this.windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
        } else {
            this.windowManager = null;
        }
        updateDefaultDisplayRefreshRateParams();
        this.mEnable = true;
        this.mTexType = i10;
        TextureRenderLog.i(i10, TAG, "new VsyncHelper");
    }

    private void addObserverInternal(Message message) {
        Choreographer choreographer;
        if (!this.mCallbackList.contains((IVsyncCallback) message.obj)) {
            this.mCallbackList.add((IVsyncCallback) message.obj);
            if (this.mCallbackList.size() == 1 && (choreographer = this.choreographer) != null) {
                choreographer.postFrameCallback(this);
            }
        }
    }

    private void removeObserverInternal(Message message) {
        Choreographer choreographer;
        this.mCallbackList.remove(message.obj);
        if (this.mCallbackList.size() == 0 && (choreographer = this.choreographer) != null) {
            choreographer.removeFrameCallback(this);
        }
    }

    private void updateDefaultDisplayRefreshRateParams() {
        Display display;
        WindowManager windowManager = this.windowManager;
        if (windowManager != null) {
            display = windowManager.getDefaultDisplay();
        } else {
            display = null;
        }
        if (display != null) {
            this.vsyncDurationNs = (long) (1.0E9d / display.getRefreshRate());
        } else {
            this.vsyncDurationNs = 16666667L;
        }
        int i10 = this.mTexType;
        TextureRenderLog.i(i10, TAG, "vsyncDurationNs:" + this.vsyncDurationNs + "defaultDisplay:" + display);
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void addObserver(IVsyncCallback iVsyncCallback) {
        TextureRenderLog.i(this.mTexType, TAG, "addObserver");
        if (iVsyncCallback == null) {
            return;
        }
        Message obtainMessage = this.mainHandler.obtainMessage(29);
        obtainMessage.obj = iVsyncCallback;
        obtainMessage.sendToTarget();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        if (this.mCallbackList.size() > 0 && this.mEnable) {
            Iterator<IVsyncCallback> it = this.mCallbackList.iterator();
            while (it.hasNext()) {
                it.next().notifyVsync();
            }
            this.choreographer.postFrameCallback(this);
        }
    }

    public long getVsyncDurationNs() {
        return this.vsyncDurationNs;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 28:
                break;
            case 29:
                addObserverInternal(message);
                break;
            case 30:
                removeObserverInternal(message);
                return true;
            default:
                return false;
        }
        return true;
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public boolean isWorking() {
        if (this.mCallbackList.size() > 0 && this.mEnable) {
            return true;
        }
        return false;
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void removeObserver(IVsyncCallback iVsyncCallback) {
        TextureRenderLog.i(this.mTexType, TAG, "removeObserver");
        if (iVsyncCallback == null) {
            return;
        }
        Message obtainMessage = this.mainHandler.obtainMessage(30);
        obtainMessage.obj = iVsyncCallback;
        obtainMessage.sendToTarget();
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void setEnable(boolean z10) {
        this.mEnable = z10;
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void update() {
    }
}
