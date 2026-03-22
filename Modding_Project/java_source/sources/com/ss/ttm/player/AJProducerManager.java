package com.ss.ttm.player;

import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.RequiresApi;
import com.ss.ttm.utils.AVLogger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
@RequiresApi(api = 19)
@Keep
/* loaded from: classes6.dex */
public class AJProducerManager {
    private static final int DEFAULT_MAX_CACHE_SIZE = 2;
    public static final int DEFAULT_MAX_IMAGE = 2;
    public static final int IMAGEREADER_STATUS = 1;
    public static final int IMAGEREADER_STATUS_CLOSE = 1;
    public static final int IMAGEREADER_STATUS_OPEN = 2;
    private static int MaxImages = 2;
    public static final int NATIVE_WINDOW_API_CPU = 2;
    public static final int NATIVE_WINDOW_API_EGL = 1;
    public static final int NATIVE_WINDOW_API_MEDIA = 3;
    public static final int NATIVE_WINDOW_API_NONE = 0;
    private static final String TAG = "AJProducerManager";
    private static HashMap<Long, ImageReaderListenerWrapper> mIRLWrapperMap = new HashMap<>();
    private static ArrayList<AJImageReaderProducer> mFreeIRProducerList = new ArrayList<>();
    private static ArrayList<AJImageReaderProducer> mUsingIRProducerList = new ArrayList<>();

    /* loaded from: classes6.dex */
    public static class AJImageReaderProducer {
        private int mApiType;
        private ImageReader mImageReader;
        private ImageReader.OnImageAvailableListener mListener;
        private long mUsingPlayerId;

        public AJImageReaderProducer(long j10, int i10, int i11) {
            int i12;
            ImageReader newInstance;
            this.mApiType = 0;
            this.mUsingPlayerId = 0L;
            if (Build.VERSION.SDK_INT >= 29) {
                if (i10 <= 0) {
                    i12 = 2;
                } else {
                    i12 = i10;
                }
                newInstance = ImageReader.newInstance(1, 1, 35, i12, 304L);
                this.mImageReader = newInstance;
            } else {
                this.mImageReader = ImageReader.newInstance(1, 1, 35, i10 <= 0 ? 2 : i10);
            }
            this.mApiType = i11;
            this.mUsingPlayerId = j10;
            AVLogger.d(AJProducerManager.TAG, "new:" + this);
        }

        public Surface getSurface() {
            ImageReader imageReader = this.mImageReader;
            if (imageReader == null) {
                return null;
            }
            return imageReader.getSurface();
        }

        public void release() {
            ImageReader imageReader = this.mImageReader;
            if (imageReader != null) {
                imageReader.close();
                this.mImageReader = null;
            }
        }

        public void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
            ImageReader imageReader = this.mImageReader;
            if (imageReader != null) {
                imageReader.setOnImageAvailableListener(onImageAvailableListener, handler);
                AVLogger.d(AJProducerManager.TAG, "setOnImageAvailableListener:" + this + ",handler:" + handler);
                if (onImageAvailableListener != null) {
                    AJProducerManager.notifyImageReaderStatus(onImageAvailableListener, 2);
                } else {
                    AJProducerManager.notifyImageReaderStatus(this.mListener, 1);
                }
                this.mListener = onImageAvailableListener;
            }
        }

        public String toString() {
            return "[" + super.toString() + ",pid:" + this.mUsingPlayerId + ",reader:" + this.mImageReader + "]";
        }
    }

    /* loaded from: classes6.dex */
    private static class ImageReaderListenerWrapper {
        public Handler handler;
        public ImageReader.OnImageAvailableListener listener;

        public ImageReaderListenerWrapper(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
            this.listener = onImageAvailableListener;
            this.handler = handler;
        }
    }

    @CalledByNative
    public static synchronized Surface getAvailableSurface(long j10, int i10, int i11) {
        synchronized (AJProducerManager.class) {
            if (j10 == 0) {
                return null;
            }
            ImageReaderListenerWrapper imageReaderListenerWrapper = mIRLWrapperMap.get(Long.valueOf(j10));
            if (imageReaderListenerWrapper == null) {
                AVLogger.w(TAG, "no listener,playerId:" + j10);
                return null;
            }
            Iterator<AJImageReaderProducer> it = mUsingIRProducerList.iterator();
            while (it.hasNext()) {
                AJImageReaderProducer next = it.next();
                if (next.mUsingPlayerId == j10 && next.mApiType == i10) {
                    return next.getSurface();
                }
            }
            Iterator<AJImageReaderProducer> it2 = mFreeIRProducerList.iterator();
            while (it2.hasNext()) {
                AJImageReaderProducer next2 = it2.next();
                if ((i10 == 2 && next2.mApiType == 2) || (i10 != 2 && next2.mApiType != 2)) {
                    it2.remove();
                    next2.mUsingPlayerId = j10;
                    mUsingIRProducerList.add(next2);
                    next2.setOnImageAvailableListener(imageReaderListenerWrapper.listener, imageReaderListenerWrapper.handler);
                    return next2.getSurface();
                }
            }
            AJImageReaderProducer aJImageReaderProducer = new AJImageReaderProducer(j10, MaxImages, i10);
            mUsingIRProducerList.add(aJImageReaderProducer);
            aJImageReaderProducer.setOnImageAvailableListener(imageReaderListenerWrapper.listener, imageReaderListenerWrapper.handler);
            return aJImageReaderProducer.getSurface();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyImageReaderStatus(ImageReader.OnImageAvailableListener onImageAvailableListener, int i10) {
        if (onImageAvailableListener != null) {
            try {
                Class<?> cls = onImageAvailableListener.getClass();
                Class cls2 = Integer.TYPE;
                cls.getDeclaredMethod("setIntOption", cls2, cls2).invoke(onImageAvailableListener, 1, Integer.valueOf(i10));
            } catch (Exception unused) {
            }
        }
    }

    @CalledByNative
    public static synchronized void releaseSurface(long j10, int i10) {
        synchronized (AJProducerManager.class) {
            try {
                Iterator<AJImageReaderProducer> it = mUsingIRProducerList.iterator();
                while (it.hasNext()) {
                    AJImageReaderProducer next = it.next();
                    if (next.mUsingPlayerId == j10 && next.mApiType == i10) {
                        it.remove();
                        next.setOnImageAvailableListener(null, null);
                        next.mUsingPlayerId = 0L;
                        if (mFreeIRProducerList.size() >= 2) {
                            mFreeIRProducerList.remove(0).release();
                        }
                        mFreeIRProducerList.add(next);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void setMaxImages(int i10) {
        if (i10 <= 0) {
            i10 = 2;
        }
        MaxImages = i10;
    }

    public static synchronized void setOnImageAvailableListener(long j10, ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
        synchronized (AJProducerManager.class) {
            try {
                AVLogger.d(TAG, "setOnImageAvailableListener,playerId:" + j10 + ",listener:" + onImageAvailableListener + ",handler:" + handler);
                if (j10 == 0) {
                    return;
                }
                if (onImageAvailableListener == null) {
                    mIRLWrapperMap.remove(Long.valueOf(j10));
                } else {
                    mIRLWrapperMap.put(Long.valueOf(j10), new ImageReaderListenerWrapper(onImageAvailableListener, handler));
                }
                Iterator<AJImageReaderProducer> it = mUsingIRProducerList.iterator();
                while (it.hasNext()) {
                    AJImageReaderProducer next = it.next();
                    if (next.mUsingPlayerId == j10) {
                        next.setOnImageAvailableListener(onImageAvailableListener, handler);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
