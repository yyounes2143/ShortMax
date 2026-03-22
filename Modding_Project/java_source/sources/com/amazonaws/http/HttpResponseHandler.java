package com.amazonaws.http;
/* loaded from: classes2.dex */
public interface HttpResponseHandler<T> {
    boolean a();

    T b(HttpResponse httpResponse) throws Exception;
}
