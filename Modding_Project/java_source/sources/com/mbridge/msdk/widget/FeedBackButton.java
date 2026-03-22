package com.mbridge.msdk.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.u0;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes6.dex */
public class FeedBackButton extends TextView {
    public static String FEEDBACK_BTN_BACKGROUND_COLOR_STR = "#60000000";

    public FeedBackButton(Context context) {
        super(context);
        a();
    }

    private void a() {
        setText(h0.a(getContext(), "mbridge_cm_feedback_btn_text", TypedValues.Custom.S_STRING));
        Context context = getContext();
        int a10 = u0.a(context, 13.0f);
        setPadding(a10, 0, a10, 0);
        setTextIsSelectable(false);
        setGravity(17);
        setBackgroundColor(Color.parseColor(FEEDBACK_BTN_BACKGROUND_COLOR_STR));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(u0.a(context, 20.0f));
        gradientDrawable.setColor(Color.parseColor(FEEDBACK_BTN_BACKGROUND_COLOR_STR));
        setBackground(gradientDrawable);
        setTextColor(-1);
    }

    public FeedBackButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public FeedBackButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }

    @RequiresApi(api = 21)
    public FeedBackButton(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        a();
    }
}
