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
public class SignUpConfirmView extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final String f5270k = "SignUpConfirmView";

    /* renamed from: a  reason: collision with root package name */
    private FormView f5271a;

    /* renamed from: b  reason: collision with root package name */
    private EditText f5272b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f5273c;

    /* renamed from: d  reason: collision with root package name */
    private Button f5274d;

    /* renamed from: e  reason: collision with root package name */
    private SplitBackgroundDrawable f5275e;

    /* renamed from: f  reason: collision with root package name */
    private BackgroundDrawable f5276f;

    /* renamed from: g  reason: collision with root package name */
    private String f5277g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5278h;

    /* renamed from: i  reason: collision with root package name */
    private Typeface f5279i;

    /* renamed from: j  reason: collision with root package name */
    private int f5280j;

    public SignUpConfirmView(Context context) {
        this(context, null);
    }

    private void a() {
        if (!this.f5278h) {
            this.f5275e.a(this.f5271a.getTop() + (this.f5271a.getMeasuredHeight() / 2));
            ((ViewGroup) getParent()).setBackgroundDrawable(this.f5275e);
            return;
        }
        ((ViewGroup) getParent()).setBackgroundDrawable(this.f5276f);
    }

    private void b() {
        Button button = (Button) findViewById(R$id.f5186a);
        this.f5274d = button;
        button.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f5274d.getLayoutParams();
        layoutParams.setMargins(this.f5271a.getFormShadowMargin(), layoutParams.topMargin, this.f5271a.getFormShadowMargin(), layoutParams.bottomMargin);
    }

    private void c() {
        if (this.f5279i != null) {
            String str = f5270k;
            Log.d(str, "Setup font in SignUpConfirmView: " + this.f5277g);
            this.f5272b.setTypeface(this.f5279i);
            this.f5273c.setTypeface(this.f5279i);
        }
    }

    public EditText getConfirmCodeEditText() {
        return this.f5273c;
    }

    public EditText getUserNameEditText() {
        return this.f5272b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        FormView formView = (FormView) findViewById(R$id.f5198m);
        this.f5271a = formView;
        this.f5272b = formView.b(getContext(), 97, getContext().getString(R$string.f5234z));
        this.f5273c = this.f5271a.b(getContext(), 2, getContext().getString(R$string.f5225q));
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

    public SignUpConfirmView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignUpConfirmView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        if (!isInEditMode()) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.M);
            obtainStyledAttributes.getInt(R$styleable.N, -12303292);
            obtainStyledAttributes.recycle();
        }
        String x10 = CognitoUserPoolsSignInProvider.x();
        this.f5277g = x10;
        this.f5279i = Typeface.create(x10, 0);
        this.f5278h = CognitoUserPoolsSignInProvider.z();
        this.f5280j = CognitoUserPoolsSignInProvider.v();
        if (this.f5278h) {
            this.f5276f = new BackgroundDrawable(this.f5280j);
        } else {
            this.f5275e = new SplitBackgroundDrawable(0, this.f5280j);
        }
    }
}
