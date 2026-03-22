package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.TimingInfo;
/* loaded from: classes2.dex */
final class RequestHandler2Adaptor extends RequestHandler2 {

    /* renamed from: a  reason: collision with root package name */
    private final RequestHandler f4980a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestHandler2Adaptor(RequestHandler requestHandler) {
        if (requestHandler != null) {
            this.f4980a = requestHandler;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void b(Request<?> request, Response<?> response, Exception exc) {
        this.f4980a.a(request, exc);
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void c(Request<?> request, Response<?> response) {
        AWSRequestMetrics c10;
        Object a10;
        TimingInfo timingInfo = null;
        if (request == null) {
            c10 = null;
        } else {
            c10 = request.c();
        }
        if (response == null) {
            a10 = null;
        } else {
            a10 = response.a();
        }
        if (c10 != null) {
            timingInfo = c10.c();
        }
        this.f4980a.c(request, a10, timingInfo);
    }

    @Override // com.amazonaws.handlers.RequestHandler2
    public void d(Request<?> request) {
        this.f4980a.b(request);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RequestHandler2Adaptor)) {
            return false;
        }
        return this.f4980a.equals(((RequestHandler2Adaptor) obj).f4980a);
    }

    public int hashCode() {
        return this.f4980a.hashCode();
    }
}
