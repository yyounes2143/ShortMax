package com.inmobi.media;

import android.content.Context;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.v5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3205v5 extends S1 {

    /* renamed from: c  reason: collision with root package name */
    public static final C3205v5 f25357c = new C3205v5();

    /* renamed from: d  reason: collision with root package name */
    public static final AtomicBoolean f25358d = new AtomicBoolean(true);

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        AtomicBoolean atomicBoolean = f25358d;
        jSONObject.put("a-audioBannerEnabled", String.valueOf(atomicBoolean.get()));
        if (!atomicBoolean.get()) {
            return jSONObject;
        }
        long j10 = this.f24100a / 1000;
        if (j10 != 0) {
            jSONObject.put("a-lastAudioBannerPlayedTs", String.valueOf(j10));
        }
        int i10 = this.f24101b;
        if (i10 > 0) {
            jSONObject.put("a-audioBannerFreq", String.valueOf(i10));
        }
        Context d10 = Uc.d();
        if (d10 != null) {
            ConcurrentHashMap concurrentHashMap = C6.f23529b;
            C6 a10 = B6.a(d10, "banner_audio_pref_file");
            Intrinsics.checkNotNullParameter("user_mute_count", "key");
            int i11 = a10.f23530a.getInt("user_mute_count", -1);
            if (i11 > 0) {
                jSONObject.put("a-b-umc", String.valueOf(i11));
            }
        }
        return jSONObject;
    }
}
