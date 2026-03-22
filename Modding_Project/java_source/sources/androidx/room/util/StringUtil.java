package androidx.room.util;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringUtil.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nStringUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringUtil.kt\nandroidx/room/util/StringUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1617#2,9:84\n1869#2:93\n1870#2:95\n1626#2:96\n1#3:94\n*S KotlinDebug\n*F\n+ 1 StringUtil.kt\nandroidx/room/util/StringUtil\n*L\n64#1:84,9\n64#1:93\n64#1:95\n64#1:96\n64#1:94\n*E\n"})
/* loaded from: classes2.dex */
public final class StringUtil {
    @NotNull
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    public static final void appendPlaceholders(@NotNull StringBuilder builder, int i10) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        for (int i11 = 0; i11 < i10; i11++) {
            builder.append("?");
            if (i11 < i10 - 1) {
                builder.append(",");
            }
        }
    }

    @Nullable
    public static final String joinIntoString(@Nullable List<Integer> list) {
        if (list != null) {
            return CollectionsKt.A0(list, ",", null, null, 0, null, null, 62, null);
        }
        return null;
    }

    @c
    @NotNull
    public static final StringBuilder newStringBuilder() {
        return new StringBuilder();
    }

    @Nullable
    public static final List<Integer> splitToIntList(@Nullable String str) {
        List<String> Y0;
        Integer num;
        if (str == null || (Y0 = StringsKt.Y0(str, new char[]{','}, false, 0, 6, null)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : Y0) {
            try {
                num = Integer.valueOf(Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                num = null;
            }
            if (num != null) {
                arrayList.add(num);
            }
        }
        return arrayList;
    }

    @c
    public static /* synthetic */ void getEMPTY_STRING_ARRAY$annotations() {
    }
}
