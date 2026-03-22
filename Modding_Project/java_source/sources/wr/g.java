package wr;

import io.ktor.util.StringValuesBuilderImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Headers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g extends StringValuesBuilderImpl {
    public g() {
        this(0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.util.StringValuesBuilderImpl
    public void l(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        super.l(name);
        i.f70141a.a(name);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.util.StringValuesBuilderImpl
    public void m(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        super.m(value);
        i.f70141a.b(value);
    }

    @NotNull
    public f n() {
        return new h(i());
    }

    public g(int i10) {
        super(true, i10);
    }

    public /* synthetic */ g(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
