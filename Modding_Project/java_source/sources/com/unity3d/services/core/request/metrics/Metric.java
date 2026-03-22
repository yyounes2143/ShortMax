package com.unity3d.services.core.request.metrics;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Metric.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Metric {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String METRIC_NAME = "n";
    @NotNull
    private static final String METRIC_TAGS = "t";
    @NotNull
    private static final String METRIC_VALUE = "v";
    @Nullable
    private final String name;
    @NotNull
    private final Map<String, String> tags;
    @Nullable
    private final Object value;

    /* compiled from: Metric.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public Metric(@Nullable String str) {
        this(str, null, null, 6, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Metric copy$default(Metric metric, String str, Object obj, Map map, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            str = metric.name;
        }
        if ((i10 & 2) != 0) {
            obj = metric.value;
        }
        if ((i10 & 4) != 0) {
            map = metric.tags;
        }
        return metric.copy(str, obj, map);
    }

    @Nullable
    public final String component1() {
        return this.name;
    }

    @Nullable
    public final Object component2() {
        return this.value;
    }

    @NotNull
    public final Map<String, String> component3() {
        return this.tags;
    }

    @NotNull
    public final Metric copy(@Nullable String str, @Nullable Object obj, @NotNull Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Metric(str, obj, tags);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Metric)) {
            return false;
        }
        Metric metric = (Metric) obj;
        if (Intrinsics.areEqual(this.name, metric.name) && Intrinsics.areEqual(this.value, metric.value) && Intrinsics.areEqual(this.tags, metric.tags)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final Map<String, String> getTags() {
        return this.tags;
    }

    @Nullable
    public final Object getValue() {
        return this.value;
    }

    public int hashCode() {
        int hashCode;
        String str = this.name;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        Object obj = this.value;
        if (obj != null) {
            i10 = obj.hashCode();
        }
        return ((i11 + i10) * 31) + this.tags.hashCode();
    }

    @NotNull
    public final Map<String, Object> toMap() {
        Map c10 = p0.c();
        String str = this.name;
        if (str != null) {
            c10.put(METRIC_NAME, str);
        }
        Object obj = this.value;
        if (obj != null) {
            c10.put(METRIC_VALUE, obj);
        }
        if (!this.tags.isEmpty()) {
            c10.put("t", this.tags);
        }
        return p0.b(c10);
    }

    @NotNull
    public String toString() {
        return "Metric(name=" + this.name + ", value=" + this.value + ", tags=" + this.tags + ')';
    }

    public Metric(@Nullable String str, @Nullable Object obj) {
        this(str, obj, null, 4, null);
    }

    public Metric(@Nullable String str, @Nullable Object obj, @NotNull Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.name = str;
        this.value = obj;
        this.tags = tags;
    }

    public /* synthetic */ Metric(String str, Object obj, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : obj, (i10 & 4) != 0 ? p0.i() : map);
    }
}
