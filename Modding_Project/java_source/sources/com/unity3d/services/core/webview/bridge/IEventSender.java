package com.unity3d.services.core.webview.bridge;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IEventSender.kt */
@Metadata
/* loaded from: classes7.dex */
public interface IEventSender {
    boolean canSend();

    boolean sendEvent(@NotNull Enum<?> r12, @NotNull Enum<?> r22, @NotNull Object... objArr);
}
