package com.inmobi.media;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3257y9 extends AbstractC3145r9 {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ D9 f25462e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3257y9(D9 d92) {
        super(d92);
        this.f25462e = d92;
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final View a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new C3114p9(context.getApplicationContext());
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        super.a(view, asset, adConfig);
        if (view instanceof TextView) {
            D9.a(this.f25462e, (TextView) view, asset);
        }
    }

    @Override // com.inmobi.media.AbstractC3145r9
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view instanceof TextView) {
            HashMap hashMap = D9.f23586c;
            TextView textView = (TextView) view;
            textView.setTypeface(Typeface.DEFAULT, 0);
            textView.setPaintFlags(textView.getPaintFlags() & (-17));
            textView.setPaintFlags(textView.getPaintFlags() & (-9));
            super.a(view);
        }
    }
}
