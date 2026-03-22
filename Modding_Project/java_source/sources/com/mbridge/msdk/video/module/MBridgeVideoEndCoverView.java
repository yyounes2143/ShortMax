package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.video.module.listener.impl.j;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeVideoEndCoverView extends MBridgeBaseView {

    /* renamed from: m  reason: collision with root package name */
    private final String f31046m;

    /* renamed from: n  reason: collision with root package name */
    private View f31047n;

    /* renamed from: o  reason: collision with root package name */
    private ImageView f31048o;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f31049p;

    /* renamed from: q  reason: collision with root package name */
    private TextView f31050q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f31051r;

    /* renamed from: s  reason: collision with root package name */
    private TextView f31052s;

    /* renamed from: t  reason: collision with root package name */
    private com.mbridge.msdk.video.signal.factory.b f31053t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.notifyListener.a(104, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVideoEndCoverView.this.g();
        }
    }

    public MBridgeVideoEndCoverView(Context context) {
        super(context);
        this.f31046m = "MBridgeVideoEndCoverView";
    }

    private boolean a(View view) {
        if (view != null) {
            try {
                this.f31048o = (ImageView) view.findViewById(findID("mbridge_vec_iv_icon"));
                this.f31049p = (ImageView) view.findViewById(findID("mbridge_vec_iv_close"));
                this.f31050q = (TextView) view.findViewById(findID("mbridge_vec_tv_title"));
                this.f31051r = (TextView) view.findViewById(findID("mbridge_vec_tv_desc"));
                this.f31052s = (TextView) view.findViewById(findID("mbridge_vec_btn"));
                return true;
            } catch (Throwable th2) {
                p0.b("MBridgeVideoEndCoverView", th2.getMessage());
                return false;
            }
        }
        return true;
    }

    private void e() {
        ImageView imageView;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            if (!TextUtils.isEmpty(campaignEx.getIconUrl()) && (imageView = this.f31048o) != null) {
                a1.a(imageView, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
                com.mbridge.msdk.foundation.same.image.b.a(this.f30925a.getApplicationContext()).a(this.f30926b.getIconUrl(), new j(this.f31048o, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
            }
            TextView textView = this.f31050q;
            if (textView != null) {
                textView.setText(this.f30926b.getAppName());
            }
            TextView textView2 = this.f31052s;
            if (textView2 != null) {
                a1.a(textView2, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
                this.f31052s.setText(this.f30926b.getAdCall());
            }
            TextView textView3 = this.f31051r;
            if (textView3 != null) {
                textView3.setText(this.f30926b.getAppDesc());
            }
        }
    }

    private void f() {
        View view = this.f31047n;
        if (view == null) {
            init(this.f30925a);
            preLoadData(this.f31053t);
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) this.f31047n.getParent()).removeView(this.f31047n);
        }
        addView(this.f31047n);
        a(this.f31047n);
        d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        this.f31049p.setOnClickListener(new a());
        this.f31048o.setOnClickListener(new b());
        this.f31052s.setOnClickListener(new c());
    }

    protected void g() {
        JSONException e10;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JSONException e11;
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27026h, u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f30930f));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27027i, u0.b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f30931g));
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27031m, 0);
                    try {
                        this.f30928d = getContext().getResources().getConfiguration().orientation;
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27029k, this.f30928d);
                    jSONObject2.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(getContext()));
                } catch (JSONException e13) {
                    e11 = e13;
                    p0.b("MBridgeVideoEndCoverView", e11.getMessage());
                    jSONObject = new JSONObject();
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, jSONObject2);
                    this.notifyListener.a(105, jSONObject);
                }
            } catch (JSONException e14) {
                jSONObject2 = jSONObject3;
                e11 = e14;
            }
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, jSONObject2);
            } catch (JSONException e15) {
                e10 = e15;
                e10.printStackTrace();
                this.notifyListener.a(105, jSONObject);
            }
        } catch (JSONException e16) {
            e10 = e16;
            jSONObject = null;
        }
        this.notifyListener.a(105, jSONObject);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_videoend_cover");
        if (h0.a(findLayout)) {
            View inflate = this.f30927c.inflate(findLayout, (ViewGroup) null);
            this.f31047n = inflate;
            if (inflate != null) {
                this.f30929e = a(inflate);
                addView(this.f31047n, -1, -1);
                d();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f30930f = motionEvent.getRawX();
        this.f30931g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f30928d = configuration.orientation;
        removeView(this.f31047n);
        f();
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.f31053t = bVar;
        try {
            if (this.f30926b != null && this.f30929e) {
                e();
            }
        } catch (Throwable th2) {
            p0.a("MBridgeVideoEndCoverView", th2.getMessage());
        }
    }

    public MBridgeVideoEndCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31046m = "MBridgeVideoEndCoverView";
    }
}
