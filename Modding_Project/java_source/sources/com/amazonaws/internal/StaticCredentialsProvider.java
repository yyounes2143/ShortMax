package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
/* loaded from: classes2.dex */
public class StaticCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: a  reason: collision with root package name */
    private final AWSCredentials f5028a;

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.f5028a = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        return this.f5028a;
    }
}
