package com.applovin.impl;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class p7 {

    /* renamed from: f  reason: collision with root package name */
    private static final List f9218f = Arrays.asList(MimeTypes.VIDEO_MP4, "video/webm", MimeTypes.VIDEO_H263, "video/x-matroska");

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f9219a;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f9221c;

    /* renamed from: d  reason: collision with root package name */
    private final JSONObject f9222d;

    /* renamed from: b  reason: collision with root package name */
    protected List f9220b = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final long f9223e = System.currentTimeMillis();

    public p7(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        this.f9219a = kVar;
        this.f9221c = jSONObject;
        this.f9222d = jSONObject2;
    }

    public List a() {
        return this.f9220b;
    }

    public JSONObject b() {
        return this.f9221c;
    }

    public long c() {
        return this.f9223e;
    }

    public int d() {
        return this.f9220b.size();
    }

    public JSONObject e() {
        return this.f9222d;
    }

    public List f() {
        List<String> explode = CollectionUtils.explode(JsonUtils.getString(this.f9221c, "vast_preferred_video_types", null));
        if (explode.isEmpty()) {
            return f9218f;
        }
        return explode;
    }

    public int g() {
        return k7.c(JsonUtils.getInt(this.f9221c, "video_completion_percent", -1));
    }
}
