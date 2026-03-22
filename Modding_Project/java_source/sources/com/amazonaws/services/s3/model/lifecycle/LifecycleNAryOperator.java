package com.amazonaws.services.s3.model.lifecycle;

import java.util.List;
/* loaded from: classes2.dex */
abstract class LifecycleNAryOperator extends LifecycleFilterPredicate {

    /* renamed from: a  reason: collision with root package name */
    private final List<LifecycleFilterPredicate> f6241a;

    public LifecycleNAryOperator(List<LifecycleFilterPredicate> list) {
        this.f6241a = list;
    }
}
