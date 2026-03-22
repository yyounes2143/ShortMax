package com.huawei.hms.framework.network.grs;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class GrsClient {
    private static final String EMPTY_STRING = "";
    private final a grsClientGlobal;
    private int queryTimeout;

    public GrsClient(Context context, GrsBaseInfo grsBaseInfo) {
        if (context != null && grsBaseInfo != null) {
            this.grsClientGlobal = b.a(grsBaseInfo, context);
            this.queryTimeout = grsBaseInfo.getQueryTimeout();
            return;
        }
        throw new NullPointerException("invalid init params for context is null or GrsBaseInfo instance is null Object.");
    }

    public void ayncGetGrsUrl(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack) {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            iQueryUrlCallBack.onCallBackFail(-8);
        } else {
            aVar.m(str, str2, iQueryUrlCallBack, this.queryTimeout);
        }
    }

    public void ayncGetGrsUrls(String str, IQueryUrlsCallBack iQueryUrlsCallBack) {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            iQueryUrlsCallBack.onCallBackFail(-8);
        } else {
            aVar.l(str, iQueryUrlsCallBack, this.queryTimeout);
        }
    }

    public void clearSp() {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            return;
        }
        aVar.i();
    }

    public boolean forceExpire() {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            return false;
        }
        return aVar.r();
    }

    public String synGetGrsUrl(String str, String str2) {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            return "";
        }
        return aVar.d(str, str2, this.queryTimeout);
    }

    public Map<String, String> synGetGrsUrls(String str) {
        a aVar = this.grsClientGlobal;
        if (aVar == null) {
            return new HashMap();
        }
        return aVar.e(str, this.queryTimeout);
    }
}
