package pt;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: Select.kt */
@Metadata
/* loaded from: classes8.dex */
public interface a<R> {
    void c(@NotNull b bVar, @NotNull Function1<? super rs.c<? super R>, ? extends Object> function1);

    <Q> void d(@NotNull d<? extends Q> dVar, @NotNull Function2<? super Q, ? super rs.c<? super R>, ? extends Object> function2);
}
