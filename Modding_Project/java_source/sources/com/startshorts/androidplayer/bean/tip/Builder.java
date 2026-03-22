package com.startshorts.androidplayer.bean.tip;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builder.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Builder {
    public String content;
    @Nullable
    private View.OnClickListener negativeButtonClickListener;
    @Nullable
    private String negativeButtonText;
    @Nullable
    private View.OnClickListener positiveButtonClickListener;
    @Nullable
    private String positiveButtonText;

    @NotNull
    public final String getContent() {
        String str = this.content;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("content");
        return null;
    }

    @Nullable
    public final View.OnClickListener getNegativeButtonClickListener() {
        return this.negativeButtonClickListener;
    }

    @Nullable
    public final String getNegativeButtonText() {
        return this.negativeButtonText;
    }

    @Nullable
    public final View.OnClickListener getPositiveButtonClickListener() {
        return this.positiveButtonClickListener;
    }

    @Nullable
    public final String getPositiveButtonText() {
        return this.positiveButtonText;
    }

    public final void setContent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    public final void setNegativeButtonClickListener(@Nullable View.OnClickListener onClickListener) {
        this.negativeButtonClickListener = onClickListener;
    }

    public final void setNegativeButtonText(@Nullable String str) {
        this.negativeButtonText = str;
    }

    public final void setPositiveButtonClickListener(@Nullable View.OnClickListener onClickListener) {
        this.positiveButtonClickListener = onClickListener;
    }

    public final void setPositiveButtonText(@Nullable String str) {
        this.positiveButtonText = str;
    }

    @NotNull
    public String toString() {
        return "Builder(content=" + getContent() + ", positiveButtonText=" + this.positiveButtonText + ", positiveButtonClickListener=" + this.positiveButtonClickListener + ", negativeButtonText=" + this.negativeButtonText + ", negativeButtonClickListener=" + this.negativeButtonClickListener + ')';
    }
}
