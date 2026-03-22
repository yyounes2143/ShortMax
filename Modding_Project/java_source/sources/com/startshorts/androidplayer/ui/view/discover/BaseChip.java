package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.compose.ui.graphics.a1;
import androidx.compose.ui.graphics.b1;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseChip.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseChip extends BaseConstraintLayout {

    /* renamed from: b  reason: collision with root package name */
    private boolean f47204b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ImageView f47205c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private TextView f47206d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final ShapeDrawable y(int i10) {
        float w10 = w();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{w10, w10, w10, w10, w10, w10, w10, w10}, null, null));
        shapeDrawable.getPaint().setColor(i10);
        return shapeDrawable;
    }

    public final boolean A() {
        return this.f47204b;
    }

    @NotNull
    public abstract String B();

    public final void C() {
        Drawable drawable;
        BlendMode blendMode;
        Drawable.ConstantState constantState;
        Drawable newDrawable;
        setBackground(y(v()));
        Drawable drawable2 = ContextCompat.getDrawable(getContext(), z());
        if (drawable2 != null && (constantState = drawable2.getConstantState()) != null && (newDrawable = constantState.newDrawable()) != null) {
            drawable = newDrawable.mutate();
        } else {
            drawable = null;
        }
        int x10 = x();
        if (Build.VERSION.SDK_INT >= 29) {
            if (drawable != null) {
                b1.a();
                blendMode = BlendMode.SRC_ATOP;
                drawable.setColorFilter(a1.a(x10, blendMode));
            }
        } else if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(x10, PorterDuff.Mode.SRC_ATOP));
        }
        ImageView imageView = this.f47205c;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
        TextView textView = this.f47206d;
        if (textView != null) {
            textView.setTextColor(x10);
            textView.setText(B());
        }
    }

    public final void setChecked(boolean z10) {
        this.f47204b = z10;
        C();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47205c = (ImageView) getRootView().findViewById(R$id.icon_iv);
        TextView textView = (TextView) getRootView().findViewById(R$id.content_tv);
        if (textView != null) {
            textView.setMaxLines(1);
            textView.setEllipsize(TextUtils.TruncateAt.END);
        } else {
            textView = null;
        }
        this.f47206d = textView;
    }

    public int v() {
        int i10;
        if (this.f47204b) {
            i10 = R$color.color_discover_fragment_2_chip_bg_checked;
        } else {
            i10 = R$color.color_discover_fragment_2_chip_bg_unchecked;
        }
        return ContextCompat.getColor(getContext(), i10);
    }

    public float w() {
        return z.f51786a.m();
    }

    public int x() {
        int i10;
        if (this.f47204b) {
            i10 = R$color.color_discover_fragment_2_chip_content_checked;
        } else {
            i10 = R$color.color_discover_fragment_2_chip_content_unchecked;
        }
        return ContextCompat.getColor(getContext(), i10);
    }

    public abstract int z();
}
