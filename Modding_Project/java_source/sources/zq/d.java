package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FloatTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d extends a<Float> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: f */
    public Float c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Integer) {
            return Float.valueOf(((Number) value).intValue());
        }
        if (value instanceof Long) {
            return Float.valueOf((float) ((Number) value).longValue());
        }
        if (value instanceof String) {
            return (Float) h.b(this, (String) value, null, 2, null);
        }
        return d(value.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: g */
    public Float d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Float.valueOf(Float.parseFloat(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
