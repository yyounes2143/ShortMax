package com.mbridge.msdk.foundation.feedback.bean;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.b;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.FeedbackRadioGroup;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* compiled from: FeedBackBtnBean.java */
/* loaded from: classes5.dex */
public class a {
    private static int A = -1;
    private static String B;

    /* renamed from: b  reason: collision with root package name */
    private String f26985b;

    /* renamed from: c  reason: collision with root package name */
    private CampaignEx f26986c;

    /* renamed from: e  reason: collision with root package name */
    private FeedBackButton f26988e;

    /* renamed from: f  reason: collision with root package name */
    private String f26989f;

    /* renamed from: i  reason: collision with root package name */
    private String f26992i;

    /* renamed from: j  reason: collision with root package name */
    private MBFeedBackDialog f26993j;

    /* renamed from: k  reason: collision with root package name */
    private Dialog f26994k;

    /* renamed from: l  reason: collision with root package name */
    private JSONArray f26995l;

    /* renamed from: q  reason: collision with root package name */
    private int f27000q;

    /* renamed from: r  reason: collision with root package name */
    private List<g> f27001r;

    /* renamed from: u  reason: collision with root package name */
    private int f27004u;

    /* renamed from: a  reason: collision with root package name */
    private float f26984a = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private String f26987d = "";

    /* renamed from: g  reason: collision with root package name */
    private float f26990g = -1.0f;

    /* renamed from: h  reason: collision with root package name */
    private int f26991h = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f26996m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f26997n = -1;

    /* renamed from: o  reason: collision with root package name */
    private int f26998o = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f26999p = -1;

