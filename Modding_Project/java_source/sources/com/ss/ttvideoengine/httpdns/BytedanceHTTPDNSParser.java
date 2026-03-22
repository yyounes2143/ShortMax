package com.ss.ttvideoengine.httpdns;

import android.content.Context;
import android.os.SystemClock;
import com.bytedancehttpdns.httpdns.DnsResult;
import com.bytedancehttpdns.httpdns.HttpDns;
import com.bytedancehttpdns.httpdns.IHttpDnsDepend;
import com.ss.mediakit.net.AVMDLCustomHTTPDNSParser;
import com.ss.mediakit.net.AVMDLCustomHTTPDNSParserResult;
import com.ss.mediakit.net.AVMDLDNSParser;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class BytedanceHTTPDNSParser implements AVMDLCustomHTTPDNSParser {
    public static final int DNS_TYPE_CUSTOM_INNER_BYTEDANCE_HTTPDNS = 1;
    private static final String TAG = "BytedanceHTTPDNSParser";
    private final ByteDanceHttpDnsDepend mByteDanceHttpDnsDepend;

    public BytedanceHTTPDNSParser(ByteDanceHttpDnsDepend byteDanceHttpDnsDepend) {
        TTVideoEngineLog.d(TAG, "new parser depend:" + byteDanceHttpDnsDepend);
        this.mByteDanceHttpDnsDepend = byteDanceHttpDnsDepend;
        setHttpDnsDepend();
    }

    private void setHttpDnsDepend() {
        HttpDns.getService().setHttpDnsDepend(new IHttpDnsDepend() { // from class: com.ss.ttvideoengine.httpdns.BytedanceHTTPDNSParser.1
            public String getAppId() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getAppId();
                }
                return null;
            }

            public Context getContext() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getContext();
                }
                return null;
            }

            public String getHttpdnsAccountID() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getHttpdnsAccountID();
                }
                return null;
            }

            public String getHttpdnsSecretKey() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getHttpdnsSecretKey();
                }
                return null;
            }

            public long getHttpdnsTemporaryKeyTimeStamp() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getHttpdnsTemporaryKeyTimeStamp();
                }
                return 0L;
            }

            public String[] getPreloadDomains() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.getPreloadDomains();
                }
                return new String[0];
            }

            public boolean isTemporaryAuthentication() {
                if (BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend != null) {
                    return BytedanceHTTPDNSParser.this.mByteDanceHttpDnsDepend.isTemporaryAuthentication();
                }
                return false;
            }
        });
    }

    public String listToIPList(List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 != 0) {
                sb2.append(",");
            }
            sb2.append(list.get(i10));
        }
        return sb2.toString();
    }

    @Override // com.ss.mediakit.net.AVMDLCustomHTTPDNSParser
    public AVMDLCustomHTTPDNSParserResult parseHost(String str) {
        TTVideoEngineLog.i(TAG, "parseHost " + str);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        DnsResult httpDnsResultForHostSyncBlock = HttpDns.getService().getHttpDnsResultForHostSyncBlock(str);
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        TTVideoEngineLog.d(TAG, "parseHost result:" + httpDnsResultForHostSyncBlock + ", time:" + elapsedRealtime2);
        if (httpDnsResultForHostSyncBlock == null) {
            TTVideoEngineLog.i(TAG, "parseHost result DnsResult is null");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (httpDnsResultForHostSyncBlock.ipv4List != null && httpDnsResultForHostSyncBlock.ipv4List.size() > 0) {
            arrayList.addAll(httpDnsResultForHostSyncBlock.ipv4List);
        }
        if (httpDnsResultForHostSyncBlock.ipv6List != null && httpDnsResultForHostSyncBlock.ipv6List.size() > 0) {
            arrayList.addAll(httpDnsResultForHostSyncBlock.ipv6List);
        }
        if (arrayList.size() <= 0) {
            TTVideoEngineLog.i(TAG, "parseHost result DnsResult ipList is null");
            return null;
        }
        String listToIPList = listToIPList(arrayList);
        int i10 = (int) httpDnsResultForHostSyncBlock.ttl;
        TTVideoEngineLog.i(TAG, "parseHost result host:" + str + "ipList:" + listToIPList + ", ttl:" + i10);
        return new AVMDLCustomHTTPDNSParserResult(str, listToIPList, i10);
    }

    public int start() {
        TTVideoEngineLog.d(TAG, "start");
        TTVideoEngine.setIntValue(1127, 1);
        TTVideoEngine.setIntValue(7, 1);
        TTVideoEngine.setIntValue(90, 4);
        TTVideoEngine.setIntValue(91, 0);
        TTVideoEngine.setIntValue(92, 1);
        TTVideoEngine.setIntValue(8, 1);
        AVMDLDNSParser.setCustomHttpDNSParser(this);
        return 1;
    }
}
