package wr;

import io.ktor.util.StringValuesBuilderImpl;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Parameters.kt */
@Metadata
/* loaded from: classes8.dex */
public final class r extends StringValuesBuilderImpl implements q {
    public r(int i10) {
        super(true, i10);
    }

    @Override // wr.q
    @NotNull
    public io.ktor.http.e build() {
        return new s(i());
    }
}
