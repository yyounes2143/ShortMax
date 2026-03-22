package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LongTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f extends a<Long> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: f */
    public Long c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (value instanceof Number) {
            return Long.valueOf(((Number) value).longValue());
        }
        if (!(value instanceof String)) {
            return null;
        }
        return (Long) h.b(this, (String) value, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @Nullable
    /* renamed from: g */
    public Long d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        try {
            return Long.valueOf(Long.parseLong(value));
        } catch (Throwable unused) {
            return null;
        }
    }
}
