package com.ss.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AVMDLDNSParser {
    public static final int AVMDL_DNS_BACKUP_TYPE = 1;
    public static final int AVMDL_DNS_DEFAULT_EXPIRED_TIME = 2;
    public static final int AVMDL_DNS_DISABLE_PARALLEL_FOR_EXPIRED_CACHE = 11;
    public static final int AVMDL_DNS_ENABLE_BACKUP_IP = 5;
    public static final int AVMDL_DNS_ENABLE_DNS_LOG = 7;
    public static final int AVMDL_DNS_ENABLE_PARALLEL = 4;
    public static final int AVMDL_DNS_ENABLE_REFRESH = 6;
    public static final int AVMDL_DNS_FORCE_EXPIRED_TIME = 10;
    public static final int AVMDL_DNS_GOOGLE_PARSE_HOST = 9;
    public static final int AVMDL_DNS_MAIN_DELAYED_USE_BACKUP_FOR_EXPIRED_CACHE_TIME = 12;
    public static final int AVMDL_DNS_MAIN_DELAYED_USE_BACKUP_TIME = 3;
    public static final int AVMDL_DNS_MAIN_TYPE = 0;
    public static final int AVMDL_DNS_OWN_PARSE_HOST = 8;
    public static final int DNS_TYPE_BACKUP_IP = 11;
    public static final int DNS_TYPE_HTTP_ALI = 1;
    public static final int DNS_TYPE_HTTP_CUSTOM = 4;
    public static final int DNS_TYPE_HTTP_GOOGLE = 3;
    public static final int DNS_TYPE_HTTP_OWN = 2;
    public static final int DNS_TYPE_HTTP_SERVER = 10;
    public static final int DNS_TYPE_LOCAL = 0;
    public static final int PARSER_IS_BACKUP = 1;
    public static final int PARSER_IS_MAIN = 0;
    private static final String TAG = "AVMDLDNSParser";
    public static AVMDLCustomHTTPDNSParser mCustomHttpDNSParser = null;
    public static int mGloabalDisableParallelForExpiredCache = 0;
    public static int mGlobalBackType = 2;
    public static int mGlobalBackUpDelayedTime = 0;
    public static int mGlobalBackUpDelayedTimeForExpiredCache = 0;
    public static int mGlobalDefaultExpiredTime = 60;
    public static int mGlobalEnableBackUpIp = 0;
    public static int mGlobalEnableDNSLog = 0;
    public static int mGlobalEnableParallel = 0;
    public static int mGlobalEnableRefresh = 0;
    public static int mGlobalForceExpiredTime = 0;
    public static String mGlobalGoogleDNSParseHost = "";
    public static int mGlobalMainType = 0;
    public static String mGlobalOwnDNSParseHost = "";
    private static volatile AVMDLDNSParser mInstance;
    public static AVMDLNetClientMaker mNetClientMaker;
    private Handler mHandler;
    private int mRefCount;
    private int mState;
    private HandlerThread mThread;
    private int mType;
    private int mTimeOut = 5;
    private Lock mLock = new ReentrantLock();
    private Map<String, AVMDLHostProcessor> mProcessors = new HashMap();

    public AVMDLDNSParser() {
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mThread.getLooper()) { // from class: com.ss.mediakit.net.AVMDLDNSParser.1
            @Override // android.os.Handler
            @SuppressLint({"CI_DefaultLocale"})
            public void handleMessage(Message message) {
                AVMDLDNSInfo aVMDLDNSInfo;
                Object obj = message.obj;
                if (obj != null) {
                    aVMDLDNSInfo = (AVMDLDNSInfo) obj;
                } else {
                    aVMDLDNSInfo = null;
                }
                Locale locale = Locale.US;
                AVMDLLog.d(AVMDLDNSParser.TAG, String.format(locale, "----receive msg what:%d info:%s", Integer.valueOf(message.what), aVMDLDNSInfo));
                int i10 = message.what;
                if (i10 == 2) {
                    AVMDLDNSParser.this.proccessFailMsg(i10, aVMDLDNSInfo);
                } else if (i10 == 3) {
                    AVMDLDNSParser.this.proccessSucMsg(i10, aVMDLDNSInfo);
                } else if (i10 == 4) {
                    AVMDLDNSParser.this.proccessPreParseMsg(i10, aVMDLDNSInfo);
                } else if (i10 == 6) {
                    AVMDLDNSParser.this.processBackupParseMsg(i10, aVMDLDNSInfo);
                } else if (i10 == 7) {
                    AVMDLDNSParser.this.processBatchParseMsg(i10, aVMDLDNSInfo);
                } else if (i10 == 8) {
                    AVMDLDNSParser.this.processDNSTypeChangedParseMsg(i10, aVMDLDNSInfo);
                }
                AVMDLLog.d(AVMDLDNSParser.TAG, String.format(locale, "****end proc msg what:%d info:%s", Integer.valueOf(message.what), aVMDLDNSInfo));
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0067 A[Catch: all -> 0x008a, TryCatch #0 {all -> 0x008a, blocks: (B:6:0x0029, B:13:0x004f, B:15:0x0067, B:20:0x0090, B:22:0x0098, B:23:0x00ac, B:25:0x00b3, B:28:0x00d2, B:29:0x00d8, B:30:0x00dc), top: B:35:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b3 A[Catch: all -> 0x008a, TryCatch #0 {all -> 0x008a, blocks: (B:6:0x0029, B:13:0x004f, B:15:0x0067, B:20:0x0090, B:22:0x0098, B:23:0x00ac, B:25:0x00b3, B:28:0x00d2, B:29:0x00d8, B:30:0x00dc), top: B:35:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addListenerInternal(java.lang.String r18, com.ss.mediakit.net.AVMDLDNSParserListener r19, int r20) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.net.AVMDLDNSParser.addListenerInternal(java.lang.String, com.ss.mediakit.net.AVMDLDNSParserListener, int):void");
    }

    public static AVMDLDNSParser getInstance() {
        if (mInstance == null) {
            synchronized (AVMDLDNSParser.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new AVMDLDNSParser();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public static int getIntValue(int i10) {
        int i11;
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----get value for key:%d", Integer.valueOf(i10)));
        synchronized (AVMDLDNSParser.class) {
            try {
                switch (i10) {
                    case 0:
                        i11 = mGlobalMainType;
                        break;
                    case 1:
                        i11 = mGlobalBackType;
                        break;
                    case 2:
                        i11 = mGlobalDefaultExpiredTime;
                        break;
                    case 3:
                        i11 = mGlobalBackUpDelayedTime;
                        break;
                    case 4:
                        i11 = mGlobalEnableParallel;
                        break;
                    case 5:
                        i11 = mGlobalEnableBackUpIp;
                        break;
                    case 6:
                        i11 = mGlobalEnableRefresh;
                        break;
                    case 7:
                        i11 = mGlobalEnableDNSLog;
                        break;
                    case 8:
                    case 9:
                    default:
                        i11 = Integer.MIN_VALUE;
                        break;
                    case 10:
                        i11 = mGlobalForceExpiredTime;
                        break;
                    case 11:
                        i11 = mGloabalDisableParallelForExpiredCache;
                        break;
                    case 12:
                        i11 = mGlobalBackUpDelayedTimeForExpiredCache;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        AVMDLLog.d(TAG, String.format(locale, "****get value:%d for key:%d", Integer.valueOf(i11), Integer.valueOf(i10)));
        return i11;
    }

    public static AVMDLNetClient getNetClient() {
        AVMDLNetClient aVMDLNetClient;
        synchronized (AVMDLDNSParser.class) {
            try {
                AVMDLNetClientMaker aVMDLNetClientMaker = mNetClientMaker;
                if (aVMDLNetClientMaker != null) {
                    aVMDLNetClient = aVMDLNetClientMaker.getNetClient();
                } else {
                    aVMDLNetClient = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (aVMDLNetClient == null) {
            return new AVMDLHTTPNetwork();
        }
        return aVMDLNetClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proccessFailMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo != null && aVMDLDNSInfo.mHost != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc fail msg what:%d host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost));
            this.mLock.lock();
            try {
                AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
                AVMDLLog.d(TAG, String.format(locale, "get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost));
                if (aVMDLHostProcessor != null && aVMDLHostProcessor.isValidSourceId(aVMDLDNSInfo.mId)) {
                    aVMDLHostProcessor.processResult(i10, aVMDLDNSInfo);
                    if (aVMDLHostProcessor.isEnd()) {
                        AVMDLLog.d(TAG, String.format(locale, "processor end, notify result", new Object[0]));
                        for (AVMDLDNSParserListener aVMDLDNSParserListener : aVMDLHostProcessor.mListeners.keySet()) {
                            if (aVMDLDNSParserListener != null) {
                                AVMDLLog.d(TAG, String.format(Locale.US, "listener:%s oncompletion fail", aVMDLDNSParserListener));
                                aVMDLDNSParserListener.onCompletion(0, aVMDLDNSInfo.mHost, null, 0L, null, aVMDLDNSInfo.mType);
                            }
                        }
                        aVMDLHostProcessor.mListeners.clear();
                        this.mProcessors.remove(aVMDLDNSInfo.mHost);
                    } else {
                        AVMDLLog.d(TAG, String.format(locale, "processor is not end", new Object[0]));
                    }
                }
                this.mLock.unlock();
                AVMDLLog.d(TAG, String.format(Locale.US, "****end proc fail msg what", new Object[0]));
                return;
            } catch (Throwable th2) {
                this.mLock.unlock();
                throw th2;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "proc fail msg  fail, info or host is null", new Object[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proccessPreParseMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        long j10;
        if (mGlobalEnableRefresh <= 0) {
            AVMDLLog.d(TAG, "not support preparse");
        } else if (aVMDLDNSInfo != null && aVMDLDNSInfo.mHost != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc pre parse msg what:%d host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost));
            AVMDLDNSInfo aVMDLDNSInfo2 = IPCache.getInstance().get(aVMDLDNSInfo.mHost);
            long currentTimeMillis = System.currentTimeMillis();
            if (aVMDLDNSInfo2 == null) {
                j10 = -1;
            } else {
                j10 = aVMDLDNSInfo2.mExpiredTime;
            }
            AVMDLLog.d(TAG, String.format(locale, "cache:%s expiredT:%d", aVMDLDNSInfo2, Long.valueOf(j10)));
            if (aVMDLDNSInfo2 == null || aVMDLDNSInfo2.mExpiredTime < currentTimeMillis) {
                AVMDLLog.d(TAG, "add host for preparse");
                addListenerInternal(aVMDLDNSInfo.mHost, null, aVMDLDNSInfo.mType);
            }
            AVMDLLog.d(TAG, "****proc pre parse msg what:%d host:%s");
        } else {
            AVMDLLog.d(TAG, String.format(Locale.US, "proc pre msg  fail, info or host is null", new Object[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void proccessSucMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        HashMap<AVMDLDNSParserListener, Integer> hashMap;
        if (aVMDLDNSInfo != null && aVMDLDNSInfo.mHost != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc suc msg what:%d host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost));
            this.mLock.lock();
            try {
                AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
                AVMDLLog.d(TAG, String.format(locale, "get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost));
                if (aVMDLHostProcessor != null && (hashMap = aVMDLHostProcessor.mListeners) != null) {
                    for (AVMDLDNSParserListener aVMDLDNSParserListener : hashMap.keySet()) {
                        if (aVMDLDNSParserListener != null) {
                            AVMDLLog.d(TAG, String.format(Locale.US, "listener:%s oncompletion suc", aVMDLDNSParserListener));
                            aVMDLDNSParserListener.onCompletion(0, aVMDLDNSInfo.mHost, aVMDLDNSInfo.mIpList, aVMDLDNSInfo.mExpiredTime, null, aVMDLDNSInfo.mType);
                        }
                    }
                    aVMDLHostProcessor.mListeners.clear();
                    this.mProcessors.remove(aVMDLDNSInfo.mHost);
                    AVMDLLog.d(TAG, String.format(Locale.US, "remove all listeners and remove host", new Object[0]));
                }
                sendPreParseMsg(aVMDLDNSInfo.mHost, aVMDLDNSInfo.mExpiredTime - System.currentTimeMillis());
                reportLog(aVMDLDNSInfo);
                this.mLock.unlock();
                AVMDLLog.d(TAG, String.format(Locale.US, "****end proc suc msg", new Object[0]));
                return;
            } catch (Throwable th2) {
                this.mLock.unlock();
                throw th2;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "proc suc msg  fail, info or host is null", new Object[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void processBackupParseMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo != null && aVMDLDNSInfo.mHost != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc parser msg what:%d host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost));
            this.mLock.lock();
            try {
                AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(aVMDLDNSInfo.mHost);
                if (aVMDLHostProcessor != null) {
                    AVMDLLog.d(TAG, String.format(locale, "----get processor:%s host:%s", aVMDLHostProcessor, aVMDLDNSInfo.mHost));
                    aVMDLHostProcessor.processMsg(i10, aVMDLDNSInfo);
                } else {
                    AVMDLLog.d(TAG, String.format(locale, "****get processor null for host:%s", aVMDLDNSInfo.mHost));
                }
                this.mLock.unlock();
                AVMDLLog.d(TAG, String.format(locale, "****end proc parser msg", new Object[0]));
                return;
            } catch (Throwable th2) {
                this.mLock.unlock();
                throw th2;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "proc parser msg  fail, info or host is null", new Object[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void processBatchParseMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        String[] strArr;
        if (aVMDLDNSInfo != null && (strArr = aVMDLDNSInfo.mHosts) != null && strArr.length != 0) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc batch parse msg what:%d", Integer.valueOf(i10)));
            if (mGlobalEnableParallel <= 0 && mGlobalMainType != 2) {
                new LocalDNSHosts(aVMDLDNSInfo.mHosts, this.mHandler).start();
                AVMDLLog.d(TAG, String.format(locale, "****end proc batch parser msg", new Object[0]));
                return;
            }
            try {
                new HTTPDNSHosts(aVMDLDNSInfo.mHosts, null, 2, this.mHandler).start();
                return;
            } catch (Exception e10) {
                Locale locale2 = Locale.US;
                AVMDLLog.d(TAG, String.format(locale2, "parse end create httpdnshosts fail" + e10, new Object[0]));
                return;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "proc parser msg  fail, info or host is null", new Object[0]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CI_DefaultLocale"})
    public void processDNSTypeChangedParseMsg(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo != null && aVMDLDNSInfo.mHost != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "----proc dnstype change parse msg what:%d host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mHost));
            this.mLock.lock();
            try {
                getInstance().addHost(aVMDLDNSInfo.mHost, null, aVMDLDNSInfo.mType);
                this.mLock.unlock();
                AVMDLLog.d(TAG, String.format(locale, "****end proc main parse msg", new Object[0]));
                return;
            } catch (Throwable th2) {
                this.mLock.unlock();
                throw th2;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "proc main parse msg  fail, info or host is null", new Object[0]));
    }

    public static void processHijack() {
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----process hijack old dnsmain:%d back:%d", Integer.valueOf(mGlobalMainType), Integer.valueOf(mGlobalBackType)));
        int i10 = mGlobalMainType;
        if (i10 == 0) {
            mGlobalMainType = mGlobalBackType;
            mGlobalBackType = i10;
        }
        AVMDLLog.d(TAG, String.format(locale, "****process hijack new dnsmain:%d back:%d", Integer.valueOf(mGlobalMainType), Integer.valueOf(mGlobalBackType)));
    }

    private void removeListenerInternal(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        if (!TextUtils.isEmpty(str) && aVMDLDNSParserListener != null) {
            Locale locale = Locale.US;
            AVMDLLog.d(TAG, String.format(locale, "---remove listener:%s for host:%s", aVMDLDNSParserListener, str));
            this.mLock.lock();
            try {
                AVMDLHostProcessor aVMDLHostProcessor = this.mProcessors.get(str);
                AVMDLLog.d(TAG, String.format(locale, "get processor:%s", aVMDLHostProcessor));
                if (aVMDLHostProcessor != null) {
                    AVMDLLog.d(TAG, String.format(locale, "remove listener", new Object[0]));
                    aVMDLHostProcessor.mListeners.remove(aVMDLDNSParserListener);
                }
                if (aVMDLHostProcessor != null && aVMDLHostProcessor.mListeners.size() == 0) {
                    AVMDLLog.d(TAG, String.format(locale, "listeners empty for processors", new Object[0]));
                }
                this.mLock.unlock();
                AVMDLLog.d(TAG, String.format(locale, "****end remove listener", new Object[0]));
            } catch (Throwable th2) {
                this.mLock.unlock();
                throw th2;
            }
        }
    }

    private void reportLog(AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo != null && !TextUtils.isEmpty(aVMDLDNSInfo.mIpList) && mGlobalEnableDNSLog > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("log_type", "mdl_dns_log");
                jSONObject.put("dns_type", aVMDLDNSInfo.mType);
                jSONObject.put("ip_list", aVMDLDNSInfo.mIpList);
                AVMDLDataLoader.getInstance().onLogInfo(15, 0, jSONObject.toString());
            } catch (Exception unused) {
            }
        }
    }

    private void sendBatchParseMsg(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(mGlobalMainType, strArr, (String) null, 0L, (String) null);
            Message message = new Message();
            message.what = 7;
            message.obj = aVMDLDNSInfo;
            AVMDLLog.d(TAG, String.format(Locale.US, "send msg for batch parse", new Object[0]));
            this.mHandler.sendMessage(message);
            return;
        }
        AVMDLLog.d(TAG, "hosts null not need do batch parse");
    }

    private void sendPreParseMsg(String str, long j10) {
        if (!TextUtils.isEmpty(str) && j10 > 0) {
            if (mGlobalEnableRefresh > 0) {
                AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(mGlobalMainType, str, (String) null, 0L, (String) null);
                Message message = new Message();
                message.what = 4;
                message.obj = aVMDLDNSInfo;
                long j11 = j10 + 3000;
                AVMDLLog.d(TAG, String.format(Locale.US, "send preparse for host:%s delayTime:%d", aVMDLDNSInfo.mHost, Long.valueOf(j11)));
                this.mHandler.sendMessageDelayed(message, j11);
                return;
            }
            return;
        }
        AVMDLLog.d(TAG, "host is null or delayTimeMs invalid,not support preparse");
    }

    public static void setClientMaker(AVMDLNetClientMaker aVMDLNetClientMaker) {
        synchronized (AVMDLDNSParser.class) {
            if (aVMDLNetClientMaker != null) {
                try {
                    mNetClientMaker = aVMDLNetClientMaker;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static void setCustomHttpDNSParser(AVMDLCustomHTTPDNSParser aVMDLCustomHTTPDNSParser) {
        int i10;
        synchronized (AVMDLDNSParser.class) {
            try {
                Locale locale = Locale.US;
                if (aVMDLCustomHTTPDNSParser == null) {
                    i10 = 0;
                } else {
                    i10 = 1;
                }
                AVMDLLog.d(TAG, String.format(locale, "set custom http dns parser:%d", Integer.valueOf(i10)));
                if (aVMDLCustomHTTPDNSParser != null) {
                    mCustomHttpDNSParser = aVMDLCustomHTTPDNSParser;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static void setIntValue(int i10, int i11) {
        AVMDLLog.d(TAG, String.format(Locale.US, "****set value:%d for key:%d", Integer.valueOf(i11), Integer.valueOf(i10)));
        synchronized (AVMDLDNSParser.class) {
            try {
                switch (i10) {
                    case 0:
                        mGlobalMainType = i11;
                        break;
                    case 1:
                        mGlobalBackType = i11;
                        break;
                    case 2:
                        mGlobalDefaultExpiredTime = i11;
                        break;
                    case 3:
                        mGlobalBackUpDelayedTime = i11;
                        break;
                    case 4:
                        mGlobalEnableParallel = i11;
                        break;
                    case 5:
                        mGlobalEnableBackUpIp = i11;
                        break;
                    case 6:
                        mGlobalEnableRefresh = i11;
                        break;
                    case 7:
                        mGlobalEnableDNSLog = i11;
                        break;
                    case 10:
                        mGlobalForceExpiredTime = i11;
                        break;
                    case 11:
                        mGloabalDisableParallelForExpiredCache = i11;
                        break;
                    case 12:
                        mGlobalBackUpDelayedTimeForExpiredCache = i11;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void setStringValue(int i10, String str) {
        AVMDLLog.d(TAG, String.format(Locale.US, "****set value:%s for key:%d", str, Integer.valueOf(i10)));
        synchronized (AVMDLDNSParser.class) {
            try {
                if (i10 != 8) {
                    if (i10 == 9 && !TextUtils.isEmpty(str)) {
                        mGlobalGoogleDNSParseHost = str;
                    }
                } else if (!TextUtils.isEmpty(str)) {
                    mGlobalOwnDNSParseHost = str;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void updateDNSInfo(String str, String str2, long j10) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(10, str, str2, (j10 + mGlobalDefaultExpiredTime) * 1000, (String) null);
            AVMDLLog.d(TAG, "server iplist, host = " + str + " type = 10 iplist = " + str2);
            IPCache.getInstance().put(str, aVMDLDNSInfo);
            return;
        }
        AVMDLLog.d(TAG, "ip direct info invalid");
    }

    public void addHost(String str, AVMDLDNSParserListener aVMDLDNSParserListener, int i10) {
        addListenerInternal(str, aVMDLDNSParserListener, i10);
    }

    public void doParseHosts(String[] strArr) {
        if (strArr != null && strArr.length != 0) {
            int length = strArr.length;
            for (int i10 = 0; i10 < strArr.length; i10++) {
                if (!TextUtils.isEmpty(strArr[i10])) {
                    if (IPCache.getInstance().get(strArr[i10]) != null) {
                        AVMDLLog.d(TAG, String.format(Locale.US, "for host:%s has dns info not need do batch parse", strArr[i10]));
                        strArr[i10] = null;
                        length--;
                    } else {
                        this.mLock.lock();
                        try {
                            if (this.mProcessors.get(strArr[i10]) != null) {
                                AVMDLLog.d(TAG, String.format(Locale.US, "for host:%s has processor not need do batch parse", strArr[i10]));
                                strArr[i10] = null;
                                length--;
                            }
                        } finally {
                            this.mLock.unlock();
                        }
                    }
                }
            }
            if (length == 0) {
                AVMDLLog.d(TAG, "has no hosts need do batch parse");
                return;
            } else {
                sendBatchParseMsg(strArr);
                return;
            }
        }
        AVMDLLog.d(TAG, "hosts is null, not need do batch host parse");
    }

    public void postDNSInfoRefreshMsg(String str, int i10) {
        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(i10, str, (String) null, 0L, (String) null);
        Message message = new Message();
        message.what = 8;
        message.obj = aVMDLDNSInfo;
        this.mHandler.sendMessage(message);
    }

    public void postParseHostMsg(String str, int i10) {
        AVMDLDNSInfo aVMDLDNSInfo = new AVMDLDNSInfo(i10, str, (String) null, 0L, (String) null);
        Message message = new Message();
        message.what = 5;
        message.obj = aVMDLDNSInfo;
        this.mHandler.sendMessage(message);
    }

    public void removeHost(String str, AVMDLDNSParserListener aVMDLDNSParserListener) {
        removeListenerInternal(str, aVMDLDNSParserListener);
    }

    public void setBackUpIP(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            IPCache.getInstance().putBackUpIp(str, new AVMDLDNSInfo(11, str, str2, 0L, (String) null));
        }
    }

    public void release() {
    }
}
