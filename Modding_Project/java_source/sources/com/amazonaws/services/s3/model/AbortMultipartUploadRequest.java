package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class AbortMultipartUploadRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5959f;

    /* renamed from: g  reason: collision with root package name */
    private String f5960g;

    /* renamed from: h  reason: collision with root package name */
    private String f5961h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5962i;

    public AbortMultipartUploadRequest(String str, String str2, String str3) {
        this.f5959f = str;
        this.f5960g = str2;
        this.f5961h = str3;
    }

    public String r() {
        return this.f5959f;
    }

    public String s() {
        return this.f5960g;
    }

    public String t() {
        return this.f5961h;
    }

    public boolean u() {
        return this.f5962i;
    }
}
