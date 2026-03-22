package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class AnalyticsConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6210a;

    /* renamed from: b  reason: collision with root package name */
    private AnalyticsFilter f6211b;

    /* renamed from: c  reason: collision with root package name */
    private StorageClassAnalysis f6212c;

    public void b(AnalyticsFilter analyticsFilter) {
        this.f6211b = analyticsFilter;
    }

    public void d(String str) {
        this.f6210a = str;
    }

    public void e(StorageClassAnalysis storageClassAnalysis) {
        this.f6212c = storageClassAnalysis;
    }
}
