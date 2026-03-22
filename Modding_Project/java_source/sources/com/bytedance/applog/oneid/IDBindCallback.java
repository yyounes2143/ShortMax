package com.bytedance.applog.oneid;

import androidx.annotation.Keep;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Keep
@Metadata
/* loaded from: classes3.dex */
public interface IDBindCallback {
    void onFail(int i10, @Nullable String str);

    void onSuccess(@Nullable IDBindResult iDBindResult);
}
