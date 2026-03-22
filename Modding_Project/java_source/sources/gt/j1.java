package gt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MainCoroutineDispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class j1 extends c0 {
    @Override // gt.c0
    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        mt.l.a(i10);
        return mt.l.b(this, str);
    }

    @NotNull
    public abstract j1 m();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String o() {
        j1 j1Var;
        j1 c10 = q0.c();
        if (this == c10) {
            return "Dispatchers.Main";
        }
        try {
            j1Var = c10.m();
        } catch (UnsupportedOperationException unused) {
            j1Var = null;
        }
        if (this != j1Var) {
            return null;
        }
        return "Dispatchers.Main.immediate";
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        String o10 = o();
        if (o10 == null) {
            return h0.a(this) + '@' + h0.b(this);
        }
        return o10;
    }
}
