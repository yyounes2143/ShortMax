package zq;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g extends a<String> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @NotNull
    /* renamed from: f */
    public String c(@NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // zq.a
    @NotNull
    /* renamed from: g */
    public String d(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value;
    }
}
