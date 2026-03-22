package com.unity3d.ads.datastore;

import com.unity3d.ads.datastore.UniversalRequestStoreKt;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: UniversalRequestStoreKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUniversalRequestStoreKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestStoreKt.kt\ncom/unity3d/ads/datastore/UniversalRequestStoreKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes7.dex */
public final class UniversalRequestStoreKtKt {
    @NotNull
    /* renamed from: -initializeuniversalRequestStore  reason: not valid java name */
    public static final UniversalRequestStoreOuterClass.UniversalRequestStore m4731initializeuniversalRequestStore(@NotNull Function1<? super UniversalRequestStoreKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalRequestStoreKt.Dsl.Companion companion = UniversalRequestStoreKt.Dsl.Companion;
        UniversalRequestStoreOuterClass.UniversalRequestStore.Builder newBuilder = UniversalRequestStoreOuterClass.UniversalRequestStore.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        UniversalRequestStoreKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalRequestStoreOuterClass.UniversalRequestStore copy(@NotNull UniversalRequestStoreOuterClass.UniversalRequestStore universalRequestStore, @NotNull Function1<? super UniversalRequestStoreKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(universalRequestStore, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalRequestStoreKt.Dsl.Companion companion = UniversalRequestStoreKt.Dsl.Companion;
        UniversalRequestStoreOuterClass.UniversalRequestStore.Builder builder = universalRequestStore.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UniversalRequestStoreKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
