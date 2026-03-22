package com.moloco.sdk.acm.http;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAcmHeadersBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AcmHeadersBuilder.kt\ncom/moloco/sdk/acm/http/AcmHeadersBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"})
/* loaded from: classes6.dex */
public final class b {
    public static final Unit a(String str, String str2, String str3, String str4, String str5, String str6, wr.g gVar) {
        Intrinsics.checkNotNullParameter(gVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        if (str != null) {
            sb2.append("AppBundle/" + str + ';');
        }
        if (str2 != null) {
            sb2.append("AppVersion/" + str2 + ';');
        }
        if (str3 != null) {
            sb2.append("AppKey/" + str3 + ';');
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        StringBuilder sb4 = new StringBuilder();
        if (str4 != null) {
            sb4.append("SdkVersion/" + str4 + ';');
        }
        if (str5 != null) {
            sb4.append("Mediator/" + str5 + ';');
        }
        String sb5 = sb4.toString();
        Intrinsics.checkNotNullExpressionValue(sb5, "toString(...)");
        StringBuilder sb6 = new StringBuilder();
        sb6.append("OS/Android;");
        if (str6 != null) {
            sb6.append("osv/" + str6 + ';');
        }
        String sb7 = sb6.toString();
        Intrinsics.checkNotNullExpressionValue(sb7, "toString(...)");
        gVar.f("X-Moloco-App-Info", sb3);
        gVar.f("X-Moloco-Device-Info", sb7);
        gVar.f("X-Moloco-SDK-Info", sb5);
        return Unit.f60915a;
    }

    @NotNull
    public final Function1<wr.g, Unit> b(@Nullable final String str, @Nullable final String str2, @Nullable final String str3, @Nullable final String str4, @Nullable final String str5, @Nullable final String str6) {
        return new Function1() { // from class: com.moloco.sdk.acm.http.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.a(str4, str5, str3, str, str6, str2, (wr.g) obj);
            }
        };
    }
}
