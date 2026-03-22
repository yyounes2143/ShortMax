package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.S3ResponseMetadata;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.DateUtils;
import com.mbridge.msdk.foundation.download.Command;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class AbstractS3ResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5911a = LogFactory.b(S3MetadataResponseHandler.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f5912b;

    static {
        HashSet hashSet = new HashSet();
        f5912b = hashSet;
        hashSet.add("Date");
        hashSet.add("Server");
        hashSet.add("x-amz-request-id");
        hashSet.add("x-amz-id-2");
        hashSet.add("X-Amz-Cf-Id");
        hashSet.add("Connection");
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AmazonWebServiceResponse<T> c(HttpResponse httpResponse) {
        AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
        HashMap hashMap = new HashMap();
        hashMap.put("AWS_REQUEST_ID", httpResponse.c().get("x-amz-request-id"));
        hashMap.put("HOST_ID", httpResponse.c().get("x-amz-id-2"));
        hashMap.put("CLOUD_FRONT_ID", httpResponse.c().get("X-Amz-Cf-Id"));
        amazonWebServiceResponse.c(new S3ResponseMetadata(hashMap));
        return amazonWebServiceResponse;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(HttpResponse httpResponse, ObjectMetadata objectMetadata) {
        for (Map.Entry<String, String> entry : httpResponse.c().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("x-amz-meta-")) {
                objectMetadata.n(key.substring(11), entry.getValue());
            } else if (f5912b.contains(key)) {
                f5911a.h(String.format("%s is ignored.", key));
            } else if (key.equalsIgnoreCase("Last-Modified")) {
                try {
                    objectMetadata.W(key, ServiceUtils.d(entry.getValue()));
                } catch (Exception e10) {
                    Log log = f5911a;
                    log.f("Unable to parse last modified date: " + entry.getValue(), e10);
                }
            } else if (key.equalsIgnoreCase("Content-Length")) {
                try {
                    objectMetadata.W(key, Long.valueOf(Long.parseLong(entry.getValue())));
                } catch (NumberFormatException e11) {
                    Log log2 = f5911a;
                    log2.f("Unable to parse content length: " + entry.getValue(), e11);
                }
            } else if (key.equalsIgnoreCase(Command.HTTP_HEADER_ETAG)) {
                objectMetadata.W(key, ServiceUtils.e(entry.getValue()));
            } else if (key.equalsIgnoreCase("Expires")) {
                try {
                    objectMetadata.X(DateUtils.i(entry.getValue()));
                } catch (Exception e12) {
                    Log log3 = f5911a;
                    log3.f("Unable to parse http expiration date: " + entry.getValue(), e12);
                }
            } else if (key.equalsIgnoreCase("x-amz-expiration")) {
                new ObjectExpirationHeaderHandler().a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-restore")) {
                new ObjectRestoreHeaderHandler().a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-request-charged")) {
                new S3RequesterChargedHeaderHandler().a(objectMetadata, httpResponse);
            } else if (key.equalsIgnoreCase("x-amz-mp-parts-count")) {
                try {
                    objectMetadata.W(key, Integer.valueOf(Integer.parseInt(entry.getValue())));
                } catch (NumberFormatException e13) {
                    throw new AmazonClientException("Unable to parse part count. Header x-amz-mp-parts-count has corrupted data" + e13.getMessage(), e13);
                }
            } else {
                objectMetadata.W(key, entry.getValue());
            }
        }
    }
}
