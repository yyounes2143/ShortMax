package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class StorageClassAnalysisDataExport implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6223a;

    /* renamed from: b  reason: collision with root package name */
    private AnalyticsExportDestination f6224b;

    public void b(AnalyticsExportDestination analyticsExportDestination) {
        this.f6224b = analyticsExportDestination;
    }

    public void d(String str) {
        this.f6223a = str;
    }
}
