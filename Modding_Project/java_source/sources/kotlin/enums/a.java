package kotlin.enums;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnumEntries.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull
    public static final <E extends Enum<E>> ss.a<E> a(@NotNull E[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        return new EnumEntriesList(entries);
    }
}
