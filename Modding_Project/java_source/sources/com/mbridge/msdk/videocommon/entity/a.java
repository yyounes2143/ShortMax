package com.mbridge.msdk.videocommon.entity;

import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import org.json.JSONObject;
/* compiled from: AdParams.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f31655a;

    /* renamed from: b  reason: collision with root package name */
    private String f31656b;

    public a(String str, String str2) {
        this.f31655a = str;
        this.f31656b = str2;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                return new a(jSONObject.optString("appId"), jSONObject.optString(HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID));
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }
}
