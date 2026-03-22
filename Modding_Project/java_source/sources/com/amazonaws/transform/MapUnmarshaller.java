package com.amazonaws.transform;

import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.AwsJsonToken;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class MapUnmarshaller<V> implements Unmarshaller<Map<String, V>, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private final Unmarshaller<V, JsonUnmarshallerContext> f6386a;

    public MapUnmarshaller(Unmarshaller<V, JsonUnmarshallerContext> unmarshaller) {
        this.f6386a = unmarshaller;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public Map<String, V> a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        if (a10.peek() == AwsJsonToken.VALUE_NULL) {
            a10.f();
            return null;
        }
        HashMap hashMap = new HashMap();
        a10.c();
        while (a10.hasNext()) {
            hashMap.put(a10.g(), this.f6386a.a(jsonUnmarshallerContext));
        }
        a10.d();
        return hashMap;
    }
}
