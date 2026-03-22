package com.moloco.sdk.internal.utils;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nMacroUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MacroUtils.kt\ncom/moloco/sdk/internal/utils/MacroUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n1#2:28\n*E\n"})
/* loaded from: classes6.dex */
public final class d {
    @NotNull
    public static final String a(@NotNull String substituteCountDownTimeLeftMacro, int i10) {
        Intrinsics.checkNotNullParameter(substituteCountDownTimeLeftMacro, "$this$substituteCountDownTimeLeftMacro");
        return StringsKt.P(substituteCountDownTimeLeftMacro, "[SECONDS_LEFT]", b.a(i10), false, 4, null);
    }

    @NotNull
    public static final String b(@NotNull String str, long j10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.P(str, "[HAPPENED_AT_TS]", String.valueOf(j10), false, 4, null);
    }

    @NotNull
    public static final String c(@NotNull String str, @NotNull String errorCode) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        return StringsKt.P(str, "[ERROR_CODE]", errorCode, false, 4, null);
    }

    @NotNull
    public static final String d(@NotNull String str, @NotNull String errorCode, long j10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        return b(c(str, errorCode), j10);
    }

    @NotNull
    public static final String e(@NotNull String str, @Nullable String str2) {
        String P;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str2 != null && (P = StringsKt.P(str, "[MTID]", str2, false, 4, null)) != null) {
            return P;
        }
        return str;
    }
}
