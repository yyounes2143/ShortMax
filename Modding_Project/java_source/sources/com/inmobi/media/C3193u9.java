package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.u9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3193u9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f25322e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3193u9(D9 d92) {
        super(d92);
        this.f25322e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new K4(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof K4) {
            K4 k42 = (K4) view;
            this.f25322e.getClass();
            HashMap hashMap = D9.f23586c;
            k42.setLayoutParams(new ViewGroup.LayoutParams(C3082n9.a(asset.f24581d.f24637a.x), C3082n9.a(asset.f24581d.f24637a.y)));
            k42.setContentMode(asset.f24581d.f24643g);
            Intrinsics.checkNotNull(asset, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeGifAsset");
            k42.setGifImpl((I4) ((C3160s8) asset).f25270y.getValue());
            C3082n9.a(k42, asset.f24581d);
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof K4) {
            ((K4) view).setGifImpl(null);
            super.a(view);
        }
    }
}
