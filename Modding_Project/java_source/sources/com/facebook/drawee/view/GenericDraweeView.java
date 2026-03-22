package com.facebook.drawee.view;

import android.content.Context;
import android.util.AttributeSet;
import f4.b;
@Deprecated
/* loaded from: classes3.dex */
public class GenericDraweeView extends DraweeView<com.facebook.drawee.generic.a> {
    public GenericDraweeView(Context context) {
        super(context);
        m(context, null);
    }

    protected void m(Context context, AttributeSet attributeSet) {
        if (b.d()) {
            b.a("GenericDraweeView#inflateHierarchy");
        }
        com.facebook.drawee.generic.b d10 = d3.a.d(context, attributeSet);
        setAspectRatio(d10.f());
        setHierarchy(d10.a());
        if (b.d()) {
            b.b();
        }
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m(context, attributeSet);
    }

    public GenericDraweeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        m(context, attributeSet);
    }
}
