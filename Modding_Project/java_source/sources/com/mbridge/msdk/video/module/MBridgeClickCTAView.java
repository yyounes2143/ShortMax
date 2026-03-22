package com.mbridge.msdk.video.module;

import android.animation.ObjectAnimator;
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
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.video.dynview.listener.h;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeClickCTAView extends MBridgeClickCTAViewDiff {
    public f ctaClickCallBack;

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f30937m;

    /* renamed from: n  reason: collision with root package name */
    private ImageView f30938n;

    /* renamed from: o  reason: collision with root package name */
    private TextView f30939o;

    /* renamed from: p  reason: collision with root package name */
    private TextView f30940p;

    /* renamed from: q  reason: collision with root package name */
    private String f30941q;

    /* renamed from: r  reason: collision with root package name */
    private float f30942r;

    /* renamed from: s  reason: collision with root package name */
    private float f30943s;

    /* renamed from: t  reason: collision with root package name */
    private int f30944t;

    /* renamed from: u  reason: collision with root package name */
    private ObjectAnimator f30945u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.widget.a {
        c() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e extends com.mbridge.msdk.video.module.listener.impl.e {
        e(ImageView imageView, CampaignEx campaignEx, String str) {
            super(imageView, campaignEx, str);
        }

        @Override // com.mbridge.msdk.video.module.listener.impl.e, com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            super.onFailedLoad(str, str2);
            MBridgeClickCTAView.this.g();
        }
    }

    /* loaded from: classes6.dex */
    public interface f {
    }

    public MBridgeClickCTAView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        JSONException e10;
        JSONObject jSONObject;
        CampaignEx.c rewardTemplateMode;
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                String str = "";
                if (this.f30926b.getRewardTemplateMode() != null) {
                    str = rewardTemplateMode.f() + "";
                }
                j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "cta_click", this.f30926b.getCampaignUnitId(), this.f30926b.isBidCampaign(), this.f30926b.getRequestId(), this.f30926b.getRequestIdNotice(), this.f30926b.getId(), str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f27028j, a(0));
            } catch (JSONException e12) {
                e10 = e12;
                e10.printStackTrace();
                this.f30926b.setTriggerClickSource(1);
                this.f30926b.setClickTempSource(1);
                this.notifyListener.a(105, jSONObject);
            }
        } catch (JSONException e13) {
            e10 = e13;
            jSONObject = null;
        }
        this.f30926b.setTriggerClickSource(1);
        this.f30926b.setClickTempSource(1);
        this.notifyListener.a(105, jSONObject);
    }

    private void f() {
        int findLayout = findLayout("mbridge_reward_clickable_cta");
        if (h0.a(findLayout)) {
            this.f30927c.inflate(findLayout, this);
            this.f30929e = h();
            d();
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ImageView imageView = this.f30938n;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        this.f30937m = (ViewGroup) findViewById(findID("mbridge_viewgroup_ctaroot"));
        this.f30938n = (ImageView) findViewById(findID("mbridge_iv_appicon"));
        this.f30939o = (TextView) findViewById(findID("mbridge_tv_title"));
        TextView textView = (TextView) findViewById(findID("mbridge_tv_install"));
        this.ctaTv = textView;
        return isNotNULL(this.f30937m, this.f30938n, this.f30939o, textView);
    }

    private void i() {
        setWrapContent();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        if (this.f30929e) {
            CampaignEx campaignEx = this.f30926b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                a1.a(this, this.f30926b.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
                setOnClickListener(new b());
            }
            CampaignEx campaignEx2 = this.f30926b;
            if (campaignEx2 != null) {
                a1.a(this.ctaTv, campaignEx2.getLocalRequestId(), this.f30926b.getLocalAllowTrackClick());
            }
            this.ctaTv.setOnClickListener(new c());
            ImageView imageView = this.f30938n;
            if (imageView != null) {
                imageView.setOnClickListener(new d());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ObjectAnimator objectAnimator = this.f30945u;
        if (objectAnimator != null) {
            try {
                objectAnimator.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.f30945u;
        if (objectAnimator != null) {
            try {
                objectAnimator.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f30942r = motionEvent.getRawX();
        this.f30943s = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f30944t = configuration.orientation;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeClickCTAViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        CampaignEx campaignEx = this.f30926b;
        if (campaignEx != null) {
            if (campaignEx.isDynamicView()) {
                a(this, this.f30926b);
            } else {
                f();
            }
            if (this.f30929e) {
                if (com.mbridge.msdk.util.b.a()) {
                    setChinaCTAData();
                }
                this.ctaTv.setText(this.f30926b.getAdCall());
                if (!TextUtils.isEmpty(this.f30926b.getIconUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(this.f30925a.getApplicationContext()).a(this.f30926b.getIconUrl(), new e(this.f30938n, this.f30926b, this.f30941q));
                } else {
                    g();
                }
                if (this.f30939o != null && !TextUtils.isEmpty(this.f30926b.getAppName())) {
                    this.f30939o.setText(this.f30926b.getAppName());
                }
                if (this.f30940p != null && !TextUtils.isEmpty(this.f30926b.getAppDesc())) {
                    this.f30940p.setText(this.f30926b.getAppDesc());
                }
            }
        }
    }

    public void setObjectAnimator(ObjectAnimator objectAnimator) {
        this.f30945u = objectAnimator;
    }

    public void setUnitId(String str) {
        this.f30941q = str;
    }

    public MBridgeClickCTAView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().a(viewGroup, campaignEx), new a(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f30946a;

        a(ViewGroup viewGroup) {
            this.f30946a = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                this.f30946a.addView(aVar.b());
                MBridgeClickCTAView mBridgeClickCTAView = MBridgeClickCTAView.this;
                mBridgeClickCTAView.f30929e = mBridgeClickCTAView.h();
                MBridgeClickCTAView mBridgeClickCTAView2 = MBridgeClickCTAView.this;
                mBridgeClickCTAView2.f30940p = (TextView) mBridgeClickCTAView2.findViewById(mBridgeClickCTAView2.findID("mbridge_tv_desc"));
                MBridgeClickCTAView.this.d();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            p0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeClickCTAViewDiff, com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    public void setCtaClickCallBack(f fVar) {
    }
}
