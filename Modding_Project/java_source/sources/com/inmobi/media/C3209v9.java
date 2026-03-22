package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.v9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3209v9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f25374e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3209v9(D9 d92) {
        super(d92);
        this.f25374e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new ImageView(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof ImageView) {
            D9.a(this.f25374e, (ImageView) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof ImageView) {
            ((ImageView) view).setImageDrawable(null);
            super.a(view);
        }
    }
}
