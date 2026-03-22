package com.mbridge.msdk.foundation.feedback;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.feedback.bean.a;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBFeedBackDialog;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
/* compiled from: FeedbackManager.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: d  reason: collision with root package name */
    public static int f26977d = -2;

    /* renamed from: e  reason: collision with root package name */
    public static int f26978e = -2;

    /* renamed from: f  reason: collision with root package name */
    public static volatile boolean f26979f = false;

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout.LayoutParams f26980a;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentHashMap<String, com.mbridge.msdk.foundation.feedback.bean.a> f26981b;

    /* renamed from: c  reason: collision with root package name */
    private g f26982c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FeedbackManager.java */
    /* renamed from: com.mbridge.msdk.foundation.feedback.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0368b {

        /* renamed from: a  reason: collision with root package name */
        private static final b f26983a = new b();
    }

    public static b b() {
        return C0368b.f26983a;
    }

    private com.mbridge.msdk.foundation.feedback.bean.a c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = c.m().b();
        }
        if (this.f26981b.containsKey(str)) {
            return this.f26981b.get(str);
        }
        return null;
    }

    public void a(String str, Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, com.mbridge.msdk.foundation.feedback.a aVar) {
        if (a()) {
            com.mbridge.msdk.foundation.feedback.bean.a b10 = b(str);
            if (aVar != null) {
                b10.a(new a.g(str, aVar));
            }
            FeedBackButton i10 = b10.i();
            if (i10 != null) {
                if (layoutParams == null) {
                    int a10 = u0.a(c.m().d(), 10.0f);
                    this.f26980a.setMargins(a10, a10, a10, a10);
                    layoutParams = this.f26980a;
                }
                ViewGroup viewGroup2 = (ViewGroup) i10.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.removeView(i10);
                }
                Activity a11 = a(context);
                if (a11 != null && viewGroup == null) {
                    viewGroup = (ViewGroup) a11.findViewById(16908290);
                }
                if (viewGroup != null) {
                    viewGroup.removeView(i10);
                    viewGroup.addView(i10, layoutParams);
                }
            }
        }
    }

    public void d(String str) {
        try {
            com.mbridge.msdk.foundation.feedback.bean.a c10 = c(str);
            if (c10 != null) {
                c10.f();
            }
            this.f26981b.remove(str);
            f26979f = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private b() {
        this.f26980a = new RelativeLayout.LayoutParams(f26978e, f26977d);
        this.f26981b = new ConcurrentHashMap<>();
    }

    public com.mbridge.msdk.foundation.feedback.bean.a b(String str) {
        com.mbridge.msdk.foundation.feedback.bean.a aVar;
        if (TextUtils.isEmpty(str)) {
            str = c.m().b();
        }
        if (!this.f26981b.containsKey(str)) {
            aVar = new com.mbridge.msdk.foundation.feedback.bean.a(str);
            this.f26981b.put(str, aVar);
        } else {
            aVar = this.f26981b.get(str);
        }
        if (aVar == null) {
            com.mbridge.msdk.foundation.feedback.bean.a aVar2 = new com.mbridge.msdk.foundation.feedback.bean.a(str);
            this.f26981b.put(str, aVar2);
            return aVar2;
        }
        return aVar;
    }

    public void b(String str, int i10) {
        b(str).c(i10);
    }

    public boolean a() {
        g d10 = h.b().d(c.m().b());
        this.f26982c = d10;
        if (d10 == null) {
            this.f26982c = h.b().a();
            return false;
        }
        return false;
    }

    public Activity a(Context context) {
        Activity activity;
        Activity activity2;
        Context f10 = c.m().f();
        Activity activity3 = null;
        try {
            activity = f10 instanceof Activity ? (Activity) f10 : null;
        } catch (Exception e10) {
            e = e10;
        }
        try {
            if ((context instanceof Activity) && !((Activity) context).isDestroyed()) {
                activity = (Activity) context;
            }
            WeakReference<Activity> a10 = c.m().a();
            if (a10 != null && (activity2 = a10.get()) != null && !activity2.isFinishing() && !activity2.isDestroyed()) {
                activity = activity2;
            }
            if (activity == null || activity.isFinishing()) {
                return null;
            }
            if (activity.isDestroyed()) {
                return null;
            }
            return activity;
        } catch (Exception e11) {
            e = e11;
            activity3 = activity;
            e.printStackTrace();
            return activity3;
        }
    }

    public void a(String str, int i10, ViewGroup viewGroup) {
        com.mbridge.msdk.foundation.feedback.bean.a b10 = b(str);
        if (b10.i() != null) {
            b10.d(i10);
            if (i10 == 0) {
                a(str, c.m().d(), viewGroup, (ViewGroup.LayoutParams) null, (com.mbridge.msdk.foundation.feedback.a) null);
            }
        }
    }

    public void a(String str, int i10, int i11, int i12, float f10, float f11, float f12, String str2, String str3, float f13, JSONArray jSONArray) {
        com.mbridge.msdk.foundation.feedback.bean.a b10 = b(str);
        Context d10 = c.m().d();
        b10.a(u0.a(d10, f10), u0.a(d10, f11), u0.a(d10, i10), u0.a(d10, i11), u0.a(d10, i12), f12, str2, str3, f13, jSONArray);
    }

    public void a(String str, int i10, com.mbridge.msdk.foundation.feedback.a aVar) {
        com.mbridge.msdk.foundation.feedback.bean.a b10 = b(str);
        b10.a(new a.g(str, aVar));
        if (i10 == 1) {
            b10.g();
        } else {
            b10.p();
        }
    }

    public FeedBackButton a(String str) {
        return b(str).i();
    }

    public void a(String str, int i10, int i11, String str2, String str3) {
        com.mbridge.msdk.foundation.feedback.bean.a c10 = c(str + "_1");
        if (c10 == null) {
            c10 = c(str + "_2");
            if (c10 == null) {
                c10 = c(str + "_3");
                if (c10 == null) {
                    c10 = c(str + "_4");
                    if (c10 == null) {
                        c10 = b(str);
                    }
                }
            }
            c10.c(0);
        }
        if (c10 != null) {
            CampaignEx h10 = c10.h();
            j.a(h10, h10 != null ? h10.getCampaignUnitId() : "", c10.k(), c10.j(), !TextUtils.isEmpty(str2) ? str2 : "", i10, h10 != null ? h10.getAdType() : 0, i11, str3);
        }
    }

    public void a(String str, CampaignEx campaignEx) {
        b(str).a(campaignEx);
    }

    public void a(String str, String str2) {
        b(str).b(str2);
    }

    public void a(String str, FeedBackButton feedBackButton) {
        b(str).a(feedBackButton);
    }

    public void a(String str, com.mbridge.msdk.foundation.feedback.a aVar) {
        com.mbridge.msdk.foundation.feedback.bean.a b10 = b(str);
        if (aVar != null) {
            b10.a(new a.g(str, aVar));
        }
    }

    public void a(String str, int i10) {
        b(str).b(i10);
    }

    public boolean a(String str, Context context, MBFeedBackDialog mBFeedBackDialog) {
        if (mBFeedBackDialog == null) {
            p0.c("", "mbAlertDialog  is null");
            return false;
        }
        return a(context, mBFeedBackDialog);
    }

    private boolean a(Context context, MBFeedBackDialog mBFeedBackDialog) {
        Activity a10 = a(context);
        if (a10 == null || mBFeedBackDialog == null || a10.isDestroyed()) {
            return false;
        }
        try {
            if (mBFeedBackDialog.isShowing() || a10.isFinishing()) {
                return false;
            }
            mBFeedBackDialog.show();
            return true;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
