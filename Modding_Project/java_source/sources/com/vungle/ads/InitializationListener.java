package com.vungle.ads;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: InitializationListener.kt */
@Metadata
/* loaded from: classes7.dex */
public interface InitializationListener {
    void onError(@NotNull VungleError vungleError);

    void onSuccess();
}
