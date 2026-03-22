package com.mbridge.msdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.same.image.b;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.tools.p0;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes6.dex */
public class MBImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap f31732a;

    /* renamed from: b  reason: collision with root package name */
    private String f31733b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements c {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            p0.b("mb-widget-imageview", str2 + " load failed:" + str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            MBImageView.this.setImageBitmap(bitmap);
        }
    }

    public MBImageView(Context context) {
        super(context);
        this.f31732a = null;
    }

    private void a() {
        if (getContext() != null) {
            b.a(getContext()).a(this.f31733b, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Bitmap bitmap = this.f31732a;
        if (bitmap != null && bitmap.isRecycled()) {
            p0.b("mb-widget-imageview", "onDraw bitmap recycled");
            a();
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f31732a = bitmap;
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                super.setImageBitmap(bitmap);
                return;
            }
            this.f31732a = null;
            super.setImageBitmap(null);
            p0.b("mb-widget-imageview", "setImageBitmap recycled");
            return;
        }
        super.setImageBitmap(bitmap);
    }

    public void setImageUrl(String str) {
        this.f31733b = str;
    }

    public MBImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31732a = null;
    }

    public MBImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f31732a = null;
    }
}
