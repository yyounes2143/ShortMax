package com.startshorts.androidplayer.bean.configure;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UrlController.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UrlController {
    @Nullable
    private List<String> alternateDomainGroup;
    @NotNull
    private String shareUrl;
    @NotNull
    private String shareUrlEn;

    public UrlController(@NotNull String shareUrl, @NotNull String shareUrlEn, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(shareUrl, "shareUrl");
        Intrinsics.checkNotNullParameter(shareUrlEn, "shareUrlEn");
        this.shareUrl = shareUrl;
        this.shareUrlEn = shareUrlEn;
        this.alternateDomainGroup = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UrlController copy$default(UrlController urlController, String str, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = urlController.shareUrl;
        }
        if ((i10 & 2) != 0) {
            str2 = urlController.shareUrlEn;
        }
        if ((i10 & 4) != 0) {
            list = urlController.alternateDomainGroup;
        }
        return urlController.copy(str, str2, list);
    }

    @NotNull
    public final String component1() {
        return this.shareUrl;
    }

    @NotNull
    public final String component2() {
        return this.shareUrlEn;
    }

    @Nullable
    public final List<String> component3() {
        return this.alternateDomainGroup;
    }

    @NotNull
    public final UrlController copy(@NotNull String shareUrl, @NotNull String shareUrlEn, @Nullable List<String> list) {
        Intrinsics.checkNotNullParameter(shareUrl, "shareUrl");
        Intrinsics.checkNotNullParameter(shareUrlEn, "shareUrlEn");
        return new UrlController(shareUrl, shareUrlEn, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UrlController)) {
            return false;
        }
        UrlController urlController = (UrlController) obj;
        if (Intrinsics.areEqual(this.shareUrl, urlController.shareUrl) && Intrinsics.areEqual(this.shareUrlEn, urlController.shareUrlEn) && Intrinsics.areEqual(this.alternateDomainGroup, urlController.alternateDomainGroup)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<String> getAlternateDomainGroup() {
        return this.alternateDomainGroup;
    }

    @NotNull
    public final String getShareUrl() {
        return this.shareUrl;
    }

    @NotNull
    public final String getShareUrlEn() {
        return this.shareUrlEn;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.shareUrl.hashCode() * 31) + this.shareUrlEn.hashCode()) * 31;
        List<String> list = this.alternateDomainGroup;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final void setAlternateDomainGroup(@Nullable List<String> list) {
        this.alternateDomainGroup = list;
    }

    public final void setShareUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shareUrl = str;
    }

    public final void setShareUrlEn(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.shareUrlEn = str;
    }

    @NotNull
    public String toString() {
        return "UrlController(shareUrl=" + this.shareUrl + ", shareUrlEn=" + this.shareUrlEn + ", alternateDomainGroup=" + this.alternateDomainGroup + ')';
    }
}
