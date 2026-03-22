package io.bidmachine.banner;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdView;
import io.bidmachine.ViewAdObject;
import nm.b;
import xq.e;
import xq.g;
/* loaded from: classes7.dex */
public class BannerView extends AdView<BannerView, a, b, ViewAdObject<b, e, g>, Object> {
    public BannerView(@NonNull Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdView
    /* renamed from: a */
    public a createAd(Context context) {
        return new a(context);
    }

    public BannerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BannerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
