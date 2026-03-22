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
import android.widget.TextView;
import com.amazonaws.mobile.auth.core.signin.ui.BackgroundDrawable;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
import com.amazonaws.mobile.auth.core.signin.ui.SplitBackgroundDrawable;
/* loaded from: classes2.dex */
public class SignUpView extends LinearLayout {

    /* renamed from: o  reason: collision with root package name */
    private static final String f5281o = "SignUpView";

    /* renamed from: a  reason: collision with root package name */
    private TextView f5282a;

    /* renamed from: b  reason: collision with root package name */
    private Button f5283b;

    /* renamed from: c  reason: collision with root package name */
    private FormView f5284c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f5285d;

    /* renamed from: e  reason: collision with root package name */
    private EditText f5286e;

    /* renamed from: f  reason: collision with root package name */
    private EditText f5287f;

    /* renamed from: g  reason: collision with root package name */
    private EditText f5288g;

    /* renamed from: h  reason: collision with root package name */
    private EditText f5289h;

    /* renamed from: i  reason: collision with root package name */
    private SplitBackgroundDrawable f5290i;

    /* renamed from: j  reason: collision with root package name */
    private BackgroundDrawable f5291j;

    /* renamed from: k  reason: collision with root package name */
    private String f5292k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5293l;

    /* renamed from: m  reason: collision with root package name */
    private Typeface f5294m;

    /* renamed from: n  reason: collision with root package name */
    private int f5295n;

    public SignUpView(Context context) {
        this(context, null);
    }

    private void a() {
        if (!this.f5293l) {
            this.f5290i.a(this.f5284c.getTop() + (this.f5284c.getMeasuredHeight() / 2));
            ((ViewGroup) getParent()).setBackgroundDrawable(this.f5290i);
            return;
        }
        ((ViewGroup) getParent()).setBackgroundDrawable(this.f5291j);
    }

    private void b() {
        if (this.f5294m != null) {
            String str = f5281o;
            Log.d(str, "Setup font in SignUpView: " + this.f5292k);
            this.f5285d.setTypeface(this.f5294m);
            this.f5286e.setTypeface(this.f5294m);
            this.f5287f.setTypeface(this.f5294m);
            this.f5288g.setTypeface(this.f5294m);
            this.f5289h.setTypeface(this.f5294m);
            this.f5282a.setTypeface(this.f5294m);
            this.f5283b.setTypeface(this.f5294m);
        }
    }

    private void c() {
        this.f5283b.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5283b.getLayoutParams();
        layoutParams.setMargins(this.f5284c.getFormShadowMargin(), layoutParams.topMargin, this.f5284c.getFormShadowMargin(), layoutParams.bottomMargin);
    }

    public String getEmail() {
        return this.f5288g.getText().toString();
    }

    public String getGivenName() {
        return this.f5287f.getText().toString();
    }

    public String getPassword() {
        return this.f5286e.getText().toString();
    }

    public String getPhone() {
        return this.f5289h.getText().toString();
    }

    public String getUserName() {
        return this.f5285d.getText().toString();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FormView formView = (FormView) findViewById(R$id.f5200o);
        this.f5284c = formView;
        this.f5285d = formView.b(getContext(), 97, getContext().getString(R$string.f5234z));
        this.f5286e = this.f5284c.b(getContext(), 129, getContext().getString(R$string.f5222n));
        this.f5287f = this.f5284c.b(getContext(), 97, getContext().getString(R$string.f5211c));
        this.f5288g = this.f5284c.b(getContext(), 33, getContext().getString(R$string.f5209a));
        this.f5289h = this.f5284c.b(getContext(), 3, getContext().getString(R$string.f5216h));
        this.f5282a = (TextView) findViewById(R$id.f5201p);
        this.f5283b = (Button) findViewById(R$id.f5197l);
        c();
        b();
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

    public void setPassword(String str) {
        this.f5286e.setText(str);
    }

    public SignUpView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignUpView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.O);
            obtainStyledAttributes.getInt(R$styleable.P, -12303292);
            obtainStyledAttributes.recycle();
        }
        String x10 = CognitoUserPoolsSignInProvider.x();
        this.f5292k = x10;
        this.f5294m = Typeface.create(x10, 0);
        this.f5293l = CognitoUserPoolsSignInProvider.z();
        this.f5295n = CognitoUserPoolsSignInProvider.v();
        if (this.f5293l) {
            this.f5291j = new BackgroundDrawable(this.f5295n);
        } else {
            this.f5290i = new SplitBackgroundDrawable(0, this.f5295n);
        }
    }
}
