package com.facebook;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FacebookCallback.kt */
@Metadata
/* loaded from: classes3.dex */
public interface k<RESULT> {
    void a(@NotNull FacebookException facebookException);

    void onCancel();

    void onSuccess(RESULT result);
}
