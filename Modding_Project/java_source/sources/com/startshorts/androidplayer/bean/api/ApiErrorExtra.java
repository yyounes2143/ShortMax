package com.startshorts.androidplayer.bean.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiErrorExtra.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ApiErrorExtra {
    private int realCode;
    @Nullable
    private String realMessage;

    public final int getRealCode() {
        return this.realCode;
    }

    @Nullable
    public final String getRealMessage() {
        return this.realMessage;
    }

    public final void setRealCode(int i10) {
        this.realCode = i10;
    }

    public final void setRealMessage(@Nullable String str) {
        this.realMessage = str;
    }

    @NotNull
    public String toString() {
        return "ApiErrorExtra(realCode=" + this.realCode + ", realMessage=" + this.realMessage + ')';
    }
}
