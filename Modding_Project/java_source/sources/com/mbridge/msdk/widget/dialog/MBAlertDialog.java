package com.mbridge.msdk.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.e1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.x0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.Locale;
/* loaded from: classes6.dex */
public class MBAlertDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Button f31736a;

    /* renamed from: b  reason: collision with root package name */
    private Button f31737b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f31738c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.widget.dialog.b f31739d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f31740e;

    /* loaded from: classes6.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.widget.dialog.b f31741a;

        a(com.mbridge.msdk.widget.dialog.b bVar) {
            this.f31741a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.widget.dialog.b bVar = this.f31741a;
            if (bVar != null) {
                bVar.b();
            }
            MBAlertDialog.this.cancel();
            MBAlertDialog.this.clear();
        }
    }

    /* loaded from: classes6.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.widget.dialog.b f31743a;

        b(com.mbridge.msdk.widget.dialog.b bVar) {
            this.f31743a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.mbridge.msdk.widget.dialog.b bVar = this.f31743a;
            if (bVar != null) {
                bVar.a();
            }
            MBAlertDialog.this.cancel();
            MBAlertDialog.this.clear();
        }
    }

    public MBAlertDialog(Context context, com.mbridge.msdk.widget.dialog.b bVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View inflate = LayoutInflater.from(context).inflate(h0.a(context, "mbridge_cm_alertview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
        this.f31739d = bVar;
        if (inflate != null) {
            setContentView(inflate);
            try {
                this.f31740e = (TextView) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_titleview", "id"));
            } catch (Exception e10) {
                p0.a("MBAlertDialog", e10.getMessage());
            }
            try {
                this.f31738c = (TextView) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_contentview", "id"));
                this.f31737b = (Button) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_confirm_button", "id"));
                this.f31736a = (Button) inflate.findViewById(h0.a(context, "mbridge_video_common_alertview_cancel_button", "id"));
            } catch (Exception e11) {
                p0.a("MBAlertDialog", e11.getMessage());
            }
        }
        Button button = this.f31736a;
        if (button != null) {
            button.setOnClickListener(new a(bVar));
        }
        Button button2 = this.f31737b;
        if (button2 != null) {
            button2.setOnClickListener(new b(bVar));
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    private void a(int i10) {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle(i10 == com.mbridge.msdk.foundation.same.a.H ? "确认关闭？" : "提示");
            setContent(i10 == com.mbridge.msdk.foundation.same.a.H ? "如果你选择继续，结束后将会获得奖励。确认关闭吗？" : "如果你选择继续，结束后将会获得奖励。是否继续？");
            setConfirmText(i10 == com.mbridge.msdk.foundation.same.a.H ? "确认关闭" : "取消");
            setCancelText("继续");
            return;
        }
        setTitle(i10 == com.mbridge.msdk.foundation.same.a.H ? "Confirm" : "Tips");
        setContent(i10 == com.mbridge.msdk.foundation.same.a.H ? "If you choose to continue, you will receive a reward after the end. Confirm closed?" : "If you choose to continue, you will receive a reward after the end. Whether to continue?");
        setConfirmText(i10 == com.mbridge.msdk.foundation.same.a.H ? "Close" : "Cancel");
        setCancelText("Continue");
    }

    private void b() {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle("确认关闭？");
            setContent("关闭后您将不会获得任何奖励噢~ ");
            setConfirmText("确认关闭");
            setCancelText("继续观看");
            return;
        }
        setTitle("Confirm to close? ");
        setContent("You will not be rewarded after closing the window");
        setConfirmText("Close it");
        setCancelText("Continue");
    }

    public void clear() {
        if (this.f31739d != null) {
            this.f31739d = null;
        }
    }

    public com.mbridge.msdk.widget.dialog.b getListener() {
        return this.f31739d;
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

    public void makeDownloadAlert(String str) {
        com.mbridge.msdk.widget.dialog.a.a(this, str);
    }

    public void makeIVAlertView(int i10, String str) {
        try {
            Context context = getContext();
            String obj = x0.a(context, "MBridge_ConfirmTitle" + str, "").toString();
            Context context2 = getContext();
            String obj2 = x0.a(context2, "MBridge_ConfirmContent" + str, "").toString();
            Context context3 = getContext();
            String obj3 = x0.a(context3, "MBridge_CancelText" + str, "").toString();
            Context context4 = getContext();
            String obj4 = x0.a(context4, "MBridge_ConfirmText" + str, "").toString();
            if (TextUtils.isEmpty(obj) && TextUtils.isEmpty(obj2) && TextUtils.isEmpty(obj3) && TextUtils.isEmpty(obj4)) {
                a(i10);
            } else {
                a(obj, obj2, obj3, obj4);
            }
        } catch (Exception e10) {
            p0.a("MBAlertDialog", e10.getMessage());
        }
    }

    public void makeInsAlert(String str) {
        com.mbridge.msdk.widget.dialog.a.b(this, str);
    }

    public void makePlayableAlertView() {
        g d10 = h.b().d(c.m().b());
        if (d10 != null) {
            a(d10.s(), d10.q(), d10.r(), d10.o());
        } else {
            a();
        }
    }

    public void makeRVAlertView(String str) {
        try {
            Context context = getContext();
            String obj = x0.a(context, "MBridge_ConfirmTitle" + str, "").toString();
            Context context2 = getContext();
            String obj2 = x0.a(context2, "MBridge_ConfirmContent" + str, "").toString();
            Context context3 = getContext();
            String obj3 = x0.a(context3, "MBridge_CancelText" + str, "").toString();
            Context context4 = getContext();
            String obj4 = x0.a(context4, "MBridge_ConfirmText" + str, "").toString();
            g d10 = h.b().d(c.m().b());
            if (TextUtils.isEmpty(obj) && TextUtils.isEmpty(obj2) && TextUtils.isEmpty(obj3) && TextUtils.isEmpty(obj4)) {
                if (d10 != null) {
                    a(d10.s(), d10.q(), d10.r(), d10.p());
                    return;
                } else {
                    b();
                    return;
                }
            }
            String language = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(obj)) {
                if (d10 != null) {
                    obj = d10.s();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setTitle("确认关闭？");
                } else {
                    setTitle("Confirm to close? ");
                }
            }
            if (TextUtils.isEmpty(obj2)) {
                if (d10 != null) {
                    obj2 = d10.q();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setContent("关闭后您将不会获得任何奖励噢~ ");
                } else {
                    setContent("You will not be rewarded after closing the window");
                }
            }
            if (TextUtils.isEmpty(obj4)) {
                if (d10 != null) {
                    obj4 = d10.r();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setConfirmText("确认关闭");
                } else {
                    setConfirmText("Close it");
                }
            }
            if (TextUtils.isEmpty(obj3)) {
                if (d10 != null) {
                    obj3 = d10.p();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setCancelText("继续观看");
                } else {
                    setCancelText("Continue");
                }
            }
            a(obj, obj2, obj4, obj3);
        } catch (Exception e10) {
            p0.a("MBAlertDialog", e10.getMessage());
        }
    }

    public void onlyShow() {
        super.show();
    }

    public void setCancelText(String str) {
        Button button = this.f31736a;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setConfirmText(String str) {
        Button button = this.f31737b;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setContent(String str) {
        TextView textView = this.f31738c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.f31740e;
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

    private void a(String str, String str2, String str3, String str4) {
        setTitle(str);
        setContent(str2);
        setConfirmText(str3);
        setCancelText(str4);
    }

    private void a() {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle("确认关闭？");
            setContent("关闭后您将不会获得任何奖励噢~ ");
            setConfirmText("确认关闭");
            setCancelText("继续试玩");
            return;
        }
        setTitle("Confirm to close? ");
        setContent("You will not be rewarded after closing the window");
        setConfirmText("Close it");
        setCancelText("Continue");
    }
}
