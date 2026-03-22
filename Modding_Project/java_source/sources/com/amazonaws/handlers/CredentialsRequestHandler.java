package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;
/* loaded from: classes2.dex */
public abstract class CredentialsRequestHandler extends RequestHandler2 {

    /* renamed from: a  reason: collision with root package name */
    protected AWSCredentials f4979a;

    public void e(AWSCredentials aWSCredentials) {
        this.f4979a = aWSCredentials;
    }
}
