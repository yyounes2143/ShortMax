package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3273z9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f25503e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3273z9(D9 d92) {
        super(d92);
        this.f25503e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new T8(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof T8) {
            this.f25503e.getClass();
            D9.a((T8) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof T8) {
            super.a(view);
        }
    }
}
