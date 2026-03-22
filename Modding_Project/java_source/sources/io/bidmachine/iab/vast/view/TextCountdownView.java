package io.bidmachine.iab.vast.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import sm.h;
/* loaded from: classes7.dex */
public class TextCountdownView extends IabTextView implements h {
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private String f54980e;

    public TextCountdownView(@NonNull Context context) {
        super(context);
        this.f54980e = "%1.0fs";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.iab.vast.view.IabTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (TextUtils.isEmpty(getText())) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(0, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 1073741824));
        } else {
            super.onMeasure(i10, i11);
        }
    }

    public void setProgress(int i10, int i11) {
        setProgress(Math.round((i10 / i11) * 100.0f));
    }

    public void setRemaining(int i10) {
        setText(this.f54980e.replace("%1.0f", String.valueOf(i10)));
    }

    @Override // io.bidmachine.iab.vast.view.IabTextView, sm.h
    public void setStyle(@NonNull IabElementStyle iabElementStyle) {
        super.setStyle(iabElementStyle);
        String h10 = iabElementStyle.h();
        if (h10 != null) {
            this.f54980e = h10;
        }
    }

    public void setProgress(int i10) {
        setText(this.f54980e.replace("%1.0f", String.valueOf(i10)));
    }

    public TextCountdownView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f54980e = "%1.0fs";
    }
}
