package com.moloco.sdk.acm.db;

import androidx.room.TypeConverter;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class a {
    @TypeConverter
    @NotNull
    public final c a(@NotNull String eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return c.valueOf(eventType);
    }

    @TypeConverter
    @NotNull
    public final String b(@NotNull c eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        return eventType.name();
    }

    @TypeConverter
    @NotNull
    public final String c(@NotNull List<String> tags) {
        Intrinsics.checkNotNullParameter(tags, "tags");
        return CollectionsKt.A0(tags, ",", null, null, 0, null, null, 62, null);
    }

    @TypeConverter
    @NotNull
    public final List<String> d(@NotNull String tagsString) {
        Intrinsics.checkNotNullParameter(tagsString, "tagsString");
        if (tagsString.length() == 0) {
            return CollectionsKt.n();
        }
        return StringsKt.split$default(tagsString, new String[]{","}, false, 0, 6, null);
    }
}
