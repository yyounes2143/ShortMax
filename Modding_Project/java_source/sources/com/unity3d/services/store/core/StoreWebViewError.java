package com.unity3d.services.store.core;

import com.unity3d.scar.adapter.common.l;
import com.unity3d.services.core.webview.WebViewEventCategory;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StoreWebViewError.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StoreWebViewError extends l {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreWebViewError(@Nullable Enum<?> r22, @Nullable String str, @NotNull Object... errorArguments) {
        super(r22, str, Arrays.copyOf(errorArguments, errorArguments.length));
        Intrinsics.checkNotNullParameter(errorArguments, "errorArguments");
    }

    @Override // com.unity3d.scar.adapter.common.l
    @NotNull
    public String getDomain() {
        return WebViewEventCategory.STORE.name();
    }
}
