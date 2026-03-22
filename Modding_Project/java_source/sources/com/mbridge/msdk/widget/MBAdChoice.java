package com.mbridge.msdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* loaded from: classes6.dex */
public class MBAdChoice extends MBImageView {

    /* renamed from: c  reason: collision with root package name */
    private final Context f31724c;

    /* renamed from: d  reason: collision with root package name */
    private String f31725d;

    /* renamed from: e  reason: collision with root package name */
    private String f31726e;

    /* renamed from: f  reason: collision with root package name */
    private String f31727f;

    /* renamed from: g  reason: collision with root package name */
    private CampaignEx f31728g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.foundation.feedback.a f31729h;

    /* loaded from: classes6.dex */
    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
        }
    }

    public MBAdChoice(Context context) {
        super(context);
        this.f31725d = "";
        this.f31726e = "";
        this.f31727f = "";
        this.f31724c = context;
        b();
    }

    private boolean a(CampaignEx campaignEx) {
        this.f31728g = campaignEx;
        g d10 = h.b().d(c.m().b());
        c(campaignEx, d10);
        a(campaignEx, d10);
        b(campaignEx, d10);
        boolean z10 = (TextUtils.isEmpty(this.f31725d) || TextUtils.isEmpty(this.f31726e) || TextUtils.isEmpty(this.f31727f)) ? false : true;
        setImageUrl(this.f31725d);
        return z10;
    }

    private void b() {
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setClickable(true);
    }

    private void c(CampaignEx campaignEx, g gVar) {
        this.f31728g = campaignEx;
        if (campaignEx != null) {
            String privacyUrl = campaignEx.getPrivacyUrl();
            this.f31726e = privacyUrl;
            if (TextUtils.isEmpty(privacyUrl)) {
                CampaignEx.a adchoice = campaignEx.getAdchoice();
                if (adchoice != null) {
                    this.f31726e = adchoice.c();
                }
                if (TextUtils.isEmpty(this.f31726e) && gVar != null) {
                    this.f31726e = gVar.c();
                }
                if (TextUtils.isEmpty(this.f31726e)) {
                    this.f31726e = d.h().f27164g;
                }
            }
        } else if (gVar != null) {
            this.f31726e = gVar.c();
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f31729h == null) {
            this.f31729h = new a();
        }
        u0.a(this.f31728g, this.f31729h, 4, "");
        return true;
    }

    public void setCampaign(Campaign campaign) {
        if (campaign instanceof CampaignEx) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            this.f31728g = campaignEx;
            if (a(campaignEx)) {
                a();
                return;
            }
            return;
        }
        this.f31728g = null;
    }

    public void setFeedbackDialogEventListener(com.mbridge.msdk.foundation.feedback.a aVar) {
        this.f31729h = aVar;
    }

    private void b(CampaignEx campaignEx, g gVar) {
        this.f31728g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f31727f = gVar.d();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f31727f = adchoice.d();
        }
        if (!TextUtils.isEmpty(this.f31727f) || gVar == null) {
            return;
        }
        this.f31727f = gVar.d();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31725d = "";
        this.f31726e = "";
        this.f31727f = "";
        this.f31724c = context;
        b();
    }

    private void a() {
        if (this.f31724c != null) {
            com.mbridge.msdk.foundation.same.image.b.a(c.m().d()).a(this.f31725d, new b());
        }
    }

    private void a(CampaignEx campaignEx, g gVar) {
        this.f31728g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f31725d = gVar.b();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f31725d = adchoice.b();
        }
        if (!TextUtils.isEmpty(this.f31725d) || gVar == null) {
            return;
        }
        this.f31725d = gVar.b();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f31725d = "";
        this.f31726e = "";
        this.f31727f = "";
        this.f31724c = context;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.foundation.same.image.c {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            MBAdChoice.this.setImageBitmap(bitmap);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
