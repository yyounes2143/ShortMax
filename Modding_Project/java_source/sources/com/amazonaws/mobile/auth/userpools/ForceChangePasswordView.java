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
public class ForceChangePasswordView extends LinearLayout {

    /* renamed from: j  reason: collision with root package name */
    private static final String f5132j = ForgotPasswordView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private FormView f5133a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f5134b;

    /* renamed from: c  reason: collision with root package name */
    private Button f5135c;

    /* renamed from: d  reason: collision with root package name */
    private SplitBackgroundDrawable f5136d;

    /* renamed from: e  reason: collision with root package name */
    private BackgroundDrawable f5137e;

    /* renamed from: f  reason: collision with root package name */
    private String f5138f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5139g;

    /* renamed from: h  reason: collision with root package name */
    private Typeface f5140h;

    /* renamed from: i  reason: collision with root package name */
    private int f5141i;

    public ForceChangePasswordView(Context context) {
        this(context, null);
    }

    private void a() {
        if (!this.f5139g) {
            this.f5136d.a(this.f5133a.getTop() + (this.f5133a.getMeasuredHeight() / 2));
            ((ViewGroup) getParent()).setBackgroundDrawable(this.f5136d);
            return;
        }
        ((ViewGroup) getParent()).setBackgroundDrawable(this.f5137e);
    }

    private void b() {
        Button button = (Button) findViewById(R$id.f5188c);
        this.f5135c = button;
        button.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5135c.getLayoutParams();
        layoutParams.setMargins(this.f5133a.getFormShadowMargin(), layoutParams.topMargin, this.f5133a.getFormShadowMargin(), layoutParams.bottomMargin);
    }

    private void c() {
        if (this.f5140h != null) {
            String str = f5132j;
            Log.d(str, "Setup font in ForceChangePasswordView: " + this.f5138f);
            this.f5134b.setTypeface(this.f5140h);
        }
    }

    public String getPassword() {
        return this.f5134b.getText().toString();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FormView formView = (FormView) findViewById(R$id.f5189d);
        this.f5133a = formView;
        this.f5134b = formView.b(getContext(), 129, getContext().getString(R$string.f5222n));
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

    public ForceChangePasswordView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForceChangePasswordView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f5256v);
            obtainStyledAttributes.getInt(R$styleable.f5257w, -12303292);
            obtainStyledAttributes.recycle();
        }
        String x10 = CognitoUserPoolsSignInProvider.x();
        this.f5138f = x10;
        this.f5140h = Typeface.create(x10, 0);
        this.f5139g = CognitoUserPoolsSignInProvider.z();
        this.f5141i = CognitoUserPoolsSignInProvider.v();
        if (this.f5139g) {
            this.f5137e = new BackgroundDrawable(this.f5141i);
        } else {
            this.f5136d = new SplitBackgroundDrawable(0, this.f5141i);
        }
    }
}
