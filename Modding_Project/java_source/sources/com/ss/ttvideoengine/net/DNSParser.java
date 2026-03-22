package com.ss.ttvideoengine.net;

import android.content.Context;
import android.os.SystemClock;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.net.IPCache;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class DNSParser extends BaseDNS implements DNSCompletionListener {
    public static final String DNS_RESULT_IP = "ip";
    public static final int DNS_TYPE_HTTP_ALI = 1;
    public static final int DNS_TYPE_HTTP_TT = 2;
    public static final int DNS_TYPE_LOCAL = 0;
    private static final String TAG = "DNSParser";
    private boolean hasRecAndExpired;
    private long mClearTime;
    private Context mContext;
    private BaseDNS mCurrentDNS;
    private int mDNSCount;
    private JSONObject mDnsInfo;
    private long mDnsTime;
    private int mExpiredTime;
    private boolean mForceReparse;
    private IPCache mIPCache;
    private boolean mIPFromCache;
    private boolean mIPFromServer;
    private int mIndex;
    private int[] mParserIndex;
    private boolean mUseDNSCache;
    private boolean mUseServerDNS;

    public DNSParser(Context context, String str, TTVNetClient tTVNetClient) {
        super(str, tTVNetClient);
        this.mIndex = 0;
        int[] iArr = {0, 2};
        this.mParserIndex = iArr;
        this.hasRecAndExpired = false;
        this.mForceReparse = false;
        this.mUseDNSCache = false;
        this.mUseServerDNS = false;
        this.mExpiredTime = 120;
        this.mIPFromCache = false;
        this.mIPFromServer = false;
        this.mDnsInfo = null;
        this.mDnsTime = 0L;
        this.mClearTime = 0L;
        this.mContext = context;
        this.mDNSCount = iArr.length;
        int[] dNSType = TTVideoEngine.getDNSType();
        if (dNSType != null && dNSType.length > 0) {
            for (int i10 = 0; i10 < dNSType.length; i10++) {
                int i11 = dNSType[i10];
                if (i11 != 0) {
                    if (i11 != 1) {
                        if (i11 != 2) {
                        }
                    } else {
                        this.mParserIndex[i10] = 2;
                    }
                }
                this.mParserIndex[i10] = i11;
            }
        } else if (TTVideoEngine.isHttpDnsFirst()) {
            int[] iArr2 = this.mParserIndex;
            iArr2[0] = 2;
            iArr2[1] = 0;
        }
        TTVideoEngineLog.i(TAG, "DNSType:" + Arrays.toString(this.mParserIndex));
        this.mIPCache = IPCache.getInstance();
    }

    private void DNSParseAsync() {
        int i10 = this.mParserIndex[this.mIndex];
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.mCurrentDNS = new HTTPDNS(this.mHostname, this.mNetClient, 2);
                }
            } else {
                this.mCurrentDNS = new HTTPDNS(this.mHostname, this.mNetClient, 1);
            }
        } else {
            this.mCurrentDNS = new LocalDNS(this.mHostname);
        }
        BaseDNS baseDNS = this.mCurrentDNS;
        if (baseDNS != null) {
            baseDNS.setCompletionListener(this);
            this.mCurrentDNS.start();
        }
    }

    private void recordIPInfo(JSONObject jSONObject, long j10) {
        if (this.mIPCache != null) {
            IPCache.IpInfo ipInfo = new IPCache.IpInfo();
            ipInfo.ip_json = jSONObject;
            ipInfo.ip_expiretime = SystemClock.elapsedRealtime() + (j10 * 1000);
            this.mIPCache.put(this.mHostname, ipInfo);
        }
    }

    @Override // com.ss.ttvideoengine.net.BaseDNS
    public void cancel() {
        if (this.mCancelled) {
            return;
        }
        this.mCancelled = true;
        BaseDNS baseDNS = this.mCurrentDNS;
        if (baseDNS != null) {
            baseDNS.cancel();
        }
    }

    public boolean getIsUseDNSCache() {
        return this.mUseDNSCache;
    }

    public boolean getIsUseServerDNS() {
        return this.mUseServerDNS;
    }

    public String getTypeStr() {
        if (this.mIPFromCache) {
            return "FromCache";
        }
        if (this.mIPFromServer) {
            return "FromServer";
        }
        int i10 = this.mParserIndex[this.mIndex];
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return "";
                }
                return "TT_HTTP";
            }
            return "HTTP AL";
        }
        return "local";
    }

    @Override // com.ss.ttvideoengine.net.DNSCompletionListener
    public void onCompletion(JSONObject jSONObject, Error error) {
        JSONArray jSONArray;
        if (this.mCancelled) {
            if (!this.hasRecAndExpired || this.mForceReparse) {
                notifyCancelled();
            }
        } else if (error == null) {
            if (jSONObject != null) {
                jSONArray = jSONObject.optJSONArray("ips");
            } else {
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() != 0) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(DNS_RESULT_IP, jSONArray.optString(0));
                } catch (Exception unused) {
                }
                long optLong = jSONObject.optLong("ttl");
                if (optLong == 0) {
                    optLong = this.mExpiredTime;
                }
                recordIPInfo(jSONObject2, optLong);
                if (!this.hasRecAndExpired || this.mForceReparse) {
                    try {
                        jSONObject2.put(CrashHianalyticsData.TIME, jSONObject.optLong(CrashHianalyticsData.TIME));
                        jSONObject2.put("dns_type", jSONObject.optString("dns_type"));
                    } catch (Exception e10) {
                        TTVideoEngineLog.d(TAG, e10.toString());
                    }
                    notifySuccess(jSONObject2);
                    return;
                }
                return;
            }
            if (this.mParserIndex[this.mIndex] == 0) {
                notifyError(new Error(Error.LocalDNS, (int) Error.ResultEmpty, "dns result empty,type:" + this.mParserIndex[this.mIndex]));
            } else {
                notifyError(new Error(Error.HTTPDNS, (int) Error.ResultEmpty, "dns result empty,type:" + this.mParserIndex[this.mIndex]));
            }
            TTVideoEngineLog.d(TAG, "ips empty");
        } else if (this.mIndex == this.mDNSCount - 1) {
            if (!this.hasRecAndExpired || this.mForceReparse) {
                notifyError(error);
            }
        } else {
            if (!this.hasRecAndExpired || this.mForceReparse) {
                notifyRetry(error);
            }
            this.mIndex++;
            start();
        }
    }

    public void setDNSExpiredTimeInS(int i10) {
        this.mExpiredTime = i10;
    }

    public void setDnsInfo(JSONObject jSONObject, Long l10) {
        this.mDnsInfo = jSONObject;
        this.mDnsTime = l10.longValue();
    }

    public void setForceReparse() {
        this.mForceReparse = true;
    }

    public void setIsUseDNSCache(boolean z10) {
        this.mUseDNSCache = z10;
    }

    public void setIsUseServerDNS(boolean z10) {
        this.mUseServerDNS = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a8  */
    @Override // com.ss.ttvideoengine.net.BaseDNS
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void start() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.net.DNSParser.start():void");
    }

    @Override // com.ss.ttvideoengine.net.DNSCompletionListener
    public void onCancelled() {
    }

    @Override // com.ss.ttvideoengine.net.DNSCompletionListener
    public void onRetry(Error error) {
    }
}
