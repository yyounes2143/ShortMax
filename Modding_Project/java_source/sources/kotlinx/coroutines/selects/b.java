package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: OnTimeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <R> void a(@NotNull pt.a<? super R> aVar, long j10, @NotNull Function1<? super c<? super R>, ? extends Object> function1) {
        aVar.c(new OnTimeout(j10).c(), function1);
    }
}
