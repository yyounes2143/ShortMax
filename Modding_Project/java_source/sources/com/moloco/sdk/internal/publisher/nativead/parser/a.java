package com.moloco.sdk.internal.publisher.nativead.parser;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.moloco.sdk.internal.publisher.nativead.model.a;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
@StabilityInferred(parameters = 1)
@SourceDebugExtension({"SMAP\nNativeAdOrtbResponseParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdOrtbResponseParser.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/NativeAdOrtbResponseParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"})
/* loaded from: classes6.dex */
public final class a {
    public final a.AbstractC0482a.C0483a a(JSONObject jSONObject, int i10, boolean z10) {
        Integer num;
        Integer num2 = null;
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject.has("type")) {
            num = Integer.valueOf(jSONObject.getInt("type"));
        } else {
            num = null;
        }
        if (jSONObject.has("len")) {
            num2 = Integer.valueOf(jSONObject.getInt("len"));
        }
        String string = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return new a.AbstractC0482a.C0483a(i10, z10, num, num2, string);
    }

    public final a.c b(JSONObject jSONObject) {
        String str = null;
        if (jSONObject == null) {
            return null;
        }
        String string = jSONObject.getString("url");
        if (jSONObject.has("fallback")) {
            str = jSONObject.getString("fallback");
        }
        List<String> h10 = h(jSONObject.optJSONArray("clicktrackers"));
        Intrinsics.checkNotNull(string);
        return new a.c(string, h10, str);
    }

    @NotNull
    public final Object c(@NotNull String nativeOrtbString) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(nativeOrtbString, "nativeOrtbString");
        try {
            JSONObject jSONObject = new JSONObject(nativeOrtbString);
            JSONObject optJSONObject = jSONObject.optJSONObject("native");
            if (optJSONObject != null) {
                jSONObject = optJSONObject;
            }
            Result.a aVar = Result.f60901b;
            if (jSONObject.has("ver")) {
                str = jSONObject.getString("ver");
            } else {
                str = null;
            }
            List<a.AbstractC0482a> d10 = d(jSONObject.optJSONArray("assets"));
            a.c b10 = b(jSONObject.optJSONObject("link"));
            List<String> h10 = h(jSONObject.optJSONArray("imptrackers"));
            List<a.b> f10 = f(jSONObject.optJSONArray("eventtrackers"));
            if (jSONObject.has("privacy")) {
                str2 = jSONObject.getString("privacy");
            } else {
                str2 = null;
            }
            return Result.d(new com.moloco.sdk.internal.publisher.nativead.model.a(str, d10, b10, h10, f10, str2));
        } catch (Exception e10) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(f.a(e10));
        }
    }

    public final List<a.AbstractC0482a> d(JSONArray jSONArray) {
        if (jSONArray == null) {
            return CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            if (jSONObject.has("id")) {
                int i11 = jSONObject.getInt("id");
                boolean z10 = true;
                if (jSONObject.optInt("required", 0) != 1) {
                    z10 = false;
                }
                Object g10 = g(jSONObject.optJSONObject("title"), i11, z10);
                if (g10 == null && (g10 = e(jSONObject.optJSONObject("img"), i11, z10)) == null && (g10 = i(jSONObject.optJSONObject("video"), i11, z10)) == null) {
                    g10 = a(jSONObject.optJSONObject("data"), i11, z10);
                }
                if (g10 != null) {
                    arrayList.add(g10);
                }
            }
        }
        return arrayList;
    }

    public final a.AbstractC0482a.b e(JSONObject jSONObject, int i10, boolean z10) {
        Integer num;
        Integer num2;
        Integer num3 = null;
        if (jSONObject == null) {
            return null;
        }
        if (jSONObject.has("type")) {
            num = Integer.valueOf(jSONObject.getInt("type"));
        } else {
            num = null;
        }
        String string = jSONObject.getString("url");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        if (jSONObject.has(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
            num2 = Integer.valueOf(jSONObject.getInt(SRStrategy.MEDIAINFO_KEY_WIDTH));
        } else {
            num2 = null;
        }
        if (jSONObject.has("h")) {
            num3 = Integer.valueOf(jSONObject.getInt("h"));
        }
        return new a.AbstractC0482a.b(i10, z10, num, string, num2, num3);
    }

    public final List<a.b> f(JSONArray jSONArray) {
        String str;
        if (jSONArray == null) {
            return CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i10);
            int i11 = jSONObject.getInt(NotificationCompat.CATEGORY_EVENT);
            int i12 = jSONObject.getInt("method");
            if (jSONObject.has("url")) {
                str = jSONObject.getString("url");
            } else {
                str = null;
            }
            arrayList.add(new a.b(i11, i12, str));
        }
        return arrayList;
    }

    public final a.AbstractC0482a.c g(JSONObject jSONObject, int i10, boolean z10) {
        Integer num = null;
        if (jSONObject == null) {
            return null;
        }
        String string = jSONObject.getString(MimeTypes.BASE_TYPE_TEXT);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        if (jSONObject.has("len")) {
            num = Integer.valueOf(jSONObject.getInt("len"));
        }
        return new a.AbstractC0482a.c(i10, z10, string, num);
    }

    public final List<String> h(JSONArray jSONArray) {
        if (jSONArray == null) {
            return CollectionsKt.n();
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i10 = 0; i10 < length; i10++) {
            arrayList.add(jSONArray.getString(i10));
        }
        return arrayList;
    }

    public final a.AbstractC0482a.d i(JSONObject jSONObject, int i10, boolean z10) {
        if (jSONObject == null) {
            return null;
        }
        String string = jSONObject.getString("vasttag");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return new a.AbstractC0482a.d(i10, z10, string);
    }
}
