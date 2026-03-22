package com.ss.mediakit.net;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes6.dex */
public class AVMDLHostProcessor {
    private static final int BACKUP_DNS = 1;
    private static final int MAIN_DNS = 0;
    public static final int STATE_IS_IDLE = 0;
    public static final int STATE_IS_PARSE_END_ERROR = 2;
    public static final int STATE_IS_PARSE_END_SUC = 3;
    public static final int STATE_IS_WAIT_RESULT = 1;
    private static final String TAG = "AVMDLHostProcessor";
    private int mBackUpDelayedTime;
    private int mBackUpDelayedTimeForExpiredCache;
    private int mBackUpType;
    private int mEnableParallel;
    private Handler mHandler;
    public String mHost;
    public HashMap<AVMDLDNSParserListener, Integer> mListeners;
    private int mMainType;
    private BaseDNS[] mParsers;
    private int[] mStates;

    public AVMDLHostProcessor(String str, Handler handler, int i10, int i11, int i12, int i13) {
        this.mMainType = i10;
        this.mBackUpType = i11;
        this.mHandler = handler;
        this.mHost = str;
        this.mBackUpDelayedTime = i12;
        this.mEnableParallel = i13;
        this.mStates = new int[2];
        this.mParsers = new BaseDNS[2];
        for (int i14 = 0; i14 < 2; i14++) {
            this.mParsers[i14] = null;
        }
        for (int i15 = 0; i15 < 2; i15++) {
            this.mStates[i15] = 0;
        }
        this.mListeners = new HashMap<>();
    }

