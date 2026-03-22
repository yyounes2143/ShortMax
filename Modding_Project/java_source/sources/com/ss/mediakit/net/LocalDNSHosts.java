package com.ss.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.util.Locale;
import java.util.concurrent.Future;
/* loaded from: classes6.dex */
public class LocalDNSHosts {
    private static final String TAG = "BatchParseLocalDNSHosts";
    private static final int TIME_OUT = 10000;
    private InetAddress[] mAddress;
    private Future mFuture;
    protected Handler mHandler;
    public String[] mHosts;
    public String mId;
    private boolean mRet = false;
    protected boolean mCancelled = false;
    protected AVMDLNetClient mNetClient = null;

    /* loaded from: classes6.dex */
    private static class MyRunnable implements Runnable {
        private final WeakReference<LocalDNSHosts> mLocalDNSRef;

        public MyRunnable(LocalDNSHosts localDNSHosts) {
            this.mLocalDNSRef = new WeakReference<>(localDNSHosts);
        }

        @Override // java.lang.Runnable
        public void run() {
            Locale locale = Locale.US;
            AVMDLLog.d(LocalDNSHosts.TAG, String.format(locale, "----implement delayed check for local dns", new Object[0]));
            LocalDNSHosts localDNSHosts = this.mLocalDNSRef.get();
            if (localDNSHosts == null) {
                AVMDLLog.d(LocalDNSHosts.TAG, String.format(locale, "****end implement delayed check for local dns, dns object null", new Object[0]));
            } else if (!localDNSHosts.mRet) {
                localDNSHosts.cancel();
                AVMDLLog.d(LocalDNSHosts.TAG, String.format(locale, "****end implement delayed check cancel local dns,", new Object[0]));
            }
        }
    }

    public LocalDNSHosts(String[] strArr, Handler handler) {
        this.mHosts = strArr;
        this.mHandler = handler;
    }

    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    public void close() {
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    public boolean isRunning() {
        return this.mRet;
    }

    public void start() {
        try {
            this.mFuture = AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.mediakit.net.LocalDNSHosts.1
                @Override // java.lang.Runnable
                @SuppressLint({"CI_DefaultLocale"})
                public void run() {
                    String str;
                    AVMDLLog.d(LocalDNSHosts.TAG, "----call local dns batch parse");
                    int i10 = 0;
                    while (true) {
                        LocalDNSHosts localDNSHosts = LocalDNSHosts.this;
                        String[] strArr = localDNSHosts.mHosts;
                        if (i10 >= strArr.length) {
                            localDNSHosts.mRet = true;
                            AVMDLLog.d(LocalDNSHosts.TAG, "****end call local dns batch parse");
                            return;
                        }
                        if (!TextUtils.isEmpty(strArr[i10])) {
                            try {
                                LocalDNSHosts localDNSHosts2 = LocalDNSHosts.this;
                                localDNSHosts2.mAddress = InetAddress.getAllByName(localDNSHosts2.mHosts[i10]);
                                String str2 = "";
                                for (int i11 = 0; i11 < LocalDNSHosts.this.mAddress.length; i11++) {
                                    String hostAddress = LocalDNSHosts.this.mAddress[i11].getHostAddress();
                                    if (!TextUtils.isEmpty(hostAddress)) {
                                        if (TextUtils.isEmpty(str2)) {
                                            str = str2 + hostAddress;
                                        } else {
                                            str = str2 + "," + hostAddress;
                                        }
                                        str2 = str;
                                    }
                                }
                                Locale locale = Locale.US;
                                AVMDLLog.d(LocalDNSHosts.TAG, String.format(locale, "host:%s pasrse suc result:%s", LocalDNSHosts.this.mHosts[i10], str2));
                                if (!TextUtils.isEmpty(str2)) {
                                    AVMDLLog.d(LocalDNSHosts.TAG, String.format(locale, "****default expiredtime:%d force expiredtime:%d ", Integer.valueOf(AVMDLDNSParser.mGlobalDefaultExpiredTime), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime)));
                                    int i12 = AVMDLDNSParser.mGlobalForceExpiredTime;
                                    if (i12 <= 0) {
                                        i12 = AVMDLDNSParser.mGlobalDefaultExpiredTime;
                                    }
                                    IPCache.getInstance().put(LocalDNSHosts.this.mHosts[i10], new AVMDLDNSInfo(0, LocalDNSHosts.this.mHosts[i10], str2, (i12 * 1000) + System.currentTimeMillis(), LocalDNSHosts.this.mId));
                                }
                            } catch (Throwable th2) {
                                AVMDLLog.d(LocalDNSHosts.TAG, String.format(Locale.US, "host:%s pasrse err:%s", LocalDNSHosts.this.mHosts[i10], th2.getMessage()));
                            }
                        }
                        i10++;
                    }
                }
            });
        } catch (Exception e10) {
            AVMDLLog.d(TAG, String.format(Locale.US, "****end call local dns, exception:%s", e10));
        }
        this.mHandler.postDelayed(new MyRunnable(this), 10000L);
    }
}
