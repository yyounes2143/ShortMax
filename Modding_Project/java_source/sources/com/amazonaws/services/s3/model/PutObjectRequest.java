package com.amazonaws.services.s3.model;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class PutObjectRequest extends AbstractPutObjectRequest implements Serializable {

    /* renamed from: q  reason: collision with root package name */
    private boolean f6140q;

    public PutObjectRequest(String str, String str2, File file) {
        super(str, str2, file);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: a0 */
    public PutObjectRequest r() {
        return (PutObjectRequest) s((PutObjectRequest) super.clone());
    }

    public boolean k0() {
        return this.f6140q;
    }

    public void l0(boolean z10) {
        this.f6140q = z10;
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: p0 */
    public PutObjectRequest Q(AccessControlList accessControlList) {
        return (PutObjectRequest) super.Q(accessControlList);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: q0 */
    public PutObjectRequest S(CannedAccessControlList cannedAccessControlList) {
        return (PutObjectRequest) super.S(cannedAccessControlList);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: r0 */
    public PutObjectRequest U(InputStream inputStream) {
        return (PutObjectRequest) super.U(inputStream);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: s0 */
    public PutObjectRequest V(ObjectMetadata objectMetadata) {
        return (PutObjectRequest) super.V(objectMetadata);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: u0 */
    public PutObjectRequest W(String str) {
        return (PutObjectRequest) super.W(str);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: v0 */
    public PutObjectRequest X(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        return (PutObjectRequest) super.X(sSEAwsKeyManagementParams);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: x0 */
    public PutObjectRequest Y(SSECustomerKey sSECustomerKey) {
        return (PutObjectRequest) super.Y(sSECustomerKey);
    }

    @Override // com.amazonaws.services.s3.model.AbstractPutObjectRequest
    /* renamed from: y0 */
    public PutObjectRequest Z(String str) {
        return (PutObjectRequest) super.Z(str);
    }
}
