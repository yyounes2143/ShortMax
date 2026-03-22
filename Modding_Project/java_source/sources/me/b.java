package me;

import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: IAppConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public interface b<T> {
    @Nullable
    Object a(@NotNull String str, @NotNull c<? super Boolean> cVar);

    @Nullable
    Object b(@NotNull c<? super Unit> cVar);

    void c(boolean z10);

    @Nullable
    Object d(@NotNull Context context, @NotNull c<? super Unit> cVar);

    boolean e();

    T value();
}
