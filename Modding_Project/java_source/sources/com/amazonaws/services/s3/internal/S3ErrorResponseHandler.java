package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.XpathUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.w3c.dom.Document;
/* loaded from: classes2.dex */
public class S3ErrorResponseHandler implements HttpResponseHandler<AmazonServiceException> {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5935a = LogFactory.b(S3ErrorResponseHandler.class);

    private AmazonServiceException.ErrorType c(int i10) {
        if (i10 >= 500) {
            return AmazonServiceException.ErrorType.Service;
        }
        return AmazonServiceException.ErrorType.Client;
    }

    private AmazonS3Exception e(String str, HttpResponse httpResponse) {
        AmazonS3Exception amazonS3Exception = new AmazonS3Exception(str);
        int e10 = httpResponse.e();
        amazonS3Exception.h(e10 + " " + httpResponse.f());
        amazonS3Exception.q(e10);
        amazonS3Exception.j(c(e10));
        Map<String, String> c10 = httpResponse.c();
        amazonS3Exception.k(c10.get("x-amz-request-id"));
        amazonS3Exception.v(c10.get("x-amz-id-2"));
        amazonS3Exception.u(c10.get("X-Amz-Cf-Id"));
        HashMap hashMap = new HashMap();
        hashMap.put("x-amz-bucket-region", c10.get("x-amz-bucket-region"));
        amazonS3Exception.t(hashMap);
        return amazonS3Exception;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: d */
    public AmazonServiceException b(HttpResponse httpResponse) throws IOException {
        InputStream b10 = httpResponse.b();
        if (b10 == null) {
            return e(httpResponse.f(), httpResponse);
        }
        try {
            String iOUtils = IOUtils.toString(b10);
            try {
                Document d10 = XpathUtils.d(iOUtils);
                String b11 = XpathUtils.b("Error/Message", d10);
                String b12 = XpathUtils.b("Error/Code", d10);
                String b13 = XpathUtils.b("Error/RequestId", d10);
                String b14 = XpathUtils.b("Error/HostId", d10);
                AmazonS3Exception amazonS3Exception = new AmazonS3Exception(b11);
                int e10 = httpResponse.e();
                amazonS3Exception.q(e10);
                amazonS3Exception.j(c(e10));
                amazonS3Exception.h(b12);
                amazonS3Exception.k(b13);
                amazonS3Exception.v(b14);
                amazonS3Exception.u(httpResponse.c().get("X-Amz-Cf-Id"));
                return amazonS3Exception;
            } catch (Exception e11) {
                Log log = f5935a;
                if (log.i()) {
                    log.d("Failed in parsing the response as XML: " + iOUtils, e11);
                }
                return e(iOUtils, httpResponse);
            }
        } catch (IOException e12) {
            if (f5935a.i()) {
                f5935a.d("Failed in reading the error response", e12);
            }
            return e(httpResponse.f(), httpResponse);
        }
    }
}
