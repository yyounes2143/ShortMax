package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class ListBucketMetricsConfigurationsResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<MetricsConfiguration> f6083a;

    /* renamed from: b  reason: collision with root package name */
    private String f6084b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6085c;

    /* renamed from: d  reason: collision with root package name */
    private String f6086d;

    public List<MetricsConfiguration> b() {
        return this.f6083a;
    }

    public void d(String str) {
        this.f6084b = str;
    }

    public void e(List<MetricsConfiguration> list) {
        this.f6083a = list;
    }

    public void f(String str) {
        this.f6086d = str;
    }

    public void g(boolean z10) {
        this.f6085c = z10;
    }
}
