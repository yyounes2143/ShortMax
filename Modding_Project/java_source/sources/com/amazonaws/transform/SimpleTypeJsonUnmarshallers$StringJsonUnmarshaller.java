package com.amazonaws.transform;
/* loaded from: classes2.dex */
public class SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller implements Unmarshaller<String, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller f6392a;

    public static SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller b() {
        if (f6392a == null) {
            f6392a = new SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller();
        }
        return f6392a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public String a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        return jsonUnmarshallerContext.a().h();
    }
}
