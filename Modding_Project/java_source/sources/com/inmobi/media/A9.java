package com.inmobi.media;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f23470e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A9(D9 d92) {
        super(d92);
        this.f23470e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return new C3066m9(applicationContext);
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof C3066m9) {
            C3066m9 c3066m9 = (C3066m9) view;
            this.f23470e.getClass();
            HashMap hashMap = D9.f23586c;
            C3082n9.a(c3066m9, asset.f24581d);
            Object obj = asset.f24598u;
            if (obj instanceof Bitmap) {
                c3066m9.setPosterImage((Bitmap) obj);
            }
            c3066m9.getProgressBar().setVisibility(0);
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof C3066m9) {
            C3066m9 c3066m9 = (C3066m9) view;
            c3066m9.getProgressBar().setVisibility(8);
            c3066m9.setPosterImage((Bitmap) null);
            c3066m9.getVideoView().f();
            super.a(view);
        }
    }
}
