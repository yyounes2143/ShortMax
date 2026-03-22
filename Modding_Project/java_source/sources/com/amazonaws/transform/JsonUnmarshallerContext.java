package com.amazonaws.transform;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class JsonUnmarshallerContext {

    /* renamed from: a  reason: collision with root package name */
    private final AwsJsonReader f6384a;

    /* renamed from: b  reason: collision with root package name */
    private final HttpResponse f6385b;

    public JsonUnmarshallerContext(AwsJsonReader awsJsonReader, HttpResponse httpResponse) {
        this.f6384a = awsJsonReader;
        this.f6385b = httpResponse;
    }

    public AwsJsonReader a() {
        return this.f6384a;
    }
}
