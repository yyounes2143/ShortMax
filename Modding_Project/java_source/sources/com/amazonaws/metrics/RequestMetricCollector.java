package com.amazonaws.metrics;

import com.amazonaws.Request;
import com.amazonaws.Response;
/* loaded from: classes2.dex */
public abstract class RequestMetricCollector {

    /* renamed from: a  reason: collision with root package name */
    public static final RequestMetricCollector f5068a = new RequestMetricCollector() { // from class: com.amazonaws.metrics.RequestMetricCollector.1
        @Override // com.amazonaws.metrics.RequestMetricCollector
        public boolean b() {
            return false;
        }

        @Override // com.amazonaws.metrics.RequestMetricCollector
        public void a(Request<?> request, Response<?> response) {
        }
    };

    public abstract void a(Request<?> request, Response<?> response);

    public abstract boolean b();
}
