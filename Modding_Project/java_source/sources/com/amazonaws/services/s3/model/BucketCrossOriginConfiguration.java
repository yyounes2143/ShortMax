package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class BucketCrossOriginConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<CORSRule> f5986a;

    public BucketCrossOriginConfiguration(List<CORSRule> list) {
        this.f5986a = list;
    }

    public List<CORSRule> b() {
        return this.f5986a;
    }
}
