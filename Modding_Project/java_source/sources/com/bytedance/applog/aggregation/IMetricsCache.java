package com.bytedance.applog.aggregation;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public interface IMetricsCache {
    void clear();

    @Nullable
    Metrics get(@NotNull String str);

    @NotNull
    List<Metrics> getAll();

    @NotNull
    List<Metrics> getByMetricsName(@NotNull String str);

    void insert(@NotNull String str, @NotNull Metrics metrics);

    void update(@NotNull String str, @NotNull Metrics metrics);
}
