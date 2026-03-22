package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e extends a<Integer> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: f */
    public Integer c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Number) {
            return Integer.valueOf(((Number) value).intValue());
        }
        if (!(value instanceof String)) {
            return null;
        }
        return (Integer) h.b(this, (String) value, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: g */
    public Integer d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Integer.valueOf(Integer.parseInt(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
