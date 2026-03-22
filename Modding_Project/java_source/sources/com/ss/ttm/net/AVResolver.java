package com.ss.ttm.net;

import android.text.TextUtils;
import com.ss.ttm.player.AVThreadPool;
import com.ss.ttm.player.CalledByNative;
import com.ss.ttm.player.Keep;
import com.ss.ttm.utils.AVLogger;
import java.net.InetAddress;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
@Keep
/* loaded from: classes6.dex */
public class AVResolver {
    public static int HOST_MAX_CACHE_TIME = 600000;
    private static final int MAX_CACHED = 128;
    private static final String TAG = "AVResolver";
    private static final Hashtable<String, HostInfo> mCacheHosts = new Hashtable<>();
    private HostInfo mHostInfo;
    private String mHostName;
    private String[] mIPStr;
    private boolean mRet = false;
    private Thread mThread = null;
    private String mError = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class HostInfo {

        /* renamed from: ip  reason: collision with root package name */
        public String f37050ip;
        public long time;

        HostInfo() {
        }
    }

    /* loaded from: classes6.dex */
    static class ParserHost implements Runnable {
        String mHostName;
        AVResolver mResolver;

        public ParserHost(AVResolver aVResolver, String str) {
            this.mResolver = aVResolver;
            this.mHostName = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            InetAddress byName;
            AVLogger.d(AVResolver.TAG, "start ParserHost task");
            String str3 = null;
            try {
                AVLogger.d(AVResolver.TAG, "getAddressInfo thread start");
                byName = InetAddress.getByName(this.mHostName);
            } catch (Throwable th2) {
                th = th2;
                str = null;
            }
            try {
                str3 = byName.getHostAddress();
                AVLogger.d(AVResolver.TAG, "getAddressInfo thread ok");
                str2 = byName;
            } catch (Throwable th3) {
                th = th3;
                str = str3;
                str3 = byName;
                th.printStackTrace();
                this.mResolver.mError = th.getMessage();
                AVLogger.d(AVResolver.TAG, "getAddressInfo thread error");
                String str4 = str;
                str2 = str3;
                str3 = str4;
                this.mResolver.mRet = true;
                if (str2 == null) {
                }
                return;
            }
            this.mResolver.mRet = true;
            if (str2 == null && str3 != null) {
                this.mResolver.mIPStr = new String[1];
                this.mResolver.mIPStr[0] = str3;
                HostInfo hostInfo = new HostInfo();
                hostInfo.time = System.currentTimeMillis();
                hostInfo.f37050ip = str3;
                AVResolver.putHostInfo(this.mHostName, hostInfo);
                hostInfo.time = System.currentTimeMillis();
            }
        }
    }

    public static final boolean isIP(String str) {
        if (str.length() >= 7 && str.length() <= 15) {
            return Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}").matcher(str).find();
        }
        if (str.charAt(0) != '[' || str.charAt(str.length() - 1) != ']') {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.String] */
    static synchronized void putHostInfo(String str, HostInfo hostInfo) {
        HostInfo hostInfo2;
        synchronized (AVResolver.class) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    Hashtable<String, HostInfo> hashtable = mCacheHosts;
                    HostInfo hostInfo3 = null;
                    if (hashtable.size() > 128) {
                        Iterator<Map.Entry<String, HostInfo>> it = hashtable.entrySet().iterator();
                        HostInfo hostInfo4 = null;
                        while (it.hasNext()) {
                            HostInfo value = it.next().getValue();
                            String key = it.next().getKey();
                            if (value != null) {
                                long j10 = value.time;
                                if (j10 < currentTimeMillis) {
                                    hostInfo4 = value;
                                    currentTimeMillis = j10;
                                }
                            }
                            hostInfo3 = key;
                        }
                        hostInfo2 = hostInfo3;
                        hostInfo3 = hostInfo4;
                    } else {
                        hostInfo2 = null;
                    }
                    if (hostInfo3 != null && hostInfo2 != null) {
                        AVLogger.d(TAG, "putHostInfo remove host cache" + hostInfo3.f37050ip);
                        mCacheHosts.remove(hostInfo2);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    AVLogger.d(TAG, "putHostInfo remove host cache error");
                }
                mCacheHosts.put(str, hostInfo);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @CalledByNative
    public void freeAddress() {
        AVLogger.d(TAG, "free address ctx start");
        if (this.mThread != null) {
            AVLogger.d(TAG, "mthread not null");
            try {
                this.mThread.interrupt();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @CalledByNative
    public String getAddress() {
        String[] strArr;
        if (this.mRet && (strArr = this.mIPStr) != null && strArr[0] != null) {
            AVLogger.d(TAG, "getAddress return ip:" + this.mIPStr[0]);
            return this.mIPStr[0];
        }
        return "parser host name: " + this.mHostName + " error.err msg:" + this.mError;
    }

    @CalledByNative
    public void getAddressInfo(String str) {
        this.mHostName = str;
        if (TextUtils.isEmpty(str)) {
            AVLogger.d(TAG, "getAddressInfo start.hostname is null:");
            this.mRet = true;
            return;
        }
        AVLogger.d(TAG, "getAddressInfo start.hostname:" + str);
        if (isIP(this.mHostName)) {
            AVLogger.d(TAG, "getAddressInfo is ip.ip:" + str);
            this.mIPStr = r10;
            String[] strArr = {this.mHostName};
            this.mRet = true;
            return;
        }
        Hashtable<String, HostInfo> hashtable = mCacheHosts;
        HostInfo hostInfo = hashtable.get(str);
        this.mHostInfo = hostInfo;
        if (hostInfo != null) {
            AVLogger.d(TAG, "getAddressInfo first find in cache.hostname:" + str);
            if (this.mHostInfo.f37050ip != null) {
                long currentTimeMillis = System.currentTimeMillis();
                HostInfo hostInfo2 = this.mHostInfo;
                if (currentTimeMillis - hostInfo2.time < HOST_MAX_CACHE_TIME) {
                    this.mIPStr = r10;
                    String[] strArr2 = {hostInfo2.f37050ip};
                    this.mRet = true;
                    AVLogger.d(TAG, "getAddressInfo hit cached:ip:" + this.mHostInfo.f37050ip + ",time:" + this.mHostInfo.time);
                    return;
                }
            }
            AVLogger.d(TAG, "getAddressInfo cache is to long.hostname:" + str);
            hashtable.remove(str);
            this.mHostInfo = null;
        }
        try {
            AVThreadPool.addTask(new ParserHost(this, this.mHostName));
        } catch (Exception e10) {
            this.mRet = true;
            this.mError = e10.getMessage();
        }
    }

    @CalledByNative
    public int isSuccess() {
        if (!this.mRet) {
            return 0;
        }
        String[] strArr = this.mIPStr;
        if (strArr != null && strArr[0] != null) {
            return 1;
        }
        return -1;
    }
}
