package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n extends m {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f70324c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(@NotNull z writer, boolean z10) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f70324c = z10;
    }

    @Override // wt.m
    public void n(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.f70324c) {
            super.n(value);
        } else {
            super.k(value);
        }
    }
}
