package com.ss.ttvideoengine.utils;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ss.ttvideoengine.net.NetUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes6.dex */
public class TimeService {
    private static final int ERROR_COUNT = 6;
    private static final String TAG = "TimeService";
    private static final int TIMESERVICE_STATE_NOT_UPDATE = 0;
    private static final int TIMESERVICE_STATE_UPDATED = 2;
    private static final int TIMESERVICE_STATE_UPDATING = 1;
    private static String mNtpServer;
    private static TimeInfo mTimeInfo = new TimeInfo();
    private static int mState = 0;
    private static boolean mForceUseLocalTime = true;
    private static int mErrorCount = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class TimeInfo {
        private long mNtpTime = -1;
        private long mLocalTime = -1;

        TimeInfo() {
        }

        public boolean isUpdated() {
            if (this.mNtpTime > 0) {
                return true;
            }
            return false;
        }
    }

    static /* synthetic */ int access$508() {
        int i10 = mErrorCount;
        mErrorCount = i10 + 1;
        return i10;
    }

    public static long currentTimeMillis() {
        if (!mForceUseLocalTime) {
            synchronized (TimeService.class) {
                try {
                    TimeInfo timeInfo = mTimeInfo;
                    if (timeInfo != null && timeInfo.isUpdated()) {
                        return (mTimeInfo.mNtpTime + SystemClock.elapsedRealtime()) - mTimeInfo.mLocalTime;
                    }
                } finally {
                }
            }
        }
        return System.currentTimeMillis();
    }

    public static boolean isUpdated() {
        synchronized (TimeService.class) {
            try {
                TimeInfo timeInfo = mTimeInfo;
                if (timeInfo != null) {
                    return timeInfo.isUpdated();
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String longToStringWithFormat(long j10, String str) {
        try {
            return new SimpleDateFormat(str).format(new Date(j10));
        } catch (Exception unused) {
            return "";
        }
    }

    public static void setForceUseLocalTime(boolean z10, String str) {
        TTVideoEngineLog.d(TAG, "force use localtime:" + z10);
        mForceUseLocalTime = z10;
        mNtpServer = str;
    }

    public static void updateTimeFromNTP(final Context context) {
        if (!mForceUseLocalTime && !TextUtils.isEmpty(mNtpServer)) {
            synchronized (TimeService.class) {
                try {
                    TimeInfo timeInfo = mTimeInfo;
                    if (timeInfo != null && timeInfo.isUpdated()) {
                        return;
                    }
                    if (context != null && !NetUtils.isNetAvailable(context)) {
                        TTVideoEngineLog.d(TAG, "network unavailable");
                    } else if (mState == 0) {
                        mState = 1;
                        if (mErrorCount > 6) {
                            return;
                        }
                        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.utils.TimeService.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SntpClient sntpClient = new SntpClient();
                                boolean requestTime = sntpClient.requestTime(TimeService.mNtpServer, 10000);
                                synchronized (TimeService.class) {
                                    try {
                                        if (requestTime) {
                                            if (TimeService.mTimeInfo != null) {
                                                TimeService.mTimeInfo.mNtpTime = sntpClient.getNtpTime();
                                                TimeService.mTimeInfo.mLocalTime = sntpClient.getNtpTimeReference();
                                                int unused = TimeService.mState = 2;
                                                TTVideoEngineLog.d(TimeService.TAG, "NTP updated time:" + TimeService.longToStringWithFormat((TimeService.mTimeInfo.mNtpTime + SystemClock.elapsedRealtime()) - TimeService.mTimeInfo.mLocalTime, "yyyy-MM-dd HH:mm:ss.SSS"));
                                            }
                                        } else {
                                            Context context2 = context;
                                            if (context2 != null && NetUtils.isNetAvailable(context2)) {
                                                TimeService.access$508();
                                            }
                                            TTVideoEngineLog.d(TimeService.TAG, "NTP update fail,error count:" + TimeService.mErrorCount);
                                            int unused2 = TimeService.mState = 0;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
