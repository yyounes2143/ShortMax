package com.amazonaws.mobile.auth.userpools;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.amazonaws.mobile.auth.core.signin.ui.BackgroundDrawable;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
import com.amazonaws.mobile.auth.core.signin.ui.SplitBackgroundDrawable;
/* loaded from: classes2.dex */
public class MFAView extends LinearLayout {

    /* renamed from: j  reason: collision with root package name */
    private static final String f5174j = "MFAView";

    /* renamed from: a  reason: collision with root package name */
    private FormView f5175a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f5176b;

    /* renamed from: c  reason: collision with root package name */
    private Button f5177c;

    /* renamed from: d  reason: collision with root package name */
    private SplitBackgroundDrawable f5178d;

    /* renamed from: e  reason: collision with root package name */
    private BackgroundDrawable f5179e;

    /* renamed from: f  reason: collision with root package name */
    private String f5180f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5181g;

    /* renamed from: h  reason: collision with root package name */
    private Typeface f5182h;

    /* renamed from: i  reason: collision with root package name */
    private int f5183i;

    public MFAView(Context context) {
        this(context, null);
    }

    private void a() {
        if (!this.f5181g) {
            this.f5178d.a(this.f5175a.getTop() + (this.f5175a.getMeasuredHeight() / 2));
            ((ViewGroup) getParent()).setBackgroundDrawable(this.f5178d);
            return;
        }
        ((ViewGroup) getParent()).setBackgroundDrawable(this.f5179e);
    }

    private void b() {
        if (this.f5182h != null) {
            String str = f5174j;
            Log.d(str, "Setup font in MFAView: " + this.f5180f);
            this.f5176b.setTypeface(this.f5182h);
        }
    }

    private void c() {
        Button button = (Button) findViewById(R$id.f5194i);
        this.f5177c = button;
        button.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5177c.getLayoutParams();
        layoutParams.setMargins(this.f5175a.getFormShadowMargin(), layoutParams.topMargin, this.f5175a.getFormShadowMargin(), layoutParams.bottomMargin);
    }

    public String getMFACode() {
        return this.f5176b.getText().toString();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FormView formView = (FormView) findViewById(R$id.f5195j);
        this.f5175a = formView;
        this.f5176b = formView.b(getContext(), 2, getContext().getString(R$string.f5210b));
        b();
        c();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        a();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min((int) (View.MeasureSpec.getSize(i10) * 0.85d), UserPoolFormConstants.f5297b), Integer.MIN_VALUE), i11);
    }

    public MFAView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MFAView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.C);
            obtainStyledAttributes.getInt(R$styleable.D, -12303292);
            obtainStyledAttributes.recycle();
        }
        String x10 = CognitoUserPoolsSignInProvider.x();
        this.f5180f = x10;
        this.f5182h = Typeface.create(x10, 0);
        this.f5181g = CognitoUserPoolsSignInProvider.z();
        this.f5183i = CognitoUserPoolsSignInProvider.v();
        if (this.f5181g) {
            this.f5179e = new BackgroundDrawable(this.f5183i);
        } else {
            this.f5178d = new SplitBackgroundDrawable(0, this.f5183i);
        }
    }
}
