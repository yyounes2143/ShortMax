package com.ss.mediakit.net;

import android.net.Network;
import android.os.Handler;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.util.Locale;
import java.util.concurrent.Future;
/* loaded from: classes6.dex */
public class LocalDNS extends BaseDNS {
    private static final String TAG = "LocalDNS";
    private static final int TIME_OUT = 10000;
    private InetAddress[] mAddress;
    private Future mFuture;
    private boolean mRet;

    /* loaded from: classes6.dex */
    private static class MyRunnable implements Runnable {
        private final WeakReference<LocalDNS> mLocalDNSRef;

        public MyRunnable(LocalDNS localDNS) {
            this.mLocalDNSRef = new WeakReference<>(localDNS);
        }

        @Override // java.lang.Runnable
        public void run() {
            Locale locale = Locale.US;
            AVMDLLog.d(LocalDNS.TAG, String.format(locale, "----implement delayed check for local dns", new Object[0]));
            LocalDNS localDNS = this.mLocalDNSRef.get();
            if (localDNS == null) {
                AVMDLLog.d(LocalDNS.TAG, String.format(locale, "****end implement delayed check for local dns, dns object null", new Object[0]));
            } else if (!localDNS.mRet) {
                localDNS.cancel();
                AVMDLLog.d(LocalDNS.TAG, String.format(locale, "****end implement delayed check cancel local dns,", new Object[0]));
                localDNS.notifyError(new AVMDLDNSInfo(0, localDNS.mHostname, (String) null, 0L, localDNS.mId));
            }
        }
    }

    public LocalDNS(String str, Handler handler) {
        super(str, handler);
        this.mRet = false;
    }

    @Override // com.ss.mediakit.net.BaseDNS
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

    @Override // com.ss.mediakit.net.BaseDNS
    public void close() {
        super.close();
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    @Override // com.ss.mediakit.net.BaseDNS
    public boolean isRunning() {
        return this.mRet;
    }

    @Override // com.ss.mediakit.net.BaseDNS
    public void start() {
        try {
            this.mFuture = AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.mediakit.net.LocalDNS.1
                @Override // java.lang.Runnable
                public void run() {
                    Locale locale = Locale.US;
                    AVMDLLog.d(LocalDNS.TAG, String.format(locale, "----call local dns, host:%s", LocalDNS.this.mHostname));
                    try {
                        Network curNetwork = AVMDLMultiNetwork.getCurNetwork();
                        if (curNetwork != null) {
                            AVMDLLog.d(LocalDNS.TAG, String.format(locale, "do local by cellular network", new Object[0]));
                            LocalDNS localDNS = LocalDNS.this;
                            localDNS.mAddress = curNetwork.getAllByName(localDNS.mHostname);
                        } else {
                            AVMDLLog.d(LocalDNS.TAG, String.format(locale, "do local by default network", new Object[0]));
                            LocalDNS localDNS2 = LocalDNS.this;
                            localDNS2.mAddress = InetAddress.getAllByName(localDNS2.mHostname);
                        }
                        LocalDNS.this.mRet = true;
                        if (LocalDNS.this.mAddress == null) {
                            AVMDLLog.d(LocalDNS.TAG, String.format(locale, "****end call local dns, not get address host:%s", LocalDNS.this.mHostname));
                            LocalDNS localDNS3 = LocalDNS.this;
                            localDNS3.notifyError(new AVMDLDNSInfo(0, localDNS3.mHostname, (String) null, 0L, localDNS3.mId));
                            return;
                        }
                        String str = "";
                        for (int i10 = 0; i10 < LocalDNS.this.mAddress.length; i10++) {
                            String hostAddress = LocalDNS.this.mAddress[i10].getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                if (TextUtils.isEmpty(str)) {
                                    str = str + hostAddress;
                                } else {
                                    str = str + "," + hostAddress;
                                }
                            }
                        }
                        if (TextUtils.isEmpty(str)) {
                            AVMDLLog.d(LocalDNS.TAG, String.format(Locale.US, "****end call local dns, iplist null host:%s", LocalDNS.this.mHostname));
                            LocalDNS localDNS4 = LocalDNS.this;
                            localDNS4.notifyError(new AVMDLDNSInfo(0, localDNS4.mHostname, (String) null, 0L, localDNS4.mId));
                            return;
                        }
                        Locale locale2 = Locale.US;
                        AVMDLLog.d(LocalDNS.TAG, String.format(locale2, "****default expiredtime:%d force expiredtime:%d ", Integer.valueOf(AVMDLDNSParser.mGlobalDefaultExpiredTime), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime)));
                        int i11 = AVMDLDNSParser.mGlobalForceExpiredTime;
                        if (i11 <= 0) {
                            i11 = AVMDLDNSParser.mGlobalDefaultExpiredTime;
                        }
                        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(0, LocalDNS.this.mHostname, str, System.currentTimeMillis() + (i11 * 1000), LocalDNS.this.mId);
                        IPCache.getInstance().put(LocalDNS.this.mHostname, aVMDLDNSInfo);
                        LocalDNS.this.notifySuccess(aVMDLDNSInfo);
                        AVMDLLog.d(LocalDNS.TAG, String.format(locale2, "****end call local dns, suc iplist:%s host:%s", str, LocalDNS.this.mHostname));
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        LocalDNS.this.mRet = true;
                        AVMDLLog.d(LocalDNS.TAG, String.format(Locale.US, "****end call local dns, end exception:%s host:%s", th2, LocalDNS.this.mHostname));
                        LocalDNS localDNS5 = LocalDNS.this;
                        localDNS5.notifyError(new AVMDLDNSInfo(0, localDNS5.mHostname, (String) null, 0L, localDNS5.mId));
                    }
                }
            });
        } catch (Exception e10) {
            AVMDLLog.d(TAG, String.format(Locale.US, "****end call local dns, exception:%s host:%s", e10, this.mHostname));
            notifyError(new AVMDLDNSInfo(0, this.mHostname, (String) null, 0L, this.mId));
        }
        this.mHandler.postDelayed(new MyRunnable(this), 10000L);
    }
}
