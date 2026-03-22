package com.ss.mediakit.fetcher;

import android.text.TextUtils;
import com.bytedance.vodsetting.FetcherListener;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.util.Locale;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class AVMDLURLFetcherBridge implements AVMDLURLFetcherListener {
    private static final String TAG = "AVMDLURLFetcherBridge";
    private static AVMDLFetcherMakerInterface fetcherMaker = null;
    private static AVMDLNewFetcherMakerInterface newFetcherMaker = null;
    private static int sJniVersion = 2;
    private AVMDLURLFetcherInterface fetcherInstance;
    public String rawKey = null;
    public String fileKey = null;
    public String oldURL = null;
    String newURL = null;
    public String engineId = null;
    boolean isFinish = false;
    private Lock lock = new ReentrantLock();
    private long handle = 0;

    private static native void _notifyFetcherResult(long j10, String str, String str2, String str3);

    private static native void _notifyFetcherResult(long j10, String str, String str2, String str3, int i10);

    public static void setFetcherMaker(AVMDLFetcherMakerInterface aVMDLFetcherMakerInterface) {
        if (aVMDLFetcherMakerInterface != null) {
            fetcherMaker = aVMDLFetcherMakerInterface;
        }
    }

    public static void setNewFetcherMaker(AVMDLNewFetcherMakerInterface aVMDLNewFetcherMakerInterface) {
        if (aVMDLNewFetcherMakerInterface != null) {
            newFetcherMaker = aVMDLNewFetcherMakerInterface;
        }
    }

    int getNewUrl(AVMDLURLFetcherInterface aVMDLURLFetcherInterface, String str, String str2, String str3) {
        this.rawKey = str;
        this.fileKey = str2;
        this.oldURL = str3;
        int start = aVMDLURLFetcherInterface.start(str, str2, str3, this);
        if (start <= 0) {
            return 0;
        }
        String[] uRLs = aVMDLURLFetcherInterface.getURLs();
        if (uRLs != null && uRLs.length != 0) {
            if (this.handle == 0) {
                return 0;
            }
            this.newURL = uRLs[0];
            AVMDLLog.d(TAG, "start notify result");
            if (sJniVersion == 2) {
                try {
                    _notifyFetcherResult(this.handle, str, str2, uRLs[0], 1);
                } catch (UnsatisfiedLinkError unused) {
                    sJniVersion = 1;
                }
            }
            if (sJniVersion == 1) {
                _notifyFetcherResult(this.handle, str, str2, uRLs[0]);
            }
            AVMDLLog.d(TAG, "end notify result");
            return 1;
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "****end fail start ret:%d, but getURLs null", Integer.valueOf(start)));
        return -2;
    }

    public String getResult() {
        this.lock.lock();
        try {
            String str = this.newURL;
            this.lock.unlock();
            AVMDLLog.d(TAG, "****get result:" + str);
            return str;
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    boolean isFinish() {
        return this.isFinish;
    }

    @Override // com.ss.mediakit.fetcher.AVMDLURLFetcherListener
    public void onCompletion(int i10, String str, String str2, String[] strArr) {
        this.lock.lock();
        try {
            if (!this.isFinish) {
                if (strArr != null && strArr.length > 0) {
                    this.newURL = strArr[0];
                }
                AVMDLLog.d(TAG, String.format(Locale.US, "receive completion code:%d result:%s", Integer.valueOf(i10), this.newURL));
                this.isFinish = true;
                if (this.handle != 0) {
                    AVMDLLog.d(TAG, "start notify result");
                    if (sJniVersion == 2) {
                        try {
                            _notifyFetcherResult(this.handle, str, str2, this.newURL, i10);
                        } catch (UnsatisfiedLinkError unused) {
                            sJniVersion = 1;
                        }
                    }
                    if (sJniVersion == 1) {
                        _notifyFetcherResult(this.handle, str, str2, this.newURL);
                    }
                    AVMDLLog.d(TAG, "end notify result");
                }
            } else {
                AVMDLLog.d(TAG, String.format(Locale.US, "has fetch finished not need cur completion code:%d result:%s", Integer.valueOf(i10), this.newURL));
            }
            this.lock.unlock();
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public void release() {
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----start release fetcher:%s", this));
        this.lock.lock();
        try {
            this.handle = 0L;
            this.lock.unlock();
            AVMDLLog.d(TAG, String.format(locale, "remove fetcher rawkey:%s, fileKey:%s", this.rawKey, this.fileKey));
            AVMDLLog.d(TAG, String.format(locale, "****end call release:%s", this));
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public int start(long j10, String str, String str2, String str3) {
        int i10;
        AVMDLURLFetcherInterface fetcher;
        AVMDLLog.d(TAG, "----old api fallback retry Jni");
        AVMDLLog.d(TAG, "----start fetch rawkey:" + str);
        if (fetcherMaker != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            AVMDLLog.d(TAG, "----old api fallback retry engine");
            this.lock.lock();
            this.handle = j10;
            try {
                try {
                    fetcher = fetcherMaker.getFetcher(str, str2, str3);
                    this.fetcherInstance = fetcher;
                } catch (Exception e10) {
                    AVMDLLog.d(TAG, String.format(Locale.US, "****call start failed, get exception: %s", e10.toString()));
                    this.lock.unlock();
                    i10 = FetcherListener.ErrorOverRetryTimesCode;
                }
                if (fetcher == null) {
                    AVMDLLog.d(TAG, "****fail, get fetcher is null");
                    return -1;
                }
                i10 = getNewUrl(fetcher, str, str2, str3);
                AVMDLLog.d(TAG, String.format(Locale.US, "****call start end, result:%d", Integer.valueOf(i10)));
                return i10;
            } finally {
                this.lock.unlock();
            }
        }
        AVMDLLog.d(TAG, "****end fetch fail,fetcherMaker is null or rawky or filekey or originurl is null");
        return -1;
    }

    public int start(long j10, String str, String str2, String str3, String str4) {
        int i10;
        AVMDLURLFetcherInterface fetcher;
        AVMDLLog.d(TAG, "----new api fallback retry Jni");
        AVMDLLog.d(TAG, "----start fetch rawkey:" + str);
        AVMDLLog.d(TAG, "----start fetch engineID is:" + str4);
        if (newFetcherMaker != null) {
            AVMDLLog.d(TAG, "----new api fallback retry engine");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                this.lock.lock();
                this.handle = j10;
                try {
                    try {
                        this.engineId = str4;
                        fetcher = newFetcherMaker.getFetcher(str, str2, str3, str4);
                        this.fetcherInstance = fetcher;
                    } catch (Exception e10) {
                        AVMDLLog.d(TAG, String.format(Locale.US, "****call start failed, get exception: %s", e10.toString()));
                        this.lock.unlock();
                        i10 = FetcherListener.ErrorOverRetryTimesCode;
                    }
                    if (fetcher == null) {
                        AVMDLLog.d(TAG, "****fail, get fetcher is null");
                        return -1;
                    }
                    i10 = getNewUrl(fetcher, str, str2, str3);
                    AVMDLLog.d(TAG, String.format(Locale.US, "****call start end, result:%d", Integer.valueOf(i10)));
                    return i10;
                } finally {
                    this.lock.unlock();
                }
            }
            AVMDLLog.d(TAG, "****end fetch fail,fetcherMaker is null or rawky or filekey or originurl or engineId is null");
            return -1;
        }
        AVMDLLog.d(TAG, "----old api fallback retry engine");
        return start(j10, str, str2, str3);
    }
}
