package androidx.room.util;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FtsTableInfo.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FtsTableInfoKt {
    public static final boolean equalsCommon(@NotNull FtsTableInfo ftsTableInfo, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(ftsTableInfo, "<this>");
        if (ftsTableInfo == obj) {
            return true;
        }
        if (!(obj instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo2 = (FtsTableInfo) obj;
        if (!Intrinsics.areEqual(ftsTableInfo.name, ftsTableInfo2.name) || !Intrinsics.areEqual(ftsTableInfo.columns, ftsTableInfo2.columns)) {
            return false;
        }
        return Intrinsics.areEqual(ftsTableInfo.options, ftsTableInfo2.options);
    }

    public static final int hashCodeCommon(@NotNull FtsTableInfo ftsTableInfo) {
        Intrinsics.checkNotNullParameter(ftsTableInfo, "<this>");
        return (((ftsTableInfo.name.hashCode() * 31) + ftsTableInfo.columns.hashCode()) * 31) + ftsTableInfo.options.hashCode();
    }

    @NotNull
    public static final String toStringCommon(@NotNull FtsTableInfo ftsTableInfo) {
        Intrinsics.checkNotNullParameter(ftsTableInfo, "<this>");
        return StringsKt.p("\n            |FtsTableInfo {\n            |   name = '" + ftsTableInfo.name + "',\n            |   columns = {" + TableInfoKt.formatString(CollectionsKt.T0(ftsTableInfo.columns)) + "\n            |   options = {" + TableInfoKt.formatString(CollectionsKt.T0(ftsTableInfo.options)) + "\n            |}\n        ", null, 1, null);
    }
}
