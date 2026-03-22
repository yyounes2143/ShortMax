package com.amazonaws.services.s3.model.analytics;

import java.util.List;
/* loaded from: classes2.dex */
abstract class AnalyticsNAryOperator extends AnalyticsFilterPredicate {

    /* renamed from: a  reason: collision with root package name */
    private final List<AnalyticsFilterPredicate> f6215a;

    public AnalyticsNAryOperator(List<AnalyticsFilterPredicate> list) {
        this.f6215a = list;
    }
}
