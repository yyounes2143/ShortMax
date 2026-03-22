package com.google.android.recaptcha.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzat extends Lambda implements Function0 {
    public static final zzat zza = new zzat();

    zzat() {
        super(0);
    }

    public static final Map zza() {
        Map map;
        map = zzav.zzc;
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((zzaw) entry.getValue()).zzb());
        }
        return linkedHashMap;
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* bridge */ /* synthetic */ Object invoke() {
        return zza();
    }
}
