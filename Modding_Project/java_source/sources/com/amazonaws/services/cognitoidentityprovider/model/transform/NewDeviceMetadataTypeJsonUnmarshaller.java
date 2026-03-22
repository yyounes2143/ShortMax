package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
class NewDeviceMetadataTypeJsonUnmarshaller implements Unmarshaller<NewDeviceMetadataType, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static NewDeviceMetadataTypeJsonUnmarshaller f5886a;

    NewDeviceMetadataTypeJsonUnmarshaller() {
    }

    public static NewDeviceMetadataTypeJsonUnmarshaller b() {
        if (f5886a == null) {
            f5886a = new NewDeviceMetadataTypeJsonUnmarshaller();
        }
        return f5886a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public NewDeviceMetadataType a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        if (!a10.e()) {
            a10.f();
            return null;
        }
        NewDeviceMetadataType newDeviceMetadataType = new NewDeviceMetadataType();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("DeviceKey")) {
                newDeviceMetadataType.f(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("DeviceGroupKey")) {
                newDeviceMetadataType.e(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return newDeviceMetadataType;
    }
}
