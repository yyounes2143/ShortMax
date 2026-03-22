package com.startshorts.androidplayer.bean.search;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchKey.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchKey {
    @Nullable
    private final String key;

    public SearchKey(@Nullable String str) {
        this.key = str;
    }

    public static /* synthetic */ SearchKey copy$default(SearchKey searchKey, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = searchKey.key;
        }
        return searchKey.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.key;
    }

    @NotNull
    public final SearchKey copy(@Nullable String str) {
        return new SearchKey(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SearchKey) && Intrinsics.areEqual(this.key, ((SearchKey) obj).key)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    public int hashCode() {
        String str = this.key;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "SearchKey(key=" + this.key + ')';
    }
}
