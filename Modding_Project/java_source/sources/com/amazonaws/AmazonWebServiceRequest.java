package com.amazonaws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.metrics.RequestMetricCollector;
/* loaded from: classes2.dex */
public abstract class AmazonWebServiceRequest implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private ProgressListener f4840a;

    /* renamed from: b  reason: collision with root package name */
    private final RequestClientOptions f4841b = new RequestClientOptions();
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    private RequestMetricCollector f4842c;

    /* renamed from: d  reason: collision with root package name */
    private AWSCredentials f4843d;

    /* renamed from: e  reason: collision with root package name */
    private AmazonWebServiceRequest f4844e;

    private void k(AmazonWebServiceRequest amazonWebServiceRequest) {
        this.f4844e = amazonWebServiceRequest;
    }

    @Override // 
    /* renamed from: b */
    public AmazonWebServiceRequest clone() {
        try {
            AmazonWebServiceRequest amazonWebServiceRequest = (AmazonWebServiceRequest) super.clone();
            amazonWebServiceRequest.k(this);
            return amazonWebServiceRequest;
        } catch (CloneNotSupportedException e10) {
            throw new IllegalStateException("Got a CloneNotSupportedException from Object.clone() even though we're Cloneable!", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T extends AmazonWebServiceRequest> T e(T t10) {
        t10.n(this.f4840a);
        t10.q(this.f4842c);
        return t10;
    }

    public ProgressListener f() {
        return this.f4840a;
    }

    public RequestClientOptions g() {
        return this.f4841b;
    }

    public AWSCredentials i() {
        return this.f4843d;
    }

    @Deprecated
    public RequestMetricCollector j() {
        return this.f4842c;
    }

    public void n(ProgressListener progressListener) {
        this.f4840a = progressListener;
    }

    @Deprecated
    public void q(RequestMetricCollector requestMetricCollector) {
        this.f4842c = requestMetricCollector;
    }
}
