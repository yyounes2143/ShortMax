package com.amazonaws;

import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public class ResponseMetadata {

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, String> f4885a;

    public ResponseMetadata(Map<String, String> map) {
        this.f4885a = map;
    }

    public String a() {
        return this.f4885a.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map<String, String> map = this.f4885a;
        if (map == null) {
            return JsonUtils.EMPTY_JSON;
        }
        return map.toString();
    }
}
