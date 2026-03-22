package wq;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventData.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f70118a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Double f70119b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Struct.Builder f70120c;

    private final Struct.Builder e() {
        Struct.Builder builder = this.f70120c;
        if (builder == null) {
            Struct.Builder newBuilder = Struct.newBuilder();
            this.f70120c = newBuilder;
            Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder().also {\n    …amsBuilder = it\n        }");
            return newBuilder;
        }
        return builder;
    }

    @NotNull
    public final a a(@Nullable Map<String, ? extends Object> map) {
        Struct.Builder e10 = e();
        if (map != null) {
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                Value w10 = fr.e.w(entry.getValue());
                if (w10 != null) {
                    e10.putFields(entry.getKey(), w10);
                }
            }
        }
        return this;
    }

    @Nullable
    public final Struct b() {
        Struct.Builder builder = this.f70120c;
        if (builder != null) {
            return builder.build();
        }
        return null;
    }

    @Nullable
    public final String c() {
        return this.f70118a;
    }

    @Nullable
    public final Double d() {
        return this.f70119b;
    }

    @NotNull
    public final a f(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        e().putFields(key, Value.newBuilder().setStringValue(value).build());
        return this;
    }

    @NotNull
    public final a g(@Nullable Map<String, ? extends Object> map) {
        this.f70120c = fr.e.u(map);
        return this;
    }

    @NotNull
    public final a h(@Nullable String str) {
        this.f70118a = str;
        return this;
    }

    @NotNull
    public final a i(@Nullable Double d10) {
        this.f70119b = d10;
        return this;
    }
}
