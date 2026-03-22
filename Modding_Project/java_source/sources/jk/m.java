package jk;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class m {
    public static final float a(@NotNull List<String> list, int i10) {
        String str;
        Float s10;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= list.size() || (str = (String) CollectionsKt.t0(list, i10)) == null || (s10 = StringsKt.s(str)) == null) {
            return 0.0f;
        }
        return s10.floatValue();
    }

    public static final int b(@NotNull List<String> list, int i10) {
        String str;
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= list.size() || (str = (String) CollectionsKt.t0(list, i10)) == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) {
            return 0;
        }
        return intOrNull.intValue();
    }

    @NotNull
    public static final String c(@NotNull List<String> list, int i10) {
        String str;
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= list.size() || (str = (String) CollectionsKt.t0(list, i10)) == null) {
            return "";
        }
        return str;
    }
}
