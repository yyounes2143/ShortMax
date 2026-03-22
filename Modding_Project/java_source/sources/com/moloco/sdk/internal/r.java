package com.moloco.sdk.internal;

import com.moloco.sdk.publisher.MediationInfo;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nHeadersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadersBuilder.kt\ncom/moloco/sdk/internal/HeadersBuilderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"})
/* loaded from: classes6.dex */
public final class r {
    public static final void a(@NotNull wr.g gVar, @Nullable String str, @Nullable String str2, @Nullable MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(gVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        if (str != null) {
            sb2.append("MolocoSDK/" + str + ';');
        }
        if (mediationInfo != null) {
            sb2.append("Mediator/" + mediationInfo.getName() + ';');
        }
        if (str2 != null) {
            sb2.append("Android/" + str2 + ';');
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        gVar.f("X-Moloco-User-Agent", sb3);
    }

    public static /* synthetic */ void b(wr.g gVar, String str, String str2, MediationInfo mediationInfo, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            mediationInfo = null;
        }
        a(gVar, str, str2, mediationInfo);
    }
}
