package androidx.work;

import androidx.work.Data;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Data.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DataKt {
    public static final /* synthetic */ <T> boolean hasKeyWithValueOfType(Data data, String key) {
        Intrinsics.checkNotNullParameter(data, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return data.hasKeyWithValueOfType(key, Object.class);
    }

    @NotNull
    public static final Data workDataOf(@NotNull Pair<String, ? extends Object>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        Data.Builder builder = new Data.Builder();
        for (Pair<String, ? extends Object> pair : pairs) {
            builder.put(pair.e(), pair.f());
        }
        Data build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "dataBuilder.build()");
        return build;
    }
}
