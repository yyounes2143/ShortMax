package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3161s9 extends AbstractC3145r9 {
    public C3161s9(D9 d92) {
        super(d92);
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C3017j8(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        HashMap hashMap = D9.f23586c;
        C3082n9.a(view, asset.f24581d);
    }
}
