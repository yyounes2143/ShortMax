package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class ListBucketAnalyticsConfigurationsResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<AnalyticsConfiguration> f6075a;

    /* renamed from: b  reason: collision with root package name */
    private String f6076b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6077c;

    /* renamed from: d  reason: collision with root package name */
    private String f6078d;

    public List<AnalyticsConfiguration> b() {
        return this.f6075a;
    }

    public void d(List<AnalyticsConfiguration> list) {
        this.f6075a = list;
    }

    public void e(String str) {
        this.f6076b = str;
    }

    public void f(String str) {
        this.f6078d = str;
    }

    public void g(boolean z10) {
        this.f6077c = z10;
    }
}
