package com.ss.ttvideoengine.httpdns;

import android.content.Context;
/* loaded from: classes6.dex */
public interface ByteDanceHttpDnsDepend {
    String getAppId();

    Context getContext();

    String getHttpdnsAccountID();

    String getHttpdnsSecretKey();

    long getHttpdnsTemporaryKeyTimeStamp();

    String[] getPreloadDomains();

    boolean isTemporaryAuthentication();
}
