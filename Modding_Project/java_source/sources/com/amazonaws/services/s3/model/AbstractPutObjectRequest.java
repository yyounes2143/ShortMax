package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class AbstractPutObjectRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5963f;

    /* renamed from: g  reason: collision with root package name */
    private String f5964g;

    /* renamed from: h  reason: collision with root package name */
    private File f5965h;

    /* renamed from: i  reason: collision with root package name */
    private transient InputStream f5966i;

    /* renamed from: j  reason: collision with root package name */
    private ObjectMetadata f5967j;

    /* renamed from: k  reason: collision with root package name */
    private CannedAccessControlList f5968k;

    /* renamed from: l  reason: collision with root package name */
    private AccessControlList f5969l;

    /* renamed from: m  reason: collision with root package name */
    private String f5970m;

    /* renamed from: n  reason: collision with root package name */
    private String f5971n;

    /* renamed from: o  reason: collision with root package name */
    private SSEAwsKeyManagementParams f5972o;

    /* renamed from: p  reason: collision with root package name */
    private ObjectTagging f5973p;

    public AbstractPutObjectRequest(String str, String str2, File file) {
        this.f5963f = str;
        this.f5964g = str2;
        this.f5965h = file;
    }

    public String A() {
        return this.f5964g;
    }

    public ObjectMetadata B() {
        return this.f5967j;
    }

    public String C() {
        return this.f5971n;
    }

    public SSEAwsKeyManagementParams D() {
        return this.f5972o;
    }

    public SSECustomerKey E() {
        return null;
    }

    public String F() {
        return this.f5970m;
    }

    public ObjectTagging G() {
        return this.f5973p;
    }

    public void H(AccessControlList accessControlList) {
        this.f5969l = accessControlList;
    }

    public void I(CannedAccessControlList cannedAccessControlList) {
        this.f5968k = cannedAccessControlList;
    }

    public void J(InputStream inputStream) {
        this.f5966i = inputStream;
    }

    public void K(ObjectMetadata objectMetadata) {
        this.f5967j = objectMetadata;
    }

    public void L(String str) {
        this.f5971n = str;
    }

    public void M(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        this.f5972o = sSEAwsKeyManagementParams;
    }

    public void O(String str) {
        this.f5970m = str;
    }

    public void P(ObjectTagging objectTagging) {
        this.f5973p = objectTagging;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T Q(AccessControlList accessControlList) {
        H(accessControlList);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T S(CannedAccessControlList cannedAccessControlList) {
        I(cannedAccessControlList);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T U(InputStream inputStream) {
        J(inputStream);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T V(ObjectMetadata objectMetadata) {
        K(objectMetadata);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T W(String str) {
        this.f5971n = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T X(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        M(sSEAwsKeyManagementParams);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T Y(SSECustomerKey sSECustomerKey) {
        N(sSECustomerKey);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T Z(String str) {
        O(str);
        return this;
    }

    @Override // com.amazonaws.AmazonWebServiceRequest
    /* renamed from: r */
    public AbstractPutObjectRequest clone() {
        return (AbstractPutObjectRequest) super.clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T extends AbstractPutObjectRequest> T s(T t10) {
        ObjectMetadata clone;
        e(t10);
        ObjectMetadata B = B();
        AbstractPutObjectRequest U = t10.Q(t()).S(v()).U(z());
        if (B == null) {
            clone = null;
        } else {
            clone = B.clone();
        }
        AbstractPutObjectRequest X = U.V(clone).W(C()).Z(F()).X(D());
        E();
        return (T) X.Y(null);
    }

    public AccessControlList t() {
        return this.f5969l;
    }

    public String u() {
        return this.f5963f;
    }

    public CannedAccessControlList v() {
        return this.f5968k;
    }

    public File y() {
        return this.f5965h;
    }

    public InputStream z() {
        return this.f5966i;
    }

    public void N(SSECustomerKey sSECustomerKey) {
    }
}
