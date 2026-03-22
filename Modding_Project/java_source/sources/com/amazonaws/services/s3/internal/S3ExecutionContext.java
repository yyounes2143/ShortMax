package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import java.net.URI;
import java.util.List;
/* loaded from: classes2.dex */
public class S3ExecutionContext extends ExecutionContext {

    /* renamed from: f  reason: collision with root package name */
    private Signer f5936f;

    public S3ExecutionContext(List<RequestHandler2> list, boolean z10, AmazonWebServiceClient amazonWebServiceClient) {
        super(list, z10, amazonWebServiceClient);
    }

    @Override // com.amazonaws.http.ExecutionContext
    public Signer e(URI uri) {
        return this.f5936f;
    }

    @Override // com.amazonaws.http.ExecutionContext
    public void g(Signer signer) {
        this.f5936f = signer;
    }
}
