package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonElementBuilders.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonElementBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,231:1\n29#1,3:232\n52#1,3:235\n29#1,3:238\n52#1,3:241\n1557#2:244\n1628#2,3:245\n1557#2:248\n1628#2,3:249\n1557#2:252\n1628#2,3:253\n*S KotlinDebug\n*F\n+ 1 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n*L\n82#1:232,3\n90#1:235,3\n189#1:238,3\n197#1:241,3\n207#1:244\n207#1:245,3\n217#1:248\n217#1:249,3\n227#1:252\n227#1:253,3\n*E\n"})
/* loaded from: classes8.dex */
public final class g {
    @Nullable
    public static final JsonElement a(@NotNull z zVar, @NotNull String key, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(zVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return zVar.b(key, h.a(bool));
    }

    @Nullable
    public static final JsonElement b(@NotNull z zVar, @NotNull String key, @Nullable Number number) {
        Intrinsics.checkNotNullParameter(zVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return zVar.b(key, h.b(number));
    }

    @Nullable
    public static final JsonElement c(@NotNull z zVar, @NotNull String key, @Nullable String str) {
        Intrinsics.checkNotNullParameter(zVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return zVar.b(key, h.c(str));
    }
}
