package com.ss.mediakit.net;

import com.ss.mediakit.medialoader.AVMDLLog;
import java.util.Locale;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes6.dex */
public class AVMDLDNSParserBridge implements AVMDLDNSParserListener {
    private static final String TAG = "AVMDLDNSParserBridge";
    private static boolean v2Usable = true;
    public String host;
    String ipList = null;
    boolean isFinish = false;
    private Lock lock = new ReentrantLock();
    private long handle = 0;

    private static native void _notifyParserResult(long j10, String str, String str2, long j11, String str3);

    private static native void _notifyParserResultV2(long j10, String str, String str2, long j11, String str3, int i10);

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7 A[Catch: all -> 0x008b, UnsatisfiedLinkError -> 0x00e4, TryCatch #0 {UnsatisfiedLinkError -> 0x00e4, blocks: (B:23:0x009f, B:25:0x00a7, B:27:0x00d5, B:30:0x00e8), top: B:46:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parserResult(long r18, java.lang.String r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.net.AVMDLDNSParserBridge.parserResult(long, java.lang.String, int, int):int");
    }

    public String getBackUp(String str) {
        String str2;
        AVMDLDNSInfo backUpIp;
        if (AVMDLDNSParser.getIntValue(5) == 1 && (backUpIp = IPCache.getInstance().getBackUpIp(str)) != null) {
            str2 = backUpIp.mIpList;
        } else {
            str2 = null;
        }
        AVMDLLog.d(TAG, "****get backup ip result:" + str2);
        return str2;
    }

    public String getResult() {
        this.lock.lock();
        try {
            String str = this.ipList;
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

    @Override // com.ss.mediakit.net.AVMDLDNSParserListener
    public void onCompletion(int i10, String str, String str2, long j10, String str3, int i11) {
        if (!this.isFinish && v2Usable) {
            parserResult(i10, str, str2, j10, str3, i11, 2);
        }
        if (!this.isFinish) {
            parserResult(i10, str, str2, j10, str3, i11, 1);
        }
    }

    public void release() {
        Locale locale = Locale.US;
        AVMDLLog.d(TAG, String.format(locale, "----start release:%s", this));
        this.lock.lock();
        try {
            this.handle = 0L;
            this.lock.unlock();
            AVMDLLog.d(TAG, String.format(locale, "remove host:%s", this.host));
            AVMDLDNSParser.getInstance().removeHost(this.host, this);
            AVMDLLog.d(TAG, String.format(locale, "****end call release:%s", this));
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public int start(long j10, String str) {
        int parserResult = v2Usable ? parserResult(j10, str, 2, -1) : 0;
        return parserResult <= 0 ? parserResult(j10, str, 1, -1) : parserResult;
    }

    public void triggerRefresh(long j10, String str, int i10) {
        AVMDLDNSParser.getInstance().postDNSInfoRefreshMsg(str, i10);
    }

    public int start(long j10, String str, int i10) {
        int parserResult = v2Usable ? parserResult(j10, str, 2, i10) : 0;
        return parserResult <= 0 ? parserResult(j10, str, 1, i10) : parserResult;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parserResult(int r17, java.lang.String r18, java.lang.String r19, long r20, java.lang.String r22, int r23, int r24) {
        /*
            r16 = this;
            r1 = r16
            java.lang.String r2 = "AVMDLDNSParserBridge"
            java.util.concurrent.locks.Lock r0 = r1.lock
            r0.lock()
            r3 = 0
            boolean r0 = r1.isFinish     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            if (r0 != 0) goto L9b
            java.util.Locale r0 = java.util.Locale.US     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r4 = "receive completion code:%d result:%s type:%d"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r17)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            boolean r6 = android.text.TextUtils.isEmpty(r19)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            if (r6 == 0) goto L25
            java.lang.String r6 = "null"
            goto L27
        L1f:
            r0 = move-exception
            goto Lcb
        L22:
            r0 = move-exception
            goto Lba
        L25:
            r6 = r19
        L27:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r23)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6, r7}     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r4 = java.lang.String.format(r0, r4, r5)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r4)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            boolean r4 = android.text.TextUtils.isEmpty(r19)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r5 = 0
            r7 = 1
            if (r4 == 0) goto L70
            r4 = 5
            int r4 = com.ss.mediakit.net.AVMDLDNSParser.getIntValue(r4)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            if (r4 != r7) goto L70
            java.lang.String r4 = "pare result is null, try get backupip"
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r4)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            com.ss.mediakit.net.IPCache r4 = com.ss.mediakit.net.IPCache.getInstance()     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r10 = r18
            com.ss.mediakit.net.AVMDLDNSInfo r4 = r4.getBackUpIp(r10)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            if (r4 == 0) goto L72
            java.lang.String r8 = r4.mIpList     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            int r4 = r4.mType     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r9 = "get backup ip, result:%s type:%d"
            java.lang.Integer r11 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.Object[] r11 = new java.lang.Object[]{r8, r11}     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r0 = java.lang.String.format(r0, r9, r11)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r0)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r15 = r4
            r12 = r5
            r11 = r8
            goto L78
        L70:
            r10 = r18
        L72:
            r11 = r19
            r12 = r20
            r15 = r23
        L78:
            r1.ipList = r11     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r1.isFinish = r7     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            long r8 = r1.handle     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            int r0 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r0 == 0) goto Lb4
            r0 = 2
            r4 = r24
            if (r4 != r0) goto L91
            com.ss.mediakit.net.AVMDLDNSParserBridge.v2Usable = r7     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r10 = r18
            r14 = r22
            _notifyParserResultV2(r8, r10, r11, r12, r14, r15)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            goto Lb4
        L91:
            com.ss.mediakit.net.AVMDLDNSParserBridge.v2Usable = r3     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r10 = r18
            r14 = r22
            _notifyParserResult(r8, r10, r11, r12, r14)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            goto Lb4
        L9b:
            java.util.Locale r0 = java.util.Locale.US     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r4 = "has finished not nedd cur completion code:%d result:%s expiredTime:%d"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r17)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.Long r6 = java.lang.Long.valueOf(r20)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            r7 = r19
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r7, r6}     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            java.lang.String r0 = java.lang.String.format(r0, r4, r5)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r0)     // Catch: java.lang.Throwable -> L1f java.lang.UnsatisfiedLinkError -> L22
        Lb4:
            java.util.concurrent.locks.Lock r0 = r1.lock
            r0.unlock()
            goto Lca
        Lba:
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L1f
            com.ss.mediakit.medialoader.AVMDLLog.d(r2, r0)     // Catch: java.lang.Throwable -> L1f
            boolean r0 = com.ss.mediakit.net.AVMDLDNSParserBridge.v2Usable     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto Lc7
            com.ss.mediakit.net.AVMDLDNSParserBridge.v2Usable = r3     // Catch: java.lang.Throwable -> L1f
        Lc7:
            r1.isFinish = r3     // Catch: java.lang.Throwable -> L1f
            goto Lb4
        Lca:
            return
        Lcb:
            java.util.concurrent.locks.Lock r2 = r1.lock
            r2.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.net.AVMDLDNSParserBridge.parserResult(int, java.lang.String, java.lang.String, long, java.lang.String, int, int):void");
    }
}
