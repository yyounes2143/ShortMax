package com.ss.ttvideoengine.net;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class LocalDNS extends BaseDNS {
    private static final String TAG = "LocalDNS";
    private static final int TIME_OUT = 10000;
    private InetAddress mAddress;
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
            LocalDNS localDNS = this.mLocalDNSRef.get();
            if (localDNS == null) {
                return;
            }
            synchronized (LocalDNS.class) {
                try {
                    if (!localDNS.mRet) {
                        localDNS.mRet = true;
                        localDNS.notifyError(new Error(Error.LocalDNS, Error.Timeout));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public LocalDNS(String str) {
        super(str);
        this.mRet = false;
        TTVideoEngineLog.i(TAG, "DNS use LocalDNS");
    }

    @Override // com.ss.ttvideoengine.net.BaseDNS
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

    @Override // com.ss.ttvideoengine.net.BaseDNS
    public void close() {
        super.close();
        this.mCancelled = true;
        Future future = this.mFuture;
        if (future != null) {
            future.cancel(true);
            this.mFuture = null;
        }
    }

    @Override // com.ss.ttvideoengine.net.BaseDNS
    public void start() {
        try {
            this.mFuture = EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.net.LocalDNS.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LocalDNS localDNS = LocalDNS.this;
                        localDNS.mAddress = InetAddress.getByName(localDNS.mHostname);
                        if (LocalDNS.this.mAddress == null) {
                            synchronized (LocalDNS.class) {
                                try {
                                    if (!LocalDNS.this.mRet) {
                                        LocalDNS.this.mRet = true;
                                        LocalDNS.this.notifyError(new Error(Error.LocalDNS, Error.ParsingResponse));
                                    }
                                } finally {
                                }
                            }
                            return;
                        }
                        String hostAddress = LocalDNS.this.mAddress.getHostAddress();
                        if (LocalDNS.this.mAddress instanceof Inet6Address) {
                            hostAddress = String.format("[%s]", hostAddress);
                        }
                        synchronized (LocalDNS.class) {
                            if (!LocalDNS.this.mRet) {
                                LocalDNS.this.mRet = true;
                                if (hostAddress == null) {
                                    LocalDNS.this.notifyError(new Error(Error.LocalDNS, Error.ResultEmpty));
                                    return;
                                }
                                JSONObject jSONObject = new JSONObject();
                                JSONArray jSONArray = new JSONArray();
                                jSONArray.put(hostAddress);
                                try {
                                    jSONObject.put("ips", jSONArray);
                                    jSONObject.put(CrashHianalyticsData.TIME, System.currentTimeMillis());
                                    jSONObject.put("dns_type", IVideoEventLogger.LOGGER_DNS_TYPE_LOCAL);
                                } catch (JSONException e10) {
                                    TTVideoEngineLog.d(e10);
                                }
                                LocalDNS.this.notifySuccess(jSONObject);
                            }
                        }
                    } catch (Throwable th2) {
                        TTVideoEngineLog.d(th2);
                        synchronized (LocalDNS.class) {
                            try {
                                if (!LocalDNS.this.mRet) {
                                    LocalDNS.this.mRet = true;
                                    LocalDNS.this.notifyError(new Error(Error.LocalDNS, (int) Error.DnsParseError, th2.getMessage()));
                                }
                            } finally {
                            }
                        }
                    }
                }
            });
        } catch (Exception e10) {
            notifyError(new Error(Error.LocalDNS, (int) Error.DnsParseError, e10.getMessage()));
        }
        this.mHandler.postDelayed(new MyRunnable(this), 10000L);
    }
}
