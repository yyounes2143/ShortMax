package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nIframeInjector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IframeInjector.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AssetLoaderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"})
/* loaded from: classes6.dex */
public final class r implements x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f36534a;

    public r(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f36534a = context;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.x
    @NotNull
    public String a(@NotNull String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        InputStream open = this.f36534a.getAssets().open(fileName);
        Intrinsics.checkNotNullExpressionValue(open, "open(...)");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, Charsets.UTF_8), 8192);
        try {
            String h10 = ws.n.h(bufferedReader);
            ws.b.a(bufferedReader, null);
            return h10;
        } finally {
        }
    }
}
