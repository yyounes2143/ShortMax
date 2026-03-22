package com.amazonaws.services.s3.model.metrics;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class MetricsConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6244a;

    /* renamed from: b  reason: collision with root package name */
    private MetricsFilter f6245b;

    public void b(MetricsFilter metricsFilter) {
        this.f6245b = metricsFilter;
    }

    public void d(String str) {
        this.f6244a = str;
    }
}
