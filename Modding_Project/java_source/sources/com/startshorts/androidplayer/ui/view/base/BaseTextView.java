package com.startshorts.androidplayer.ui.view.base;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.startshorts.androidplayer.R$styleable;
import com.startshorts.androidplayer.log.Logger;
import jk.y;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseTextView.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseTextView extends AppCompatTextView {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f47086a = new a(null);

    /* compiled from: BaseTextView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseTextView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void b(AttributeSet attributeSet, int i10) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R$styleable.BaseTextView, i10, 0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        String string = obtainStyledAttributes.getString(R$styleable.BaseTextView_custom_typeface);
        obtainStyledAttributes.recycle();
        if (string == null || string.length() == 0) {
            string = yf.a.f70794a.d();
        }
        y.n(this, string);
    }

    public final boolean c() {
        try {
            if (getLayout().getEllipsisCount(getLineCount() - 1) <= 0) {
                return false;
            }
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseTextView", "check isOverFlow exception -> " + e10.getMessage());
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        b(attributeSet, i10);
    }
}
