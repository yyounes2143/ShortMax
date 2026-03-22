package com.unity3d.services.core.fid;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Constants.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Constants {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String FID_CLASS = "com.google.firebase.analytics.FirebaseAnalytics";
    @NotNull
    public static final String GET_APP_INSTANCE_ID = "getAppInstanceId";
    @NotNull
    public static final String GET_INSTANCE = "getInstance";

    /* compiled from: Constants.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getClassName() {
            return Constants.FID_CLASS;
        }

        private Companion() {
        }
    }
}
