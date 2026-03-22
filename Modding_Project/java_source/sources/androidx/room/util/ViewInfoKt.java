package androidx.room.util;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewInfo.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewInfoKt {
    public static final boolean equalsCommon(@NotNull ViewInfo viewInfo, @Nullable Object obj) {
        boolean z10;
        Intrinsics.checkNotNullParameter(viewInfo, "<this>");
        if (viewInfo == obj) {
            return true;
        }
        if (!(obj instanceof ViewInfo)) {
            return false;
        }
        ViewInfo viewInfo2 = (ViewInfo) obj;
        if (Intrinsics.areEqual(viewInfo.name, viewInfo2.name)) {
            String str = viewInfo.sql;
            if (str != null) {
                z10 = Intrinsics.areEqual(str, viewInfo2.sql);
            } else if (viewInfo2.sql == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    public static final int hashCodeCommon(@NotNull ViewInfo viewInfo) {
        int i10;
        Intrinsics.checkNotNullParameter(viewInfo, "<this>");
        int hashCode = viewInfo.name.hashCode() * 31;
        String str = viewInfo.sql;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public static final String toStringCommon(@NotNull ViewInfo viewInfo) {
        Intrinsics.checkNotNullParameter(viewInfo, "<this>");
        return StringsKt.p("\n            |ViewInfo {\n            |   name = '" + viewInfo.name + "',\n            |   sql = '" + viewInfo.sql + "'\n            |}\n        ", null, 1, null);
    }
}
