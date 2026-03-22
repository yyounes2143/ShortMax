package com.amazonaws.services.s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.regions.Region;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
/* loaded from: classes2.dex */
public interface AmazonS3 {
    void a(Region region) throws IllegalArgumentException;

    void b(String str);

    S3Object g(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException;

    UploadPartResult h(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException;

    PutObjectResult i(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException;

    CompleteMultipartUploadResult k(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    InitiateMultipartUploadResult l(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    void o(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    void p(S3ClientOptions s3ClientOptions);
}
