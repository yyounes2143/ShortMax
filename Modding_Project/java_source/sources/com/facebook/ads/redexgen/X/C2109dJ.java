package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.NativeBannerAd;
/* renamed from: com.facebook.ads.redexgen.X.dJ  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2109dJ extends LinearLayout {
    public C2109dJ(C2111dL c2111dL, NativeBannerAd nativeBannerAd, EnumC1770Us enumC1770Us, C1769Ur c1769Ur, AdOptionsView adOptionsView) {
        super(c2111dL);
        TextView textView = new TextView(getContext());
        c1769Ur.A08(textView);
        textView.setText(nativeBannerAd.getAdvertiserName());
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setMaxLines(1);
        TextView textView2 = new TextView(getContext());
        c1769Ur.A06(textView2);
        textView2.setText(nativeBannerAd.getAdUntrimmedBodyText());
        textView2.setLines(enumC1770Us == EnumC1770Us.A07 ? 2 : 1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        linearLayout.addView(textView, layoutParams);
        linearLayout.addView(adOptionsView, new LinearLayout.LayoutParams(-2, -2));
        setOrientation(1);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        addView(linearLayout, layoutParams2);
        addView(textView2, layoutParams2);
    }
}
