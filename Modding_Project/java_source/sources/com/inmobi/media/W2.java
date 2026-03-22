package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.unity3d.services.UnityAdsConstants;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class W2 {

    /* renamed from: a  reason: collision with root package name */
    public final Config f24326a;

    /* renamed from: b  reason: collision with root package name */
    public final int f24327b;

    /* renamed from: c  reason: collision with root package name */
    public R2 f24328c;

    public W2(JSONObject jSONObject, Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.f24326a = config;
        int i10 = -1;
        this.f24327b = -1;
        if (jSONObject != null) {
            try {
                int i11 = jSONObject.getInt("status");
                if (i11 != 200) {
                    if (i11 != 304) {
                        int i12 = 404;
                        if (i11 != 404) {
                            i12 = 500;
                            if (i11 != 500) {
                            }
                        }
                        i10 = i12;
                    } else {
                        i10 = 304;
                    }
                } else {
                    i10 = 200;
                }
                this.f24327b = i10;
                if (i10 == 200) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("content");
                    G2 g22 = Config.Companion;
                    String type = config.getType();
                    Intrinsics.checkNotNull(jSONObject2);
                    String accountId$media_release = config.getAccountId$media_release();
                    long currentTimeMillis = System.currentTimeMillis();
                    g22.getClass();
                    Config a10 = G2.a(type, jSONObject2, accountId$media_release, currentTimeMillis);
                    if (a10 == null) {
                        this.f24328c = new R2((byte) 3, "The received config has failed backend contract.");
                    } else {
                        this.f24326a = a10;
                    }
                    Intrinsics.checkNotNullExpressionValue("a3", "access$getTAG$cp(...)");
                    this.f24326a.getType();
                    this.f24326a.isValid();
                    if (!this.f24326a.isValid()) {
                        R2 r22 = new R2((byte) 2, "The received config has failed validation.");
                        Intrinsics.checkNotNullExpressionValue("a3", "access$getTAG$cp(...)");
                        this.f24326a.getType();
                        this.f24328c = r22;
                    }
                } else if (i10 == 304) {
                    Intrinsics.checkNotNullExpressionValue("a3", "access$getTAG$cp(...)");
                    config.getType();
                } else {
                    R2 r23 = new R2((byte) 1, UnityAdsConstants.Messages.MSG_INTERNAL_ERROR);
                    Intrinsics.checkNotNullExpressionValue("a3", "access$getTAG$cp(...)");
                    config.getType();
                    this.f24328c = r23;
                }
            } catch (JSONException e10) {
                String localizedMessage = e10.getLocalizedMessage();
                R2 r24 = new R2((byte) 2, localizedMessage == null ? "Exception in config validation" : localizedMessage);
                this.f24326a.getType();
                this.f24328c = r24;
            }
        }
    }
}
