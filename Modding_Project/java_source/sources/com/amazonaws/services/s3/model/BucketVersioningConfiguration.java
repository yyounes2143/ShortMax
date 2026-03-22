package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class BucketVersioningConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6009a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f6010b = null;

    public BucketVersioningConfiguration() {
        d("Off");
    }

    public void b(Boolean bool) {
        this.f6010b = bool;
    }

    public void d(String str) {
        this.f6009a = str;
    }
}
