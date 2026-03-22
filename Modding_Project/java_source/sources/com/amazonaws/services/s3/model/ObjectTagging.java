package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class ObjectTagging implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<Tag> f6118a;

    public ObjectTagging(List<Tag> list) {
        this.f6118a = list;
    }

    public List<Tag> b() {
        return this.f6118a;
    }
}