    /* renamed from: s  reason: collision with root package name */
    private int f27002s = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 20.0f);

    /* renamed from: t  reason: collision with root package name */
    private String f27003t = "";

    /* renamed from: v  reason: collision with root package name */
    private com.mbridge.msdk.widget.dialog.b f27005v = new C0369a();

    /* renamed from: w  reason: collision with root package name */
    private int f27006w = A;

    /* renamed from: x  reason: collision with root package name */
    private int f27007x = -1;

    /* renamed from: y  reason: collision with root package name */
    private int f27008y = -1;

    /* renamed from: z  reason: collision with root package name */
    private int f27009z = -1;

    /* compiled from: FeedBackBtnBean.java */
    /* renamed from: com.mbridge.msdk.foundation.feedback.bean.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0369a implements com.mbridge.msdk.widget.dialog.b {
        C0369a() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    public class c implements com.mbridge.msdk.widget.dialog.b {
        c() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            a.this.m();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            a.this.l();
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            a.this.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    public class d implements CompoundButton.OnCheckedChangeListener {
        d() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                String unused = a.B = (String) compoundButton.getText();
            }
            if (a.this.f26993j != null) {
                a.this.f26993j.setCancelButtonClickable(!TextUtils.isEmpty(a.B));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.f26994k != null && a.this.f26994k.isShowing()) {
                    a.this.f26994k.dismiss();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.p();
        }
    }

    public a(String str) {
        this.f27001r = new ArrayList();
        this.f26992i = str;
        if (this.f27001r == null) {
            this.f27001r = new ArrayList();
        }
        d();
        e();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f26992i, 1, 4, B, this.f26987d);
        List<g> list = this.f27001r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.b();
                }
            }
        }
        o();
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f26992i, 0, 4, B, this.f26987d);
        List<g> list = this.f27001r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        B = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f26992i, 0, 4, B, this.f26987d);
        Context f10 = com.mbridge.msdk.foundation.controller.c.m().f();
        if (f10 == null) {
            f10 = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        List<g> list = this.f27001r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a();
                }
            }
        }
        a(f10);
        B = "";
    }

    private void o() {
        if (!TextUtils.isEmpty(this.f27003t)) {
            try {
                Activity a10 = com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d());
                if (a10 != null) {
                    View inflate = LayoutInflater.from(a10).inflate(h0.a(a10, "mbridge_cm_feedback_notice_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                    Dialog dialog = new Dialog(a10, 3);
                    this.f26994k = dialog;
                    dialog.requestWindowFeature(1);
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    Window window = this.f26994k.getWindow();
                    layoutParams.copyFrom(window.getAttributes());
                    layoutParams.width = -2;
                    layoutParams.height = -2;
                    this.f26994k.setContentView(inflate);
                    this.f26994k.show();
                    window.setAttributes(layoutParams);
                    inflate.postDelayed(new e(), 2000L);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void f() {
        FeedBackButton feedBackButton = this.f26988e;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.f26988e.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.f26988e.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.f26988e);
            }
        }
        MBFeedBackDialog mBFeedBackDialog = this.f26993j;
        if (mBFeedBackDialog != null) {
            mBFeedBackDialog.cancel();
            this.f26993j.setListener(null);
        }
        this.f26993j = null;
        this.f27001r = null;
        this.f26988e = null;
        this.f27005v = null;
    }

    public void g() {
        MBFeedBackDialog mBFeedBackDialog = this.f26993j;
        if (mBFeedBackDialog != null && mBFeedBackDialog.isShowing()) {
            this.f26993j.cancel();
        }
    }

    public CampaignEx h() {
        return this.f26986c;
    }

    public FeedBackButton i() {
        if (this.f26988e == null) {
            e();
        }
        return this.f26988e;
    }

    public int j() {
        return this.f27000q;
    }

    public int k() {
        return this.f27004u;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[Catch: Exception -> 0x002a, TryCatch #0 {Exception -> 0x002a, blocks: (B:2:0x0000, B:4:0x0023, B:10:0x002f, B:12:0x003b, B:13:0x003f, B:17:0x0050, B:19:0x0055, B:9:0x002c), top: B:23:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[Catch: Exception -> 0x002a, TRY_LEAVE, TryCatch #0 {Exception -> 0x002a, blocks: (B:2:0x0000, B:4:0x0023, B:10:0x002f, B:12:0x003b, B:13:0x003f, B:17:0x0050, B:19:0x0055, B:9:0x002c), top: B:23:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p() {
        /*
            r6 = this;
            com.mbridge.msdk.foundation.feedback.b r0 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            java.lang.String r1 = r6.f26992i     // Catch: java.lang.Exception -> L2a
            java.lang.String r4 = com.mbridge.msdk.foundation.feedback.bean.a.B     // Catch: java.lang.Exception -> L2a
            java.lang.String r5 = r6.f26987d     // Catch: java.lang.Exception -> L2a
            r2 = 0
            r3 = 1
            r0.a(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.foundation.feedback.b r0 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2a
            android.content.Context r1 = r1.d()     // Catch: java.lang.Exception -> L2a
            android.app.Activity r0 = r0.a(r1)     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.dialog.MBFeedBackDialog r1 = r6.f26993j     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L2c
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Exception -> L2a
            if (r1 == r0) goto L2f
            goto L2c
        L2a:
            r0 = move-exception
            goto L59
        L2c:
            r6.c()     // Catch: java.lang.Exception -> L2a
        L2f:
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2a
            android.content.Context r0 = r0.d()     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.FeedBackButton r1 = r6.f26988e     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L3f
            android.content.Context r0 = r1.getContext()     // Catch: java.lang.Exception -> L2a
        L3f:
            com.mbridge.msdk.foundation.feedback.b r1 = com.mbridge.msdk.foundation.feedback.b.b()     // Catch: java.lang.Exception -> L2a
            java.lang.String r2 = r6.f26992i     // Catch: java.lang.Exception -> L2a
            com.mbridge.msdk.widget.dialog.MBFeedBackDialog r3 = r6.f26993j     // Catch: java.lang.Exception -> L2a
            boolean r1 = r1.a(r2, r0, r3)     // Catch: java.lang.Exception -> L2a
            if (r1 == 0) goto L4f
            r2 = 2
            goto L50
        L4f:
            r2 = 3
        L50:
            r6.a(r2)     // Catch: java.lang.Exception -> L2a
            if (r1 != 0) goto L5c
            r6.a(r0)     // Catch: java.lang.Exception -> L2a
            goto L5c
        L59:
            r0.printStackTrace()
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.feedback.bean.a.p():void");
    }

    private void c() {
        try {
            if (com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()) != null) {
                com.mbridge.msdk.setting.g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d10 == null) {
                    d10 = h.b().a();
                }
                b.C0419b z10 = d10.z();
                if (z10 == null) {
                    p0.c("", "feedback fbk is null");
                    return;
                }
                d();
                this.f26993j = new MBFeedBackDialog(com.mbridge.msdk.foundation.feedback.b.b().a(com.mbridge.msdk.foundation.controller.c.m().d()), this.f27005v);
                FeedbackRadioGroup a10 = a(z10);
                this.f26993j.setCancelText(z10.d());
                this.f26993j.setConfirmText(z10.a());
                this.f26993j.setPrivacyText(z10.c());
                this.f27003t = z10.e();
                this.f26993j.setTitle(z10.f());
                this.f26993j.setContent(a10);
                this.f26993j.setCancelButtonClickable(!TextUtils.isEmpty(B));
                a(a10, z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        if (this.f27005v == null) {
            this.f27005v = new c();
        }
    }

    private void e() {
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (d10 != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(d10);
                this.f26988e = feedBackButton;
                int i10 = 8;
                if (this.f27006w != 8) {
                    i10 = 0;
                }
                feedBackButton.setVisibility(i10);
                this.f26988e.setOnClickListener(new b());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void b(String str) {
        this.f26987d = str;
    }

    /* compiled from: FeedBackBtnBean.java */
    /* loaded from: classes5.dex */
    public static class g implements com.mbridge.msdk.widget.dialog.b {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.foundation.feedback.a f27016a;

        /* renamed from: b  reason: collision with root package name */
        private String f27017b;

        public g(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
            this.f27016a = aVar;
            this.f27017b = str;
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            com.mbridge.msdk.foundation.feedback.b.f26979f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f27016a;
            if (aVar != null) {
                aVar.close();
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            com.mbridge.msdk.foundation.feedback.b.f26979f = false;
            com.mbridge.msdk.foundation.feedback.a aVar = this.f27016a;
            if (aVar != null) {
                aVar.a(a.B);
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
            com.mbridge.msdk.foundation.feedback.a aVar = this.f27016a;
            if (aVar != null) {
                aVar.close();
            }
        }

        public void a(int i10) {
            if (this.f27016a == null || i10 != 2) {
                return;
            }
            com.mbridge.msdk.foundation.feedback.b.f26979f = true;
            this.f27016a.a();
        }
    }

    private void b() {
        FeedBackButton feedBackButton = this.f26988e;
        if (feedBackButton != null) {
            int i10 = this.f27008y;
            if (i10 > -1) {
                feedBackButton.setX(i10);
            }
            int i11 = this.f27009z;
            if (i11 > -1) {
                this.f26988e.setY(i11);
            }
            float f10 = this.f26984a;
            if (f10 >= 0.0f) {
                this.f26988e.setAlpha(f10);
                this.f26988e.setEnabled(this.f26984a != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.f26988e.getLayoutParams();
            int i12 = this.f27007x;
            if (i12 > 0) {
                this.f26988e.setWidth(i12);
                if (layoutParams != null) {
                    layoutParams.width = this.f27007x;
                }
            }
            int i13 = this.f26991h;
            if (i13 > 0) {
                this.f26988e.setHeight(i13);
                if (layoutParams != null) {
                    layoutParams.height = this.f26991h;
                }
            }
            if (layoutParams != null) {
                this.f26988e.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.f26989f)) {
                    this.f26988e.setTextColor(Color.parseColor(this.f26989f));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            float f11 = this.f26990g;
            if (f11 > 0.0f) {
                this.f26988e.setTextSize(f11);
            }
            JSONArray jSONArray = this.f26995l;
            if (jSONArray != null && jSONArray.length() == 4) {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                this.f26988e.setPadding(u0.a(d10, (float) this.f26995l.optDouble(0)), u0.a(d10, (float) this.f26995l.optDouble(1)), u0.a(d10, (float) this.f26995l.optDouble(2)), u0.a(d10, (float) this.f26995l.optDouble(3)));
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i14 = this.f27002s;
            if (i14 > 0) {
                gradientDrawable.setCornerRadius(i14);
            }
            if (!TextUtils.isEmpty(this.f26985b)) {
                gradientDrawable.setColor(Color.parseColor(this.f26985b));
            } else {
                gradientDrawable.setColor(Color.parseColor(FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            }
            this.f26988e.setBackground(gradientDrawable);
        }
    }

    public void a(g gVar) {
        if (this.f27001r == null) {
            this.f27001r = new ArrayList();
        }
        this.f27001r.add(gVar);
    }

    public void d(int i10) {
        this.f27006w = i10;
        FeedBackButton feedBackButton = this.f26988e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i10);
        }
    }

    public void a(CampaignEx campaignEx) {
        this.f26986c = campaignEx;
    }

    private void a(int i10) {
        if (i10 == 2) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f26992i, 0, 2, B, this.f26987d);
        } else {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f26992i, 0, 3, B, this.f26987d);
        }
        List<g> list = this.f27001r;
        if (list != null) {
            for (g gVar : list) {
                if (gVar != null) {
                    gVar.a(i10);
                }
            }
        }
    }

    private void a(Context context) {
        if (context != null) {
            try {
                com.mbridge.msdk.click.c.e(context, u0.a(this.f26986c));
            } catch (Exception unused) {
                com.mbridge.msdk.click.c.c(context, u0.a(this.f26986c));
            }
        }
    }

    private FeedbackRadioGroup a(b.C0419b c0419b) {
        JSONArray b10 = c0419b.b();
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        if (b10 == null || b10.length() <= 0 || d10 == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(d10);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    public void c(int i10) {
        this.f27004u = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mbridge.msdk.widget.FeedbackRadioGroup r11, com.mbridge.msdk.setting.b.C0419b r12) {
        /*
            r10 = this;
            org.json.JSONArray r12 = r12.b()
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r0 = r0.d()
            if (r12 == 0) goto L7e
            int r1 = r12.length()
            if (r1 <= 0) goto L7e
            if (r0 == 0) goto L7e
            java.lang.String r1 = "mbridge_cm_feedback_choice_btn_bg"
            java.lang.String r2 = "drawable"
            com.mbridge.msdk.foundation.tools.h0.a(r0, r1, r2)
            android.content.res.Resources r1 = com.mbridge.msdk.foundation.tools.h0.a(r0)
            java.lang.String r2 = "mbridge_cm_feedback_rb_text_color_color_list"
            java.lang.String r3 = "color"
            int r2 = com.mbridge.msdk.foundation.tools.h0.a(r0, r2, r3)
            if (r1 == 0) goto L34
            android.content.res.ColorStateList r1 = r1.getColorStateList(r2)     // Catch: java.lang.Exception -> L30
            goto L35
        L30:
            r1 = move-exception
            r1.printStackTrace()
        L34:
            r1 = 0
        L35:
            r2 = 1065353216(0x3f800000, float:1.0)
            int r3 = com.mbridge.msdk.foundation.tools.u0.a(r0, r2)
            int r4 = com.mbridge.msdk.foundation.tools.u0.a(r0, r2)
            int r2 = com.mbridge.msdk.foundation.tools.u0.a(r0, r2)
            r5 = 0
        L44:
            int r6 = r12.length()
            if (r5 >= r6) goto L7e
            java.lang.String r6 = r12.optString(r5)
            android.widget.RadioButton r7 = new android.widget.RadioButton
            r7.<init>(r0)
            r7.setButtonTintList(r1)
            r7.setText(r6)
            if (r1 == 0) goto L5e
            r7.setTextColor(r1)
        L5e:
            r7.setCompoundDrawablePadding(r3)
            r7.setPadding(r3, r4, r3, r4)
            android.text.TextUtils$TruncateAt r6 = android.text.TextUtils.TruncateAt.END
            r7.setEllipsize(r6)
            android.widget.RadioGroup$LayoutParams r6 = new android.widget.RadioGroup$LayoutParams
            r8 = -1
            r9 = -2
            r6.<init>(r8, r9)
            int r8 = r2 / 4
            r6.setMargins(r2, r8, r2, r8)
            r10.a(r7)
            r11.addView(r7, r6)
            int r5 = r5 + 1
            goto L44
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.feedback.bean.a.a(com.mbridge.msdk.widget.FeedbackRadioGroup, com.mbridge.msdk.setting.b$b):void");
    }

    public void b(int i10) {
        this.f27000q = i10;
    }

    private void a(RadioButton radioButton) {
        if (radioButton != null) {
            radioButton.setOnCheckedChangeListener(new d());
        }
    }

    public void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.f26988e;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.f26984a);
            feedBackButton.setEnabled(this.f26984a != 0.0f);
            feedBackButton.setVisibility(this.f27006w != 8 ? 0 : 8);
            this.f26988e = feedBackButton;
            CampaignEx campaignEx = this.f26986c;
            if (campaignEx != null && !campaignEx.isDynamicView()) {
                b();
            }
            feedBackButton.setOnClickListener(new f());
        }
    }

    public void a(int i10, int i11, int i12, int i13, int i14, float f10, String str, String str2, float f11, JSONArray jSONArray) {
        if (i10 > -1) {
            this.f27008y = i10;
        }
        if (i11 > -1) {
            this.f27009z = i11;
        }
        if (i12 > -1) {
            this.f27007x = i12;
        }
        if (i13 > -1) {
            this.f26991h = i13;
        }
        if (f11 > -1.0f) {
            this.f26990g = f11;
        }
        if (jSONArray != null) {
            this.f26995l = jSONArray;
        }
        this.f26989f = str;
        this.f26985b = str2;
        this.f26984a = f10;
        this.f27002s = i14;
        b();
    }
}
