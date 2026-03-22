package com.ss.mediakit.net;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class IPCache {
    private static final String TAG = "AVMDLIPCache";
    private static volatile IPCache mInstance = null;
    private static String mNetExtraInfo = null;
    private static int mNetType = -1;
    private ConcurrentHashMap<String, AVMDLDNSInfo> mDNSRecord = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, AVMDLDNSInfo> mBackUps = new ConcurrentHashMap<>();
    private Lock lock = new ReentrantLock();
    private Lock backUplock = new ReentrantLock();

    private IPCache() {
    }

    public static IPCache getInstance() {
        if (mInstance == null) {
            synchronized (IPCache.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new IPCache();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public static void setCurNetExtraInfo(String str) {
        mNetExtraInfo = str;
    }

    public void clear() {
        this.lock.lock();
        try {
            ConcurrentHashMap<String, AVMDLDNSInfo> concurrentHashMap = this.mDNSRecord;
            if (concurrentHashMap != null) {
                concurrentHashMap.clear();
            }
        } finally {
            this.lock.unlock();
        }
    }

    public AVMDLDNSInfo get(String str) {
        AVMDLDNSInfo aVMDLDNSInfo = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.lock.lock();
        try {
            ConcurrentHashMap<String, AVMDLDNSInfo> concurrentHashMap = this.mDNSRecord;
            if (concurrentHashMap != null) {
                aVMDLDNSInfo = concurrentHashMap.get(str);
            }
            if (aVMDLDNSInfo != null && !TextUtils.isEmpty(aVMDLDNSInfo.mIpList) && AVMDLDNSParser.mGlobalEnableBackUpIp > 0) {
                Locale locale = Locale.US;
                AVMDLLog.d(TAG, String.format(locale, "enable backup try get backup ip for:%s", str));
                AVMDLDNSInfo backUpIp = getBackUpIp(str);
                if (backUpIp != null && !TextUtils.isEmpty(backUpIp.mIpList)) {
                    AVMDLLog.d(TAG, String.format(locale, "succ get backup ip:%s", backUpIp.mIpList));
                    aVMDLDNSInfo.mIpList += "," + backUpIp.mIpList;
                }
            }
            this.lock.unlock();
            return aVMDLDNSInfo;
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public AVMDLDNSInfo getBackUpIp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.backUplock.lock();
        try {
            return this.mBackUps.get(str);
        } finally {
            this.backUplock.unlock();
        }
    }

    public String getCurNetExtraInfo() {
        return mNetExtraInfo;
    }

    public int getCurNetType() {
        return mNetType;
    }

    public int getRecordSize() {
        int i10;
        this.lock.lock();
        try {
            ConcurrentHashMap<String, AVMDLDNSInfo> concurrentHashMap = this.mDNSRecord;
            if (concurrentHashMap != null) {
                i10 = concurrentHashMap.size();
            } else {
                i10 = -1;
            }
            return i10;
        } finally {
            this.lock.unlock();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public void put(String str, AVMDLDNSInfo aVMDLDNSInfo) {
        int i10;
        if (aVMDLDNSInfo != null && !TextUtils.isEmpty(str)) {
            this.lock.lock();
            try {
                ConcurrentHashMap<String, AVMDLDNSInfo> concurrentHashMap = this.mDNSRecord;
                if (concurrentHashMap != null) {
                    AVMDLDNSInfo aVMDLDNSInfo2 = concurrentHashMap.get(str);
                    if (AVMDLDNSParser.mGlobalEnableParallel > 0 && aVMDLDNSInfo2 != null && (i10 = aVMDLDNSInfo.mType) == 0 && aVMDLDNSInfo2.mType > i10 && aVMDLDNSInfo2.mExpiredTime > System.currentTimeMillis()) {
                        AVMDLLog.d(TAG, String.format(Locale.US, "put for host:%s enable parallel info.type:%d info.expiredT:%d cache.type:%d cache.expiredT:%d curT:%d info can not replace cache", str, Integer.valueOf(aVMDLDNSInfo.mType), Long.valueOf(aVMDLDNSInfo.mExpiredTime), Integer.valueOf(aVMDLDNSInfo2.mType), Long.valueOf(aVMDLDNSInfo2.mExpiredTime), Long.valueOf(System.currentTimeMillis())));
                        return;
                    } else {
                        AVMDLLog.d(TAG, String.format(Locale.US, "put for host:%s type:%d ip:%s", aVMDLDNSInfo.mHost, Integer.valueOf(aVMDLDNSInfo.mType), aVMDLDNSInfo.mIpList));
                        this.mDNSRecord.put(str, aVMDLDNSInfo);
                    }
                }
                this.lock.unlock();
                AVMDLLog.d(TAG, "update dns info to native");
                AVMDLDataLoader.getInstance().updateDNSInfo(str, aVMDLDNSInfo.mIpList, aVMDLDNSInfo.mExpiredTime, null, aVMDLDNSInfo.mType);
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void putBackUpIp(String str, AVMDLDNSInfo aVMDLDNSInfo) {
        if (aVMDLDNSInfo != null && !TextUtils.isEmpty(str)) {
            this.backUplock.lock();
            try {
                AVMDLLog.d(TAG, String.format(Locale.US, "put backupip for host:%s type:%d ip:%s", aVMDLDNSInfo.mHost, Integer.valueOf(aVMDLDNSInfo.mType), aVMDLDNSInfo.mIpList));
                this.mBackUps.put(str, aVMDLDNSInfo);
            } finally {
                this.backUplock.unlock();
            }
        }
    }

    public void setCurNetType(int i10) {
        mNetType = i10;
    }
}
