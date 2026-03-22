package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.StringUtils;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class S3StringResponseHandler extends AbstractS3ResponseHandler<String> {
    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: e */
    public AmazonWebServiceResponse<String> b(HttpResponse httpResponse) throws Exception {
        AmazonWebServiceResponse<String> c10 = c(httpResponse);
        byte[] bArr = new byte[1024];
        StringBuilder sb2 = new StringBuilder();
        InputStream b10 = httpResponse.b();
        while (true) {
            int read = b10.read(bArr);
            if (read > 0) {
                sb2.append(new String(bArr, 0, read, StringUtils.f6417a));
            } else {
                c10.d(sb2.toString());
                return c10;
            }
        }
    }
}