    @SuppressLint({"CI_DefaultLocale"})
    private BaseDNS createDNSParser(String str, int i10, int i11) {
        CreateConstructor createConstructor;
        try {
            createConstructor = AVMDLDNSManager.getInstance().getCreateConstructor(i10);
        } catch (Exception e10) {
            e10.printStackTrace();
            createConstructor = null;
        }
        if (createConstructor != null) {
            return createConstructor.createDns(str, null, i10, this.mHandler);
        }
        if (i10 == 4 && AVMDLDNSParser.mCustomHttpDNSParser != null) {
            AVMDLLog.d(TAG, String.format(Locale.US, "create custom httpdns parser for host:%s type:%d", str, Integer.valueOf(i10)));
            return new CustomHTTPDNS(str, this.mHandler);
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "create local dns parser for host:%s type:%d", str, Integer.valueOf(i10)));
        return new LocalDNS(str, this.mHandler);
    }

    private void doParseInternal(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----do parse internal what:%d info:%s", Integer.valueOf(i10), aVMDLDNSInfo));
        if (aVMDLDNSInfo == null) {
            return;
        }
        if ((i10 == 5 || i10 == 9) && this.mParsers[0] == null) {
            AVMDLLog.d(TAG, String.format(locale, "create main dns type:%d host:%s", Integer.valueOf(this.mMainType), aVMDLDNSInfo.mHost));
            this.mStates[0] = 1;
            this.mParsers[0] = createDNSParser(aVMDLDNSInfo.mHost, this.mMainType, 0);
            this.mParsers[0].start();
            if (AVMDLDNSParser.mGloabalDisableParallelForExpiredCache > 0) {
                if (i10 == 9) {
                    Message message = new Message();
                    message.what = 6;
                    message.obj = aVMDLDNSInfo;
                    int i11 = this.mBackUpDelayedTimeForExpiredCache;
                    if (i11 > 0) {
                        AVMDLLog.d(TAG, String.format(locale, "mBackUpDelayedTimeForExpiredCache:%d send backup delay first", Integer.valueOf(i11)));
                        this.mHandler.sendMessageDelayed(message, this.mBackUpDelayedTimeForExpiredCache * 1000);
                    }
                } else {
                    Message message2 = new Message();
                    message2.what = 6;
                    message2.obj = aVMDLDNSInfo;
                    int i12 = this.mBackUpDelayedTime;
                    if (i12 > 0 || this.mEnableParallel > 0) {
                        AVMDLLog.d(TAG, String.format(locale, "BackUpDelayedTime:%d enableparallel:%d send backup delay first", Integer.valueOf(i12), Integer.valueOf(this.mEnableParallel)));
                        this.mHandler.sendMessageDelayed(message2, this.mBackUpDelayedTime * 1000);
                    }
                }
            } else {
                Message message3 = new Message();
                message3.what = 6;
                message3.obj = aVMDLDNSInfo;
                int i13 = this.mBackUpDelayedTime;
                if (i13 > 0 || this.mEnableParallel > 0) {
                    AVMDLLog.d(TAG, String.format(locale, "BackUpDelayedTime:%d enableparallel:%d send backup delay first", Integer.valueOf(i13), Integer.valueOf(this.mEnableParallel)));
                    this.mHandler.sendMessageDelayed(message3, this.mBackUpDelayedTime * 1000);
                }
            }
        } else if (i10 == 6 && this.mParsers[1] == null) {
            AVMDLLog.d(TAG, String.format(locale, "create backup dns type:%d host:%s", Integer.valueOf(this.mBackUpType), aVMDLDNSInfo.mHost));
            this.mStates[1] = 1;
            this.mParsers[1] = createDNSParser(aVMDLDNSInfo.mHost, this.mBackUpType, 1);
            this.mParsers[1].start();
        }
        AVMDLLog.d(TAG, String.format(locale, "****do parse internal end", new Object[0]));
    }

    public boolean isEnd() {
        int i10;
        for (int i11 = 0; i11 < 2; i11++) {
            if (this.mParsers[i11] != null && (i10 = this.mStates[i11]) != 3 && i10 != 2) {
                return false;
            }
        }
        AVMDLLog.d(TAG, "all dns parse is end");
        return true;
    }

    public boolean isValidSourceId(String str) {
        if (TextUtils.isEmpty(str)) {
            AVMDLLog.d(TAG, String.format(Locale.US, "id: %s is empty", str));
            return false;
        }
        for (int i10 = 0; i10 < 2; i10++) {
            BaseDNS baseDNS = this.mParsers[i10];
            if (baseDNS != null && str.equals(baseDNS.mId)) {
                AVMDLLog.d(TAG, String.format(Locale.US, "id: %s is valid index: %d", str, Integer.valueOf(i10)));
                return true;
            }
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "id: %s is valid", str));
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if (r8 != 9) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void processMsg(int r8, com.ss.mediakit.net.AVMDLDNSInfo r9) {
        /*
            r7 = this;
            java.util.Locale r0 = java.util.Locale.US
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)
            java.lang.String r2 = r9.mHost
            java.lang.Object[] r1 = new java.lang.Object[]{r1, r2, r9}
            java.lang.String r2 = "----processor pro msg what:%d host:%s info:%s"
            java.lang.String r1 = java.lang.String.format(r0, r2, r1)
            java.lang.String r2 = "AVMDLHostProcessor"
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r1)
            r1 = 5
            r3 = 0
            if (r8 == r1) goto L47
            r1 = 6
            if (r8 == r1) goto L23
            r1 = 9
            if (r8 == r1) goto L47
            goto L5b
        L23:
            int[] r1 = r7.mStates
            r4 = r1[r3]
            r5 = 1
            if (r4 == r5) goto L34
            r6 = 2
            if (r4 == r6) goto L34
            r6 = 3
            if (r4 == r6) goto L34
            int r4 = r7.mEnableParallel
            if (r4 <= 0) goto L5b
        L34:
            r1 = r1[r5]
            if (r1 != 0) goto L5b
            java.lang.String r1 = "main dns is not end or enable parrallel and backup dns is idle call backup dns"
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r1 = java.lang.String.format(r0, r1, r3)
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r1)
            r7.doParseInternal(r8, r9)
            goto L5b
        L47:
            int[] r1 = r7.mStates
            r1 = r1[r3]
            if (r1 != 0) goto L5b
            java.lang.String r1 = "main dns is idle call main dns"
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r1 = java.lang.String.format(r0, r1, r3)
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r1)
            r7.doParseInternal(r8, r9)
        L5b:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.String r1 = r9.mHost
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r1, r9}
            java.lang.String r9 = "****end processor pro msg what:%d host:%s info:%s"
            java.lang.String r8 = java.lang.String.format(r0, r9, r8)
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.net.AVMDLHostProcessor.processMsg(int, com.ss.mediakit.net.AVMDLDNSInfo):void");
    }

    public void processResult(int i10, AVMDLDNSInfo aVMDLDNSInfo) {
        String str;
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----process result what:%d id:%s host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost));
        if (i10 != 2 && i10 != 3) {
            str = null;
        } else {
            str = aVMDLDNSInfo.mId;
        }
        if (TextUtils.isEmpty(str)) {
            AVMDLLog.d(TAG, String.format(locale, "****process result err id is empty", new Object[0]));
            return;
        }
        int i11 = 0;
        while (true) {
            if (i11 >= 2) {
                break;
            }
            BaseDNS baseDNS = this.mParsers[i11];
            if (baseDNS != null && str.equals(baseDNS.mId)) {
                this.mParsers[i11].close();
                this.mParsers[i11] = null;
                if (i10 == 3) {
                    this.mStates[i11] = 3;
                } else if (i10 == 2) {
                    this.mStates[i11] = 2;
                }
                AVMDLLog.d(TAG, String.format(Locale.US, "****process result parser index:%d is end, be close", Integer.valueOf(i11)));
            } else {
                i11++;
            }
        }
        if (i11 == 0 && i10 == 2) {
            AVMDLLog.d(TAG, String.format(Locale.US, "mian dns parse error, try back up dns", new Object[0]));
            processMsg(6, new AVMDLDNSInfo(this.mBackUpType, aVMDLDNSInfo.mHost, (String) null, 0L, (String) null));
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "****end process result what:%d id:%s host:%s", Integer.valueOf(i10), aVMDLDNSInfo.mId, aVMDLDNSInfo.mHost));
    }

    public AVMDLHostProcessor(String str, Handler handler, int i10, int i11, int i12, int i13, int i14) {
        this.mMainType = i10;
        this.mBackUpType = i11;
        this.mHandler = handler;
        this.mHost = str;
        this.mBackUpDelayedTime = i12;
        this.mBackUpDelayedTimeForExpiredCache = i14;
        this.mEnableParallel = i13;
        this.mStates = new int[2];
        this.mParsers = new BaseDNS[2];
        for (int i15 = 0; i15 < 2; i15++) {
            this.mParsers[i15] = null;
        }
        for (int i16 = 0; i16 < 2; i16++) {
            this.mStates[i16] = 0;
        }
        this.mListeners = new HashMap<>();
    }
}
