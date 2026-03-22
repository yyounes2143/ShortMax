package com.amazonaws.services.s3.model.lifecycle;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class LifecycleFilter implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private LifecycleFilterPredicate f6240a;

    public void b(LifecycleFilterPredicate lifecycleFilterPredicate) {
        this.f6240a = lifecycleFilterPredicate;
    }
}
