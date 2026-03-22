package io.bidmachine;

import com.explorestack.protobuf.Struct;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CustomParams.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CustomParams {
    @NotNull
    private final Map<String, Object> customMap = new LinkedHashMap();

    /* renamed from: addParams  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m4921addParams(Map map) {
        return addParams((Map<String, String>) map);
    }

    public final void fillStructBuilder(@NotNull Struct.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        fr.e.e(builder, this.customMap);
    }

    @NotNull
    public CustomParams addParams(@NotNull Map<String, String> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.customMap.putAll(params);
        return this;
    }

    @NotNull
    /* renamed from: addParam */
    public CustomParams m4919addParam(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.customMap.put(key, value);
        return this;
    }

    @NotNull
    /* renamed from: addParam */
    public CustomParams m4918addParam(@NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Integer.valueOf(i10));
        return this;
    }

    @NotNull
    /* renamed from: addParam */
    public CustomParams m4917addParam(@NotNull String key, float f10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Float.valueOf(f10));
        return this;
    }

    @NotNull
    /* renamed from: addParam */
    public CustomParams m4916addParam(@NotNull String key, double d10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Double.valueOf(d10));
        return this;
    }

    @NotNull
    /* renamed from: addParam */
    public CustomParams m4920addParam(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.customMap.put(key, Boolean.valueOf(z10));
        return this;
    }
}
