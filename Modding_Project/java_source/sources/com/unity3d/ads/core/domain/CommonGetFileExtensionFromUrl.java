package com.unity3d.ads.core.domain;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonGetFileExtensionFromUrl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommonGetFileExtensionFromUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGetFileExtensionFromUrl.kt\ncom/unity3d/ads/core/domain/CommonGetFileExtensionFromUrl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n1#2:14\n*E\n"})
/* loaded from: classes7.dex */
public final class CommonGetFileExtensionFromUrl implements GetFileExtensionFromUrl {
    @NotNull
    private final RemoveUrlQuery removeUrlQuery;

    public CommonGetFileExtensionFromUrl(@NotNull RemoveUrlQuery removeUrlQuery) {
        Intrinsics.checkNotNullParameter(removeUrlQuery, "removeUrlQuery");
        this.removeUrlQuery = removeUrlQuery;
    }

    @NotNull
    public final RemoveUrlQuery getRemoveUrlQuery() {
        return this.removeUrlQuery;
    }

    @Override // com.unity3d.ads.core.domain.GetFileExtensionFromUrl
    @Nullable
    public String invoke(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String invoke = this.removeUrlQuery.invoke(url);
        if (invoke == null) {
            return null;
        }
        String k12 = StringsKt.k1(invoke, '/', null, 2, null);
        if (!StringsKt.a0(k12, '.', false, 2, null)) {
            return null;
        }
        String k13 = StringsKt.k1(k12, '.', null, 2, null);
        if (k13.length() == 0) {
            return null;
        }
        return k13;
    }
}
