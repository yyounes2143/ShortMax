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
public class ForgotPasswordView extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final String f5144k = "ForgotPasswordView";

    /* renamed from: a  reason: collision with root package name */
    private FormView f5145a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f5146b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f5147c;

    /* renamed from: d  reason: collision with root package name */
    private Button f5148d;

    /* renamed from: e  reason: collision with root package name */
    private SplitBackgroundDrawable f5149e;

    /* renamed from: f  reason: collision with root package name */
    private BackgroundDrawable f5150f;

    /* renamed from: g  reason: collision with root package name */
    private String f5151g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5152h;

    /* renamed from: i  reason: collision with root package name */
    private Typeface f5153i;

    /* renamed from: j  reason: collision with root package name */
    private int f5154j;

    public ForgotPasswordView(Context context) {
        this(context, null);
    }

    private void a() {
        if (!this.f5152h) {
            this.f5149e.a(this.f5145a.getTop() + (this.f5145a.getMeasuredHeight() / 2));
            ((ViewGroup) getParent()).setBackgroundDrawable(this.f5149e);
            return;
        }
        ((ViewGroup) getParent()).setBackgroundDrawable(this.f5150f);
    }

    private void b() {
        Button button = (Button) findViewById(R$id.f5191f);
        this.f5148d = button;
        button.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5148d.getLayoutParams();
        layoutParams.setMargins(this.f5145a.getFormShadowMargin(), layoutParams.topMargin, this.f5145a.getFormShadowMargin(), layoutParams.bottomMargin);
    }

    private void c() {
        if (this.f5153i != null) {
            String str = f5144k;
            Log.d(str, "Setup font in ForgotPasswordView: " + this.f5151g);
            this.f5146b.setTypeface(this.f5153i);
            this.f5147c.setTypeface(this.f5153i);
        }
    }

    public String getPassword() {
        return this.f5147c.getText().toString();
    }

    public String getVerificationCode() {
        return this.f5146b.getText().toString();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FormView formView = (FormView) findViewById(R$id.f5192g);
        this.f5145a = formView;
        this.f5146b = formView.b(getContext(), 2, getContext().getString(R$string.f5225q));
        this.f5147c = this.f5145a.b(getContext(), 129, getContext().getString(R$string.f5222n));
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

    public ForgotPasswordView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForgotPasswordView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f5256v);
            obtainStyledAttributes.getInt(R$styleable.f5257w, -12303292);
            obtainStyledAttributes.recycle();
        }
        String x10 = CognitoUserPoolsSignInProvider.x();
        this.f5151g = x10;
        this.f5153i = Typeface.create(x10, 0);
        this.f5152h = CognitoUserPoolsSignInProvider.z();
        this.f5154j = CognitoUserPoolsSignInProvider.v();
        if (this.f5152h) {
            this.f5150f = new BackgroundDrawable(this.f5154j);
        } else {
            this.f5149e = new SplitBackgroundDrawable(0, this.f5154j);
        }
    }
}
