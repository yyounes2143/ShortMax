package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: GetLatestWebViewConfiguration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GetLatestWebViewConfiguration {
    @NotNull
    private final WebviewConfigurationDataSource webviewConfigurationDataSource;

    public GetLatestWebViewConfiguration(@NotNull WebviewConfigurationDataSource webviewConfigurationDataSource) {
        Intrinsics.checkNotNullParameter(webviewConfigurationDataSource, "webviewConfigurationDataSource");
        this.webviewConfigurationDataSource = webviewConfigurationDataSource;
    }

    public static /* synthetic */ Object invoke$default(GetLatestWebViewConfiguration getLatestWebViewConfiguration, String str, Integer num, List list, String str2, c cVar, int i10, Object obj) {
        String str3;
        Integer num2;
        List list2;
        String str4;
        if ((i10 & 1) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 2) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i10 & 4) != 0) {
            list2 = null;
        } else {
            list2 = list;
        }
        if ((i10 & 8) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        return getLatestWebViewConfiguration.invoke(str3, num2, list2, str4, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.Nullable java.lang.String r10, @org.jetbrains.annotations.Nullable java.lang.Integer r11, @org.jetbrains.annotations.Nullable java.util.List<java.lang.String> r12, @org.jetbrains.annotations.Nullable java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.ads.core.data.model.WebViewConfiguration> r14) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.GetLatestWebViewConfiguration.invoke(java.lang.String, java.lang.Integer, java.util.List, java.lang.String, rs.c):java.lang.Object");
    }
}
