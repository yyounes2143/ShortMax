package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class CompleteMultipartUploadRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f6023f;

    /* renamed from: g  reason: collision with root package name */
    private String f6024g;

    /* renamed from: h  reason: collision with root package name */
    private String f6025h;

    /* renamed from: i  reason: collision with root package name */
    private List<PartETag> f6026i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f6027j;

    public CompleteMultipartUploadRequest(String str, String str2, String str3, List<PartETag> list) {
        new ArrayList();
        this.f6023f = str;
        this.f6024g = str2;
        this.f6025h = str3;
        this.f6026i = list;
    }

    public String r() {
        return this.f6023f;
    }

    public String s() {
        return this.f6024g;
    }

    public List<PartETag> t() {
        return this.f6026i;
    }

    public String u() {
        return this.f6025h;
    }

    public boolean v() {
        return this.f6027j;
    }
}
