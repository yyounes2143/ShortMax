package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes2.dex */
public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final Log f5942e = LogFactory.c("com.amazonaws.request");

    /* renamed from: c  reason: collision with root package name */
    private Unmarshaller<T, InputStream> f5943c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f5944d;

    public S3XmlResponseHandler(Unmarshaller<T, InputStream> unmarshaller) {
        this.f5943c = unmarshaller;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: e */
    public AmazonWebServiceResponse<T> b(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<T> c10 = c(httpResponse);
        this.f5944d = httpResponse.c();
        if (this.f5943c != null) {
            Log log = f5942e;
            log.k("Beginning to parse service response XML");
            T a10 = this.f5943c.a(httpResponse.b());
            log.k("Done parsing service response XML");
            c10.d(a10);
        }
        return c10;
    }
}
