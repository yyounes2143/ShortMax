package com.google.ads.mediation.facebook;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FacebookSdkWrapper.kt */
@Metadata
/* loaded from: classes4.dex */
public final class FacebookSdkWrapper {
    @NotNull
    public static final FacebookSdkWrapper INSTANCE = new FacebookSdkWrapper();

    private FacebookSdkWrapper() {
    }

    @NotNull
    public static final String getSdkVersion() {
        return "6.20.0";
    }

    public static /* synthetic */ void getSdkVersion$annotations() {
    }
}
