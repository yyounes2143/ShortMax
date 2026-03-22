package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class InitiateMultipartUploadRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f6062f;

    /* renamed from: g  reason: collision with root package name */
    private String f6063g;

    /* renamed from: h  reason: collision with root package name */
    public ObjectMetadata f6064h;

    /* renamed from: i  reason: collision with root package name */
    private CannedAccessControlList f6065i;

    /* renamed from: j  reason: collision with root package name */
    private AccessControlList f6066j;

    /* renamed from: k  reason: collision with root package name */
    private StorageClass f6067k;

    /* renamed from: l  reason: collision with root package name */
    private String f6068l;

    /* renamed from: m  reason: collision with root package name */
    private SSEAwsKeyManagementParams f6069m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f6070n;

    /* renamed from: o  reason: collision with root package name */
    private ObjectTagging f6071o;

    public InitiateMultipartUploadRequest(String str, String str2) {
        this.f6062f = str;
        this.f6063g = str2;
    }

    public StorageClass A() {
        return this.f6067k;
    }

    public ObjectTagging B() {
        return this.f6071o;
    }

    public boolean C() {
        return this.f6070n;
    }

    public void D(ObjectMetadata objectMetadata) {
        this.f6064h = objectMetadata;
    }

    public void E(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        this.f6069m = sSEAwsKeyManagementParams;
    }

    public void F(ObjectTagging objectTagging) {
        this.f6071o = objectTagging;
    }

    public InitiateMultipartUploadRequest G(CannedAccessControlList cannedAccessControlList) {
        this.f6065i = cannedAccessControlList;
        return this;
    }

    public InitiateMultipartUploadRequest H(ObjectMetadata objectMetadata) {
        D(objectMetadata);
        return this;
    }

    public InitiateMultipartUploadRequest I(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        E(sSEAwsKeyManagementParams);
        return this;
    }

    public InitiateMultipartUploadRequest J(ObjectTagging objectTagging) {
        F(objectTagging);
        return this;
    }

    public AccessControlList r() {
        return this.f6066j;
    }

    public String s() {
        return this.f6062f;
    }

    public CannedAccessControlList t() {
        return this.f6065i;
    }

    public String u() {
        return this.f6063g;
    }

    public String v() {
        return this.f6068l;
    }

    public SSEAwsKeyManagementParams y() {
        return this.f6069m;
    }

    public SSECustomerKey z() {
        return null;
    }
}
