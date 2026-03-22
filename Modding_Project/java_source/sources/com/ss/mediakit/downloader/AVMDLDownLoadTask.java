package com.ss.mediakit.downloader;

import android.annotation.SuppressLint;
import com.ss.mediakit.medialoader.AVMDLLog;
import com.ss.mediakit.net.AVMDLThreadPool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class AVMDLDownLoadTask {
    public static final int IsHttpOpen = 0;
    public static final int IsHttpRead = 1;
    public static final int IsInValidStep = -1;
    public static final int IsReponseHeader = 0;
    public static final int IsResponseComplete = 3;
    public static final int IsResponseData = 1;
    public static final int IsResponseDownloadInterruptEnd = 5;
    public static final int IsResponseError = 2;
    public static final int IsResponseInfo = 4;
    private static final String TAG = "AVMDLDownLoadTask";
    private File file;
    FileOutputStream fos;
    private Future mFuture;
    private AVMDLRequest mRequest;
    private AVMDLResponse mResponse;
    private long mHandle = 0;
    private boolean mIsRunning = false;
    private int mStep = -1;
    private Lock mHandleLock = new ReentrantLock();
    private Lock mResonseLock = new ReentrantLock();

    private static native void _notifyLoadInfo(long j10, int i10, long j11, long j12, String str);

    private static native int _onRecvData(long j10, byte[] bArr, int i10);

    @SuppressLint({"CI_DefaultLocale"})
    private void cancelResponse() {
        try {
            this.mResonseLock.lock();
            if (this.mResponse != null) {
                AVMDLLog.d(TAG, "start cancel response");
                long currentTimeMillis = System.currentTimeMillis();
                this.mResponse.cancel();
                AVMDLLog.d(TAG, String.format(Locale.US, "end cancel cost time:%d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
            }
        } finally {
            this.mResonseLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public AVMDLResponse httOpen(AVMDLRequest aVMDLRequest) {
        int i10;
        AVMDLResponse aVMDLResponse;
        int i11;
        AVMDLLog.d(TAG, "start http open, url:" + aVMDLRequest.urls[aVMDLRequest.mCurlUrlIndex] + "object:" + this + "handle:" + this.mHandle);
        int i12 = aVMDLRequest.mCurlUrlIndex;
        setResponse(null);
        int i13 = i12;
        do {
            AVMDLLog.d(TAG, String.format(Locale.US, "http open index:%d state:%d trycount:%d maxTry:%d", Integer.valueOf(i13), Integer.valueOf(aVMDLRequest.mUrlState[i13]), Integer.valueOf(aVMDLRequest.mUrlErrCount[i13]), Integer.valueOf(aVMDLRequest.mMaxTryCout)) + " url:" + aVMDLRequest.urls[i13]);
            if (aVMDLRequest.mUrlState[i13] == 0 && ((i10 = aVMDLRequest.mMaxTryCout) <= 0 || aVMDLRequest.mUrlErrCount[i13] < i10)) {
                try {
                    aVMDLResponse = AVMDLHttpExcutor.excute(aVMDLRequest, i13);
                } catch (IOException e10) {
                    AVMDLLog.d(TAG, "io exception:" + e10.getLocalizedMessage() + "for url:" + aVMDLRequest.urls[i13]);
                    aVMDLResponse = null;
                }
                if (aVMDLResponse != null && aVMDLResponse.isOpenSuccessful()) {
                    AVMDLLog.d(TAG, "http open suc");
                    setResponse(aVMDLResponse);
                    notifyToNative(0, aVMDLResponse.statusCode, aVMDLResponse.contentlength, null);
                    AVMDLLog.d(TAG, "end http open");
                    aVMDLResponse.request = aVMDLRequest;
                    return aVMDLResponse;
                }
                int[] iArr = aVMDLRequest.mUrlErrCount;
                iArr[i13] = iArr[i13] + 1;
                if (aVMDLResponse != null && (i11 = aVMDLResponse.statusCode) >= 400 && i11 < 600) {
                    aVMDLRequest.mUrlState[i13] = 1;
                    AVMDLLog.d(TAG, String.format(Locale.US, "set url state forbidden index:%d", Integer.valueOf(i13)));
                }
            }
            i13 = (i13 + 1) % aVMDLRequest.urls.length;
        } while (i13 != i12);
        AVMDLLog.d(TAG, "end http open");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public AVMDLResponse httpRead(AVMDLResponse aVMDLResponse, byte[] bArr) {
        int readData = aVMDLResponse.readData(bArr);
        if (readData > 0) {
            try {
                this.mHandleLock.lock();
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _onRecvData(j10, bArr, readData);
                }
            } finally {
                this.mHandleLock.unlock();
            }
        }
        return aVMDLResponse;
    }

    @SuppressLint({"CI_DefaultLocale"})
    private void setHandle(long j10) {
        try {
            this.mHandleLock.lock();
            this.mHandle = j10;
            AVMDLLog.d(TAG, String.format(Locale.US, "set handle:%d", Long.valueOf(j10)));
        } finally {
            this.mHandleLock.unlock();
        }
    }

    private void setResponse(AVMDLResponse aVMDLResponse) {
        this.mResonseLock.lock();
        this.mResponse = aVMDLResponse;
        this.mResonseLock.unlock();
    }

    public void close() {
        setHandle(0L);
        this.mIsRunning = false;
        cancelResponse();
    }

    @SuppressLint({"CI_DefaultLocale"})
    public void notifyToNative(int i10, long j10, long j11, String str) {
        AVMDLLog.d(TAG, String.format(Locale.US, "notify type:%d code:%d param:%d ", Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(j11)));
        try {
            this.mHandleLock.lock();
            long j12 = this.mHandle;
            if (j12 != 0) {
                _notifyLoadInfo(j12, i10, j10, j11, str);
            }
        } finally {
            this.mHandleLock.unlock();
        }
    }

    public int open(long j10, Object obj, Object obj2, int i10, int i11, int i12) {
        if (j10 != 0 && obj != null) {
            AVMDLRequest aVMDLRequest = (AVMDLRequest) obj;
            String[] strArr = aVMDLRequest.urls;
            if (strArr != null && strArr.length != 0) {
                this.mRequest = aVMDLRequest;
                setHandle(j10);
                this.mStep = 0;
                this.mIsRunning = true;
                this.mFuture = AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.mediakit.downloader.AVMDLDownLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String str;
                        if (("request start:" + AVMDLDownLoadTask.this.mRequest.urls[0]) != null) {
                            str = AVMDLDownLoadTask.this.mRequest.urls[0];
                        } else {
                            str = "url is null";
                        }
                        AVMDLLog.d(AVMDLDownLoadTask.TAG, str);
                        AVMDLResponse aVMDLResponse = new AVMDLResponse(AVMDLDownLoadTask.this.mRequest, null, null);
                        byte[] bArr = new byte[32768];
                        while (AVMDLDownLoadTask.this.mIsRunning) {
                            int i13 = AVMDLDownLoadTask.this.mStep;
                            if (i13 == 0) {
                                aVMDLResponse = AVMDLDownLoadTask.this.httOpen(aVMDLResponse.request);
                                if (aVMDLResponse != null && aVMDLResponse.isOpenSuccessful()) {
                                    AVMDLDownLoadTask.this.mStep = 1;
                                } else {
                                    AVMDLDownLoadTask.this.notifyToNative(2, -777L, 0L, null);
                                    AVMDLLog.d(AVMDLDownLoadTask.TAG, "request is error http open fail");
                                    return;
                                }
                            } else if (i13 != 1) {
                                continue;
                            } else {
                                aVMDLResponse = AVMDLDownLoadTask.this.httpRead(aVMDLResponse, bArr);
                                if (!aVMDLResponse.isReadSuccessful()) {
                                    AVMDLLog.d(AVMDLDownLoadTask.TAG, "read fail try http open");
                                    AVMDLDownLoadTask.this.mStep = 0;
                                } else if (aVMDLResponse.isFinish()) {
                                    AVMDLDownLoadTask.this.notifyToNative(3, 0L, aVMDLResponse.contentlength, null);
                                    AVMDLLog.d(AVMDLDownLoadTask.TAG, "request is finish");
                                    return;
                                }
                            }
                        }
                        AVMDLLog.d(AVMDLDownLoadTask.TAG, "request is interrupt end url:" + AVMDLDownLoadTask.this.mRequest.urls[0]);
                        AVMDLDownLoadTask.this.notifyToNative(5, 0L, 0L, null);
                    }
                });
                return 0;
            }
            AVMDLLog.e(TAG, "no url err");
            return -2;
        }
        AVMDLLog.e(TAG, "handle zero err");
        return -1;
    }
}
