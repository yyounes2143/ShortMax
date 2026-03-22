package com.amazonaws.transform;
/* loaded from: classes2.dex */
public class SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller implements Unmarshaller<Integer, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller f6391a;

    public static SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller b() {
        if (f6391a == null) {
            f6391a = new SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller();
        }
        return f6391a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public Integer a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        String h10 = jsonUnmarshallerContext.a().h();
        if (h10 == null) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(h10));
    }
}
