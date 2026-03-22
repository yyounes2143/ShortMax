package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class BucketTaggingConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List<TagSet> f6008a;

    public BucketTaggingConfiguration() {
        this.f6008a = null;
        this.f6008a = new ArrayList(1);
    }

    public List<TagSet> b() {
        return this.f6008a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        stringBuffer.append("TagSets: " + b());
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
