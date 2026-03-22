package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.R;
import androidx.appcompat.widget.AppCompatEditText;
import com.startshorts.androidplayer.R$styleable;
import jk.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseEditText.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseEditText extends AppCompatEditText {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseEditText(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void a(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R$styleable.BaseTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = obtainStyledAttributes.getString(R$styleable.BaseTextView_custom_typeface);
        obtainStyledAttributes.recycle();
        if (string == null || string.length() == 0) {
            string = yf.a.f70794a.d();
        }
        y.n(this, string);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseEditText(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseEditText(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        a(attributeSet, i10);
    }
}
