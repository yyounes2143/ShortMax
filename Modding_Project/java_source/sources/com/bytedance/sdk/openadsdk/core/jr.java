package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.component.embedapplog.IDefaultEncrypt;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class jr implements IDefaultEncrypt {
    private final PangleEncryptConstant.CryptDataScene oJ;

    public jr(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        this.oJ = cryptDataScene;
    }

    @Override // com.bytedance.sdk.component.embedapplog.IDefaultEncrypt
    public JSONObject encrypt(JSONObject jSONObject, int i10) {
        Xe.oJ(1, this.oJ, i10);
        return com.bytedance.sdk.component.utils.oJ.oJ(jSONObject);
    }
}
