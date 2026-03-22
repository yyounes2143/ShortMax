package com.startshorts.androidplayer.bean.download;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadManagerHeader.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DownloadManagerHeader extends DownloadManagerItem {
    @NotNull
    private String title;

    public DownloadManagerHeader(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
    }

    public static /* synthetic */ DownloadManagerHeader copy$default(DownloadManagerHeader downloadManagerHeader, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = downloadManagerHeader.title;
        }
        return downloadManagerHeader.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final DownloadManagerHeader copy(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new DownloadManagerHeader(title);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DownloadManagerHeader) && Intrinsics.areEqual(this.title, ((DownloadManagerHeader) obj).title)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return this.title.hashCode();
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "DownloadManagerHeader(title=" + this.title + ')';
    }
}
