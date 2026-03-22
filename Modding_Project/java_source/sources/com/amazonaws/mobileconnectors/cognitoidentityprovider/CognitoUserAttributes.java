package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class CognitoUserAttributes {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f5540a;

    public CognitoUserAttributes() {
        this(null);
    }

    public void a(String str, String str2) {
        this.f5540a.put(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<AttributeType> b() {
        ArrayList arrayList = new ArrayList();
        Map<String, String> map = this.f5540a;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.e(entry.getKey());
                attributeType.f(entry.getValue());
                arrayList.add(attributeType);
            }
        }
        return arrayList;
    }

    protected CognitoUserAttributes(List<AttributeType> list) {
        this.f5540a = new HashMap();
        if (list != null) {
            for (AttributeType attributeType : list) {
                this.f5540a.put(attributeType.b(), attributeType.d());
            }
        }
    }
}
