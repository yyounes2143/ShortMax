package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import com.amazonaws.mobile.auth.core.signin.SignInManager;
import com.amazonaws.mobile.auth.core.signin.ui.DisplayUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes2.dex */
public class UserPoolSignInView extends LinearLayout {

    /* renamed from: k  reason: collision with root package name */
    private static final String f5298k = "UserPoolSignInView";

    /* renamed from: a  reason: collision with root package name */
    private TextView f5299a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f5300b;

    /* renamed from: c  reason: collision with root package name */
    private FormView f5301c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f5302d;

    /* renamed from: e  reason: collision with root package name */
    private EditText f5303e;

    /* renamed from: f  reason: collision with root package name */
    private Button f5304f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5305g;

    /* renamed from: h  reason: collision with root package name */
    private int f5306h;

    /* renamed from: i  reason: collision with root package name */
    private String f5307i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f5308j;

    public UserPoolSignInView(Context context) {
        this(context, null);
    }

    private void a() {
        if (this.f5305g) {
            return;
        }
        this.f5305g = true;
        if (isInEditMode()) {
            return;
        }
        try {
            SignInManager.b().e(CognitoUserPoolsSignInProvider.class, this.f5304f);
        } catch (Exception e10) {
            Log.e(f5298k, "Cannot initialize the SignInButton. Please check if IdentityManager : startUpAuth and setUpToAuthenticate are invoked", e10);
        }
    }

    private void setupBackgroundColor(Activity activity) {
        this.f5306h = activity.getIntent().getIntExtra("signInBackgroundColor", -12303292);
    }

    private void setupBackgroundColorFullScreen(Activity activity) {
        this.f5308j = activity.getIntent().getBooleanExtra("fullScreenBackgroundColor", false);
    }

    private void setupCredentialsForm(Context context) {
        this.f5301c = new FormView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f5302d = this.f5301c.b(context, 33, context.getString(R$string.f5224p));
        this.f5303e = this.f5301c.b(context, 129, context.getString(R$string.f5222n));
        addView(this.f5301c, layoutParams);
    }

    private void setupFontFamily(Activity activity) {
        String stringExtra = activity.getIntent().getStringExtra(TtmlNode.ATTR_TTS_FONT_FAMILY);
        this.f5307i = stringExtra;
        if (stringExtra != null) {
            Typeface create = Typeface.create(stringExtra, 0);
            String str = f5298k;
            Log.d(str, "Setup font in UserPoolSignInView: " + this.f5307i);
            this.f5299a.setTypeface(create);
            this.f5300b.setTypeface(create);
            this.f5304f.setTypeface(create);
            this.f5302d.setTypeface(create);
            this.f5303e.setTypeface(create);
        }
    }

    private void setupLayoutForSignUpAndForgotPassword(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(this.f5301c.getFormShadowMargin(), DisplayUtils.a(10), this.f5301c.getFormShadowMargin(), 0);
        layoutParams.gravity = 1;
        TextView textView = new TextView(context);
        this.f5299a = textView;
        textView.setText(R$string.f5221m);
        this.f5299a.setTextAppearance(context, 16973894);
        this.f5299a.setGravity(GravityCompat.START);
        this.f5299a.setTextColor(-12215809);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(this.f5299a, layoutParams2);
        TextView textView2 = new TextView(context);
        this.f5300b = textView2;
        textView2.setText(R$string.f5219k);
        this.f5300b.setTextAppearance(context, 16973894);
        this.f5300b.setGravity(GravityCompat.END);
        this.f5300b.setTextColor(-12215809);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.weight = 1.0f;
        linearLayout.addView(this.f5300b, layoutParams3);
        addView(linearLayout, layoutParams);
    }

    private void setupSignInButton(Context context) {
        Button button = new Button(context);
        this.f5304f = button;
        button.setTextColor(-1);
        this.f5304f.setText(context.getString(R$string.f5218j));
        this.f5304f.setAllCaps(false);
        this.f5304f.setBackgroundDrawable(DisplayUtils.b(UserPoolFormConstants.f5296a, -12215809));
        Resources resources = getResources();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, resources.getDimensionPixelSize(R$dimen.f5184a));
        layoutParams.setMargins(this.f5301c.getFormShadowMargin(), resources.getDimensionPixelSize(R$dimen.f5185b) + this.f5301c.getFormShadowMargin(), this.f5301c.getFormShadowMargin(), 0);
        addView(this.f5304f, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f5308j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBackgroundColor() {
        return this.f5306h;
    }

    public FormView getCredentialsFormView() {
        return this.f5301c;
    }

    public String getEnteredPassword() {
        return this.f5303e.getText().toString();
    }

    public String getEnteredUserName() {
        return this.f5302d.getText().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getFontFamily() {
        return this.f5307i;
    }

    public TextView getForgotPasswordTextView() {
        return this.f5300b;
    }

    public TextView getSignUpTextView() {
        return this.f5299a;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min((int) (View.MeasureSpec.getSize(i10) * 0.85d), UserPoolFormConstants.f5297b), Integer.MIN_VALUE), i11);
        a();
    }

    public UserPoolSignInView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserPoolSignInView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        setGravity(17);
        setId(R$id.f5203r);
        setupCredentialsForm(context);
        setupSignInButton(context);
        setupLayoutForSignUpAndForgotPassword(context);
        Activity activity = (Activity) context;
        setupFontFamily(activity);
        setupBackgroundColor(activity);
        setupBackgroundColorFullScreen(activity);
    }
}
