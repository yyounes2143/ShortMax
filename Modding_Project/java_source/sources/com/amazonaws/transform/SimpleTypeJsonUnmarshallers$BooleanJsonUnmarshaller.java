package com.amazonaws.transform;
/* loaded from: classes2.dex */
public class SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller implements Unmarshaller<Boolean, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller f6388a;

    public static SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller b() {
        if (f6388a == null) {
            f6388a = new SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller();
        }
        return f6388a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public Boolean a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        String h10 = jsonUnmarshallerContext.a().h();
        if (h10 == null) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(h10));
    }
}
