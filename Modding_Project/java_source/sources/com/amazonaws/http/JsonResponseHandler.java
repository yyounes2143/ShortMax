package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ResponseMetadata;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.transform.VoidJsonUnmarshaller;
import com.amazonaws.util.CRC32ChecksumCalculatingInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonReader;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
public class JsonResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {

    /* renamed from: c  reason: collision with root package name */
    private static final Log f5011c = LogFactory.c("com.amazonaws.request");

    /* renamed from: a  reason: collision with root package name */
    private Unmarshaller<T, JsonUnmarshallerContext> f5012a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f5013b = false;

    public JsonResponseHandler(Unmarshaller<T, JsonUnmarshallerContext> unmarshaller) {
        this.f5012a = unmarshaller;
        if (unmarshaller == null) {
            this.f5012a = new VoidJsonUnmarshaller();
        }
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return this.f5013b;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: c */
    public AmazonWebServiceResponse<T> b(HttpResponse httpResponse) throws Exception {
        CRC32ChecksumCalculatingInputStream cRC32ChecksumCalculatingInputStream;
        Log log = f5011c;
        log.k("Parsing service response JSON");
        String str = httpResponse.c().get("x-amz-crc32");
        GZIPInputStream d10 = httpResponse.d();
        if (d10 == null) {
            d10 = new ByteArrayInputStream(JsonUtils.EMPTY_JSON.getBytes(StringUtils.f6417a));
        }
        log.h("CRC32Checksum = " + str);
        log.h("content encoding = " + httpResponse.c().get("Content-Encoding"));
        boolean equals = "gzip".equals(httpResponse.c().get("Content-Encoding"));
        if (str != null) {
            cRC32ChecksumCalculatingInputStream = new CRC32ChecksumCalculatingInputStream(d10);
            d10 = cRC32ChecksumCalculatingInputStream;
        } else {
            cRC32ChecksumCalculatingInputStream = null;
        }
        if (equals) {
            d10 = new GZIPInputStream(d10);
        }
        AwsJsonReader a10 = com.amazonaws.util.json.JsonUtils.a(new InputStreamReader(d10, StringUtils.f6417a));
        try {
            AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
            T a11 = this.f5012a.a(new JsonUnmarshallerContext(a10, httpResponse));
            if (cRC32ChecksumCalculatingInputStream != null) {
                if (cRC32ChecksumCalculatingInputStream.m() != Long.parseLong(str)) {
                    throw new CRC32MismatchException("Client calculated crc32 checksum didn't match that calculated by server side");
                }
            }
            amazonWebServiceResponse.d(a11);
            HashMap hashMap = new HashMap();
            hashMap.put("AWS_REQUEST_ID", httpResponse.c().get("x-amzn-RequestId"));
            amazonWebServiceResponse.c(new ResponseMetadata(hashMap));
            log.k("Done parsing service response");
            if (!this.f5013b) {
                try {
                    a10.close();
                } catch (IOException e10) {
                    f5011c.f("Error closing json parser", e10);
                }
            }
            return amazonWebServiceResponse;
        } catch (Throwable th2) {
            if (!this.f5013b) {
                try {
                    a10.close();
                } catch (IOException e11) {
                    f5011c.f("Error closing json parser", e11);
                }
            }
            throw th2;
        }
    }
}
