package com.unity3d.ads.core.extensions;

import com.google.android.gms.ads.AdError;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: JSONObjectExtensions.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJSONObjectExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONObjectExtensions.kt\ncom/unity3d/ads/core/extensions/JSONObjectExtensionsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n759#2,2:14\n775#2,2:16\n778#2:19\n1#3:18\n*S KotlinDebug\n*F\n+ 1 JSONObjectExtensions.kt\ncom/unity3d/ads/core/extensions/JSONObjectExtensionsKt\n*L\n11#1:14,2\n11#1:16,2\n11#1:19\n*E\n"})
/* loaded from: classes7.dex */
public final class JSONObjectExtensionsKt {
    @NotNull
    public static final Map<String, Object> toBuiltInMap(@NotNull JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Iterator<String> keys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "keys()");
        Sequence e10 = j.e(keys);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : e10) {
            Object opt = jSONObject.opt((String) obj);
            if (opt != null) {
                Intrinsics.checkNotNullExpressionValue(opt, "opt(value)");
                if (!Intrinsics.areEqual(String.valueOf(opt), AdError.UNDEFINED_DOMAIN) && !Intrinsics.areEqual(String.valueOf(opt), "null")) {
                    linkedHashMap.put(obj, opt);
                }
            }
            opt = null;
            linkedHashMap.put(obj, opt);
        }
        return linkedHashMap;
    }
}
