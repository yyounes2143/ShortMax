package com.mbridge.msdk.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.foundation.tools.e1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes6.dex */
public class MBFeedBackDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Button f31745a;

    /* renamed from: b  reason: collision with root package name */
    private Button f31746b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f31747c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.widget.dialog.b f31748d;

    /* renamed from: e  reason: collision with root package name */
    private Button f31749e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f31750f;

    /* renamed from: g  reason: collision with root package name */
    private int f31751g;

    /* renamed from: h  reason: collision with root package name */
    private int f31752h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBFeedBackDialog.this.f31748d != null) {
                MBFeedBackDialog.this.f31748d.b();
            }
            MBFeedBackDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBFeedBackDialog.this.f31748d != null) {
                MBFeedBackDialog.this.f31748d.a();
            }
            MBFeedBackDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBFeedBackDialog.this.dismiss();
            if (MBFeedBackDialog.this.f31748d != null) {
                MBFeedBackDialog.this.f31748d.c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements DialogInterface.OnCancelListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            if (MBFeedBackDialog.this.f31748d != null) {
                MBFeedBackDialog.this.f31748d.a();
            }
        }
    }

    public MBFeedBackDialog(Context context, com.mbridge.msdk.widget.dialog.b bVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View inflate = LayoutInflater.from(context).inflate(h0.a(context, "mbridge_cm_feedbackview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
        setDialogWidthAndHeight(0.5f, 0.8f);
        this.f31748d = bVar;
        if (inflate != null) {
            setContentView(inflate);
            try {
                this.f31750f = (TextView) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_titleview", "id"));
            } catch (Exception e10) {
                p0.a("MBAlertDialog", e10.getMessage());
            }
            try {
                this.f31747c = (LinearLayout) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_contentview", "id"));
                this.f31746b = (Button) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_confirm_button", "id"));
                this.f31745a = (Button) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_cancel_button", "id"));
                this.f31749e = (Button) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_private_action_button", "id"));
            } catch (Exception e11) {
                p0.a("MBAlertDialog", e11.getMessage());
            }
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        a();
    }

    public static boolean isScreenOrientationPortrait(Context context) {
        if (context.getResources().getConfiguration().orientation == 1) {
            return true;
        }
        return false;
    }

    public void clear() {
        if (this.f31748d != null) {
            this.f31748d = null;
        }
    }

    public com.mbridge.msdk.widget.dialog.b getListener() {
        return this.f31748d;
    }

    public void hideNavigationBar(Window window) {
        if (window != null) {
            window.setFlags(1024, 1024);
            window.addFlags(67108864);
            window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            e1.a(window);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            window.setGravity(17);
        }
    }

    public void setCancelButtonClickable(boolean z10) {
        Button button = this.f31745a;
        if (button != null) {
            button.setClickable(z10);
            if (z10) {
                this.f31745a.setBackgroundResource(getContext().getResources().getIdentifier("mbridge_cm_feedback_choice_btn_bg_pressed", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
                this.f31745a.setAlpha(1.0f);
                return;
            }
            this.f31745a.setBackgroundResource(getContext().getResources().getIdentifier("mbridge_cm_feedback_choice_btn_bg_pressed", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f31745a.setAlpha(0.4f);
        }
    }

    public void setCancelText(String str) {
        Button button = this.f31745a;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setContent(ViewGroup viewGroup) {
        LinearLayout linearLayout = this.f31747c;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 16.0f);
            layoutParams.rightMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 16.0f);
            layoutParams.topMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 3.0f);
            layoutParams.bottomMargin = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 3.0f);
            this.f31747c.addView(viewGroup, layoutParams);
        }
    }

    public void setDialogWidthAndHeight(float f10, float f11) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        if (isScreenOrientationPortrait(getContext())) {
            this.f31752h = displayMetrics.widthPixels;
            this.f31751g = displayMetrics.heightPixels;
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.width = -1;
            attributes.height = (int) (this.f31751g * f11);
            attributes.gravity = 80;
            getWindow().setAttributes(attributes);
            return;
        }
        this.f31752h = displayMetrics.heightPixels;
        this.f31751g = displayMetrics.widthPixels;
        WindowManager.LayoutParams attributes2 = getWindow().getAttributes();
        attributes2.width = (int) (this.f31751g * f10);
        attributes2.height = -1;
        attributes2.gravity = 17;
        getWindow().setAttributes(attributes2);
    }

    public void setListener(com.mbridge.msdk.widget.dialog.b bVar) {
        this.f31748d = bVar;
    }

    public void setPrivacyText(String str) {
        Button button = this.f31749e;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.f31750f;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        try {
            getWindow().setFlags(8, 8);
            super.show();
            hideNavigationBar(getWindow());
            getWindow().clearFlags(8);
        } catch (Exception e10) {
            p0.b("MBAlertDialog", e10.getMessage());
            super.show();
        }
    }

    private void a() {
        Button button = this.f31745a;
        if (button != null) {
            button.setOnClickListener(new a());
        }
        Button button2 = this.f31746b;
        if (button2 != null) {
            button2.setOnClickListener(new b());
        }
        Button button3 = this.f31749e;
        if (button3 != null) {
            button3.setOnClickListener(new c());
        }
        setOnCancelListener(new d());
    }

    public void setConfirmText(String str) {
    }
}
