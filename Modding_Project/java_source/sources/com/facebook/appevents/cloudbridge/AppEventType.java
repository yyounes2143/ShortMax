package com.facebook.appevents.cloudbridge;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum AppEventType {
    MOBILE_APP_INSTALL,
    CUSTOM,
    OTHER;
    
    @NotNull
    public static final a Companion = new a(null);

    /* compiled from: AppEventsConversionsAPITransformer.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AppEventType a(@NotNull String rawValue) {
            Intrinsics.checkNotNullParameter(rawValue, "rawValue");
            if (Intrinsics.areEqual(rawValue, "MOBILE_APP_INSTALL")) {
                return AppEventType.MOBILE_APP_INSTALL;
            }
            if (Intrinsics.areEqual(rawValue, "CUSTOM_APP_EVENTS")) {
                return AppEventType.CUSTOM;
            }
            return AppEventType.OTHER;
        }

        private a() {
        }
    }
}
