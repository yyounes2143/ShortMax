package com.facebook.drawee.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import f4.b;
import k2.h;
import k2.k;
import r2.d;
@Deprecated
/* loaded from: classes3.dex */
public class SimpleDraweeView extends GenericDraweeView {

    /* renamed from: i  reason: collision with root package name */
    private static k<? extends AbstractDraweeControllerBuilder> f15513i;

    /* renamed from: h  reason: collision with root package name */
    private AbstractDraweeControllerBuilder f15514h;

    public SimpleDraweeView(Context context) {
        super(context);
        n(context, null);
    }

    private void n(Context context, AttributeSet attributeSet) {
        int resourceId;
        try {
            if (b.d()) {
                b.a("SimpleDraweeView#init");
            }
            if (isInEditMode()) {
                getTopLevelDrawable().setVisible(true, false);
                getTopLevelDrawable().invalidateSelf();
            } else {
                h.h(f15513i, "SimpleDraweeView was not initialized!");
                this.f15514h = f15513i.get();
            }
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.facebook.drawee.a.E);
                if (obtainStyledAttributes.hasValue(com.facebook.drawee.a.G)) {
                    setImageURI(Uri.parse(obtainStyledAttributes.getString(com.facebook.drawee.a.G)), (Object) null);
                } else if (obtainStyledAttributes.hasValue(com.facebook.drawee.a.F) && (resourceId = obtainStyledAttributes.getResourceId(com.facebook.drawee.a.F, -1)) != -1) {
                    if (isInEditMode()) {
                        setImageResource(resourceId);
                    } else {
                        setActualImageResource(resourceId);
                    }
                }
                obtainStyledAttributes.recycle();
            }
            if (b.d()) {
                b.b();
            }
        } catch (Throwable th2) {
            if (b.d()) {
                b.b();
            }
            throw th2;
        }
    }

    public AbstractDraweeControllerBuilder getControllerBuilder() {
        return this.f15514h;
    }

    public void setActualImageResource(@DrawableRes int i10) {
        setActualImageResource(i10, null);
    }

    public void setImageRequest(ImageRequest imageRequest) {
        setController(this.f15514h.C(imageRequest).b(getController()).build());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setActualImageResource(@DrawableRes int i10, Object obj) {
        setImageURI(d.g(i10), obj);
    }

    public void setImageURI(String str) {
        setImageURI(str, (Object) null);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        n(context, attributeSet);
    }

    public void setImageURI(Uri uri, Object obj) {
        setController(this.f15514h.A(obj).a(uri).b(getController()).build());
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        n(context, attributeSet);
    }

    public void setImageURI(String str, Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }
}
