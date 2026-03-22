package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonServiceException;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public class AmazonS3Exception extends AmazonServiceException implements Serializable {

    /* renamed from: g  reason: collision with root package name */
    private String f5978g;

    /* renamed from: h  reason: collision with root package name */
    private String f5979h;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f5980i;

    /* renamed from: j  reason: collision with root package name */
    private final String f5981j;

    public AmazonS3Exception(String str) {
        super(str);
        this.f5981j = null;
    }

    public Map<String, String> r() {
        return this.f5980i;
    }

    public String s() {
        return this.f5978g;
    }

    public void t(Map<String, String> map) {
        this.f5980i = map;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ", S3 Extended Request ID: " + s();
    }

    public void u(String str) {
        this.f5979h = str;
    }

    public void v(String str) {
        this.f5978g = str;
    }
}
