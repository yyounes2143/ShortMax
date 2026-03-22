package com.startshorts.androidplayer.ui.view.fresco;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.drawee.view.GenericDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import k2.h;
import k2.k;
import kk.f;
import r2.d;
/* loaded from: classes7.dex */
public class CustomFrescoView extends GenericDraweeView {

    /* renamed from: i  reason: collision with root package name */
    private static k<? extends AbstractDraweeControllerBuilder> f47258i;

    /* renamed from: h  reason: collision with root package name */
    private AbstractDraweeControllerBuilder f47259h;

    public CustomFrescoView(Context context) {
        super(context);
        n(context, null);
    }

    private void n(Context context, @Nullable AttributeSet attributeSet) {
        if (!f.f60747a.g()) {
            return;
        }
        h.h(f47258i, "SimpleDraweeView was not initialized!");
        this.f47259h = f47258i.get();
    }

    public static void o(k<? extends AbstractDraweeControllerBuilder> kVar) {
        f47258i = kVar;
    }

    protected AbstractDraweeControllerBuilder getControllerBuilder() {
        return this.f47259h;
    }

    public void setActualImageResource(@DrawableRes int i10) {
        setActualImageResource(i10, null);
    }

    public void setImageRequest(ImageRequest imageRequest) {
        setController(this.f47259h.C(imageRequest).b(getController()).build());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setActualImageResource(@DrawableRes int i10, @Nullable Object obj) {
        setImageURI(d.g(i10), obj);
    }

    public void setImageURI(@Nullable String str) {
        setImageURI(str, (Object) null);
    }

    public CustomFrescoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        n(context, attributeSet);
    }

    public void setImageURI(Uri uri, @Nullable Object obj) {
        setController(this.f47259h.A(obj).a(uri).b(getController()).build());
    }

    public CustomFrescoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        n(context, attributeSet);
    }

    public void setImageURI(@Nullable String str, @Nullable Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }
}
