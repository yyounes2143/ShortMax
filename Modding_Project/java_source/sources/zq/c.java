package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DoubleTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c extends a<Double> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: f */
    public Double c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Integer) {
            return Double.valueOf(((Number) value).intValue());
        }
        if (value instanceof Long) {
            return Double.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            return (Double) h.b(this, (String) value, null, 2, null);
        }
        return d(value.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: g */
    public Double d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Double.valueOf(Double.parseDouble(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
