package com.amazonaws.services.s3.model.metrics;

import java.util.List;
/* loaded from: classes2.dex */
abstract class MetricsNAryOperator extends MetricsFilterPredicate {

    /* renamed from: a  reason: collision with root package name */
    private final List<MetricsFilterPredicate> f6247a;

    public MetricsNAryOperator(List<MetricsFilterPredicate> list) {
        this.f6247a = list;
    }
}
