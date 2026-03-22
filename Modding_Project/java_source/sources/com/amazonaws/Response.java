package com.amazonaws;

import com.amazonaws.http.HttpResponse;
/* loaded from: classes2.dex */
public final class Response<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f4883a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpResponse f4884b;

    public Response(T t10, HttpResponse httpResponse) {
        this.f4883a = t10;
        this.f4884b = httpResponse;
    }

    public T a() {
        return this.f4883a;
    }
}
