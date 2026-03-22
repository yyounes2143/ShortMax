package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class AWSCredentialsProviderChain implements AWSCredentialsProvider {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f4898d = LogFactory.b(AWSCredentialsProviderChain.class);

    /* renamed from: a  reason: collision with root package name */
    private List<AWSCredentialsProvider> f4899a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f4900b = true;

    /* renamed from: c  reason: collision with root package name */
    private AWSCredentialsProvider f4901c;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr != null && aWSCredentialsProviderArr.length != 0) {
            for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
                this.f4899a.add(aWSCredentialsProvider);
            }
            return;
        }
        throw new IllegalArgumentException("No credential providers specified");
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (this.f4900b && (aWSCredentialsProvider = this.f4901c) != null) {
            return aWSCredentialsProvider.getCredentials();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider2 : this.f4899a) {
            try {
                AWSCredentials credentials = aWSCredentialsProvider2.getCredentials();
                if (credentials.a() != null && credentials.b() != null) {
                    Log log = f4898d;
                    log.h("Loading credentials from " + aWSCredentialsProvider2.toString());
                    this.f4901c = aWSCredentialsProvider2;
                    return credentials;
                }
            } catch (Exception e10) {
                Log log2 = f4898d;
                log2.h("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e10.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }
}
