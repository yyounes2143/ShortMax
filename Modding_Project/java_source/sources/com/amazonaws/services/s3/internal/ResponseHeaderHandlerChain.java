package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {

    /* renamed from: f  reason: collision with root package name */
    private final List<HeaderHandler<T>> f5933f;

    public ResponseHeaderHandlerChain(Unmarshaller<T, InputStream> unmarshaller, HeaderHandler<T>... headerHandlerArr) {
        super(unmarshaller);
        this.f5933f = Arrays.asList(headerHandlerArr);
    }

    @Override // com.amazonaws.services.s3.internal.S3XmlResponseHandler, com.amazonaws.http.HttpResponseHandler
    /* renamed from: e */
    public AmazonWebServiceResponse<T> b(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> b10 = super.b(httpResponse);
        T b11 = b10.b();
        if (b11 != null) {
            for (HeaderHandler<T> headerHandler : this.f5933f) {
                headerHandler.a(b11, httpResponse);
            }
        }
        return b10;
    }
}
