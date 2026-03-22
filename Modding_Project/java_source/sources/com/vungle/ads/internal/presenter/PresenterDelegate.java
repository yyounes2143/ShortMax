package com.vungle.ads.internal.presenter;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: PresenterDelegate.kt */
@Metadata
/* loaded from: classes7.dex */
public interface PresenterDelegate {
    @Nullable
    String getAlertBodyText();

    @Nullable
    String getAlertCloseButtonText();

    @Nullable
    String getAlertContinueButtonText();

    @Nullable
    String getAlertTitleText();

    @Nullable
    String getUserId();
}
