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
public class CustomHTTPDNS extends BaseDNS {
    private static final String TAG = "CustomHTTPDNS";
    private static final int TIME_OUT = 10000;
    private InetAddress[] mAddress;
    private Future mFuture;
    private boolean mRet;

    /* loaded from: classes6.dex */
    private static class MyRunnable implements Runnable {
        private final WeakReference<CustomHTTPDNS> mCustomHTTPDNSRef;

        public MyRunnable(CustomHTTPDNS customHTTPDNS) {
            this.mCustomHTTPDNSRef = new WeakReference<>(customHTTPDNS);
        }

        @Override // java.lang.Runnable
        public void run() {
            Locale locale = Locale.US;
            AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "----implement delayed check for custom httpdns", new Object[0]));
            CustomHTTPDNS customHTTPDNS = this.mCustomHTTPDNSRef.get();
            if (customHTTPDNS == null) {
                AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "****end implement delayed check for custom httpdns, dns object null", new Object[0]));
            } else if (!customHTTPDNS.mRet) {
                customHTTPDNS.cancel();
                AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "****end implement delayed check cancel custom httpdns,", new Object[0]));
                customHTTPDNS.notifyError(new AVMDLDNSInfo(4, customHTTPDNS.mHostname, (String) null, 0L, customHTTPDNS.mId));
            }
        }
    }

    public CustomHTTPDNS(String str, Handler handler) {
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
            this.mFuture = AVMDLThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.mediakit.net.CustomHTTPDNS.1
                @Override // java.lang.Runnable
                @SuppressLint({"CI_DefaultLocale"})
                public void run() {
                    int i10;
                    AVMDLCustomHTTPDNSParserResult aVMDLCustomHTTPDNSParserResult;
                    long j10;
                    Locale locale = Locale.US;
                    String str = CustomHTTPDNS.this.mHostname;
                    if (AVMDLDNSParser.mCustomHttpDNSParser == null) {
                        i10 = 0;
                    } else {
                        i10 = 1;
                    }
                    AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "----call custom httpdns, host:%s custom parser:%d", str, Integer.valueOf(i10)));
                    AVMDLCustomHTTPDNSParser aVMDLCustomHTTPDNSParser = AVMDLDNSParser.mCustomHttpDNSParser;
                    if (aVMDLCustomHTTPDNSParser != null) {
                        aVMDLCustomHTTPDNSParserResult = aVMDLCustomHTTPDNSParser.parseHost(CustomHTTPDNS.this.mHostname);
                    } else {
                        aVMDLCustomHTTPDNSParserResult = null;
                    }
                    CustomHTTPDNS.this.mRet = true;
                    if (aVMDLCustomHTTPDNSParserResult != null && !TextUtils.isEmpty(aVMDLCustomHTTPDNSParserResult.mIPList)) {
                        AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "****default expiredtime:%d force expiredtime:%d ", Integer.valueOf(AVMDLDNSParser.mGlobalDefaultExpiredTime), Integer.valueOf(AVMDLDNSParser.mGlobalForceExpiredTime)));
                        int i11 = AVMDLDNSParser.mGlobalForceExpiredTime;
                        if (i11 > 0) {
                            j10 = i11;
                        } else {
                            j10 = aVMDLCustomHTTPDNSParserResult.mTTL;
                        }
                        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(4, CustomHTTPDNS.this.mHostname, aVMDLCustomHTTPDNSParserResult.mIPList, System.currentTimeMillis() + (j10 * 1000), CustomHTTPDNS.this.mId);
                        IPCache.getInstance().put(CustomHTTPDNS.this.mHostname, aVMDLDNSInfo);
                        CustomHTTPDNS.this.notifySuccess(aVMDLDNSInfo);
                        AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "****end call custom httpdns, suc iplist:%s host:%s", aVMDLCustomHTTPDNSParserResult.mIPList, CustomHTTPDNS.this.mHostname));
                        return;
                    }
                    AVMDLLog.d(CustomHTTPDNS.TAG, String.format(locale, "****end call custom httpdns, result null or iplist null host:%s", CustomHTTPDNS.this.mHostname));
                    CustomHTTPDNS customHTTPDNS = CustomHTTPDNS.this;
                    customHTTPDNS.notifyError(new AVMDLDNSInfo(4, customHTTPDNS.mHostname, (String) null, 0L, customHTTPDNS.mId));
                }
            });
        } catch (Exception e10) {
            AVMDLLog.d(TAG, String.format(Locale.US, "****end call custom httpdns, exception:%s host:%s", e10, this.mHostname));
            notifyError(new AVMDLDNSInfo(4, this.mHostname, (String) null, 0L, this.mId));
        }
        this.mHandler.postDelayed(new MyRunnable(this), 10000L);
    }
}
