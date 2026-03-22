package com.bytedance.bdtracker;

import com.bytedance.applog.InitConfig;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public final class j2 {

    /* renamed from: b  reason: collision with root package name */
    public static final j2 f12101b = new j2();

    /* renamed from: a  reason: collision with root package name */
    public static final Map<InitConfig, Boolean> f12100a = new LinkedHashMap();

    public static final boolean a(@NotNull InitConfig config) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        Boolean bool = f12100a.get(config);
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @NotNull
    public static final Object b(@NotNull InitConfig config) {
        Intrinsics.checkParameterIsNotNull(config, "config");
        Map<InitConfig, Boolean> map = f12100a;
        Boolean bool = map.get(config);
        if (bool == null) {
            map.put(config, Boolean.TRUE);
            return Unit.f60915a;
        }
        return bool;
    }
}
