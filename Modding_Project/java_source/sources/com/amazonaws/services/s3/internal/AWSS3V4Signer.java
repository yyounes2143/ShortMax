package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class AWSS3V4Signer extends AWS4Signer {
    public AWSS3V4Signer() {
        super(false);
    }

    static long a(Request<?> request) throws IOException {
        InputStream content = request.getContent();
        if (content.markSupported()) {
            byte[] bArr = new byte[4096];
            content.mark(-1);
            long j10 = 0;
            while (true) {
                int read = content.read(bArr);
                if (read != -1) {
                    j10 += read;
                } else {
                    content.reset();
                    return j10;
                }
            }
        } else {
            throw new AmazonClientException("Failed to get content length");
        }
    }

    private static boolean b(Request<?> request) {
        if (!(request.r() instanceof PutObjectRequest) && !(request.r() instanceof UploadPartRequest)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazonaws.auth.AWS4Signer
    public String calculateContentHash(Request<?> request) {
        long a10;
        request.q("x-amz-content-sha256", "required");
        if (b(request)) {
            String str = request.a().get("Content-Length");
            if (str != null) {
                a10 = Long.parseLong(str);
            } else {
                try {
                    a10 = a(request);
                } catch (IOException e10) {
                    throw new AmazonClientException("Cannot get the content-lenght of the request content.", e10);
                }
            }
            request.q("x-amz-decoded-content-length", Long.toString(a10));
            request.q("Content-Length", Long.toString(AwsChunkedEncodingInputStream.p(a10)));
            return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
        }
        return super.calculateContentHash(request);
    }

    @Override // com.amazonaws.auth.AWS4Signer
    protected String calculateContentHashPresign(Request<?> request) {
        return "UNSIGNED-PAYLOAD";
    }

    @Override // com.amazonaws.auth.AWS4Signer
    protected void processRequestPayload(Request<?> request, AWS4Signer.HeaderSigningResult headerSigningResult) {
        if (b(request)) {
            request.b(new AwsChunkedEncodingInputStream(request.getContent(), headerSigningResult.b(), headerSigningResult.a(), headerSigningResult.c(), BinaryUtils.a(headerSigningResult.d()), this));
        }
    }
}
