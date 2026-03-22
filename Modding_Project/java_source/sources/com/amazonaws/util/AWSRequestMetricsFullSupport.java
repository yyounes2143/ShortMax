package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricType;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2.dex */
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f6394d = LogFactory.c("com.amazonaws.latency");

    /* renamed from: e  reason: collision with root package name */
    private static final Object f6395e = ContainerUtils.KEY_VALUE_DELIMITER;

    /* renamed from: f  reason: collision with root package name */
    private static final Object f6396f = ", ";

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<Object>> f6397b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, TimingInfo> f6398c;

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.n());
        this.f6397b = new HashMap();
        this.f6398c = new HashMap();
    }

    private void k(Object obj, Object obj2, StringBuilder sb2) {
        sb2.append(obj);
        sb2.append(f6395e);
        sb2.append(obj2);
        sb2.append(f6396f);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void a(MetricType metricType, Object obj) {
        h(metricType.name(), obj);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void b(MetricType metricType) {
        i(metricType.name());
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void d(MetricType metricType) {
        j(metricType.name());
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void e() {
        if (f6394d.a()) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, List<Object>> entry : this.f6397b.entrySet()) {
                k(entry.getKey(), entry.getValue(), sb2);
            }
            for (Map.Entry<String, Number> entry2 : this.f6393a.d().entrySet()) {
                k(entry2.getKey(), entry2.getValue(), sb2);
            }
            for (Map.Entry<String, List<TimingInfo>> entry3 : this.f6393a.g().entrySet()) {
                k(entry3.getKey(), entry3.getValue(), sb2);
            }
            f6394d.j(sb2.toString());
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void f(MetricType metricType, long j10) {
        l(metricType.name(), j10);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public void g(MetricType metricType) {
        m(metricType.name());
    }

    public void h(String str, Object obj) {
        List<Object> list = this.f6397b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f6397b.put(str, list);
        }
        list.add(obj);
    }

    public void i(String str) {
        TimingInfo timingInfo = this.f6398c.get(str);
        if (timingInfo == null) {
            Log b10 = LogFactory.b(getClass());
            b10.g("Trying to end an event which was never started: " + str);
            return;
        }
        timingInfo.c();
        this.f6393a.a(str, TimingInfo.p(timingInfo.f(), Long.valueOf(timingInfo.e())));
    }

    public void j(String str) {
        this.f6393a.j(str);
    }

    public void l(String str, long j10) {
        this.f6393a.l(str, j10);
    }

    public void m(String str) {
        this.f6398c.put(str, TimingInfo.o(System.nanoTime()));
    }
}
