package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BooleanTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends a<Boolean> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: f */
    public Boolean c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Boolean) {
            return (Boolean) value;
        }
        if (value instanceof String) {
            return d((String) value);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @NotNull
    /* renamed from: g */
    public Boolean d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return Boolean.valueOf(Boolean.parseBoolean(value));
    }
}
