package com.unity3d.services.core.device.reader.pii;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: NonBehavioralFlag.kt */
@Metadata
/* loaded from: classes7.dex */
public enum NonBehavioralFlag {
    UNKNOWN,
    TRUE,
    FALSE;
    
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: NonBehavioralFlag.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nNonBehavioralFlag.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NonBehavioralFlag.kt\ncom/unity3d/services/core/device/reader/pii/NonBehavioralFlag$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,12:1\n1#2:13\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NonBehavioralFlag fromString(@NotNull String value) {
            NonBehavioralFlag d10;
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                Result.a aVar = Result.f60901b;
                String upperCase = value.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                d10 = Result.d(NonBehavioralFlag.valueOf(upperCase));
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            NonBehavioralFlag nonBehavioralFlag = NonBehavioralFlag.UNKNOWN;
            if (Result.i(d10)) {
                d10 = nonBehavioralFlag;
            }
            return (NonBehavioralFlag) d10;
        }

        private Companion() {
        }
    }
}
