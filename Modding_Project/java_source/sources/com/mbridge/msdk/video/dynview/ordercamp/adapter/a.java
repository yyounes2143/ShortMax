package com.mbridge.msdk.video.dynview.ordercamp.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.io.File;
import java.util.List;
import java.util.Locale;
/* compiled from: OrderCampAdapter.java */
/* loaded from: classes6.dex */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private boolean f30744a = false;

    /* renamed from: b  reason: collision with root package name */
    private b f30745b;

    /* renamed from: c  reason: collision with root package name */
    private List<CampaignEx> f30746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OrderCampAdapter.java */
    /* renamed from: com.mbridge.msdk.video.dynview.ordercamp.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0441a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f30747a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f30748b;

        C0441a(ImageView imageView, boolean z10) {
            this.f30747a = imageView;
            this.f30748b = z10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            if (this.f30748b) {
                this.f30747a.setVisibility(8);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (!bitmap.isRecycled()) {
                    this.f30747a.setImageBitmap(bitmap);
                }
            } catch (Throwable th2) {
                p0.b("OrderCampAdapter", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OrderCampAdapter.java */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        RelativeLayout f30750a;

        /* renamed from: b  reason: collision with root package name */
        MBRotationView f30751b;

        /* renamed from: c  reason: collision with root package name */
        MBridgeImageView f30752c;

        /* renamed from: d  reason: collision with root package name */
        RoundImageView f30753d;

        /* renamed from: e  reason: collision with root package name */
        TextView f30754e;

        /* renamed from: f  reason: collision with root package name */
        TextView f30755f;

        /* renamed from: g  reason: collision with root package name */
        TextView f30756g;

        /* renamed from: h  reason: collision with root package name */
        TextView f30757h;

        /* renamed from: i  reason: collision with root package name */
        MBridgeLevelLayoutView f30758i;

        /* renamed from: j  reason: collision with root package name */
        ImageView f30759j;

        /* renamed from: k  reason: collision with root package name */
        ImageView f30760k;

        /* renamed from: l  reason: collision with root package name */
        MBCusRoundImageView f30761l;

        /* renamed from: m  reason: collision with root package name */
        MBCusRoundImageView f30762m;

        /* renamed from: n  reason: collision with root package name */
        MBStarLevelLayoutView f30763n;

        /* renamed from: o  reason: collision with root package name */
        MBHeatLevelLayoutView f30764o;

        /* renamed from: p  reason: collision with root package name */
        MBFrameLayout f30765p;

        b() {
        }
    }

    public a(List<CampaignEx> list) {
        this.f30746c = list;
    }

    private void a(int i10, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f30746c;
        if (list == null || this.f30745b == null || list.size() == 0) {
            return;
        }
        MBridgeImageView mBridgeImageView = this.f30745b.f30752c;
        if (mBridgeImageView != null) {
            a(mBridgeImageView, this.f30746c.get(i10).getImageUrl(), false);
        }
        ImageView imageView = this.f30745b.f30760k;
        if (imageView != null) {
            a(imageView, this.f30746c.get(i10).getImageUrl(), false);
        }
        RoundImageView roundImageView = this.f30745b.f30753d;
        if (roundImageView != null) {
            roundImageView.setBorderRadius(25);
            a(this.f30745b.f30753d, this.f30746c.get(i10).getIconUrl(), true);
        }
        double rating = this.f30746c.get(i10).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBridgeLevelLayoutView mBridgeLevelLayoutView = this.f30745b.f30758i;
        if (mBridgeLevelLayoutView != null) {
            mBridgeLevelLayoutView.setRatingAndUser(rating, this.f30746c.get(i10).getNumberRating());
            this.f30745b.f30758i.setOrientation(0);
        }
        MBRotationView mBRotationView = this.f30745b.f30751b;
        if (mBRotationView != null) {
            mBRotationView.setWidthRatio(1.0f);
            this.f30745b.f30751b.setHeightRatio(1.0f);
            this.f30745b.f30751b.setAutoscroll(false);
        }
        MBridgeImageView mBridgeImageView2 = this.f30745b.f30752c;
        if (mBridgeImageView2 != null) {
            mBridgeImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
        }
    }

    private View b(int i10) {
        View view;
        String str;
        String str2;
        try {
            List<CampaignEx> list = this.f30746c;
            str = "";
            if (list != null && list.get(i10) != null) {
                str2 = this.f30746c.get(i10).getMof_tplid() + "";
                str = this.f30746c.get(i10).getCMPTEntryUrl();
            } else {
                str2 = "501";
            }
        } catch (Exception e10) {
            p0.b("OrderCampAdapter", e10.getMessage());
            view = null;
        }
        if (TextUtils.isEmpty(str)) {
            return a();
        }
        int F = l0.F(com.mbridge.msdk.foundation.controller.c.m().d());
        String a10 = y.a(0, str2, str);
        if (TextUtils.isEmpty(a10)) {
            return a();
        }
        File file = new File(a10 + File.separator + "template_config.json");
        if (file.isFile() && file.exists()) {
            List<String> a11 = n0.a(a10, "template_" + str2 + "_" + F + "_item");
            if (a11 == null) {
                return a();
            }
            view = a(i10, a11);
            return this.f30744a ? view : a();
        }
        return a();
    }

    private int c(String str) {
        return h0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, "id");
    }

    public int d(String str) {
        return h0.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<CampaignEx> list = this.f30746c;
        if (list != null && list.size() > 0) {
            return this.f30746c.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        List<CampaignEx> list = this.f30746c;
        if (list != null) {
            return list.get(i10);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            if (view == null) {
                view = b(i10);
            } else {
                this.f30745b = (b) view.getTag();
            }
            a(view);
            if (this.f30744a) {
                b(i10, viewGroup);
            } else {
                a(i10, viewGroup);
            }
            a(i10);
        } catch (Exception e10) {
            p0.b("OrderCampAdapter", e10.getMessage());
        }
        List<CampaignEx> list = this.f30746c;
        if (list != null && list.size() > i10) {
            a1.a(view, this.f30746c.get(i10).getLocalRequestId(), this.f30746c.get(i10).getLocalAllowTrackClick());
        }
        return view;
    }

    private void b(int i10, ViewGroup viewGroup) {
        List<CampaignEx> list = this.f30746c;
        if (list == null || this.f30745b == null || list.size() == 0) {
            return;
        }
        MBCusRoundImageView mBCusRoundImageView = this.f30745b.f30761l;
        if (mBCusRoundImageView != null) {
            mBCusRoundImageView.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
            a(this.f30745b.f30761l, this.f30746c.get(i10).getImageUrl(), false);
        }
        ImageView imageView = this.f30745b.f30760k;
        if (imageView != null) {
            a(imageView, this.f30746c.get(i10).getImageUrl(), false);
        }
        MBCusRoundImageView mBCusRoundImageView2 = this.f30745b.f30762m;
        if (mBCusRoundImageView2 != null) {
            mBCusRoundImageView2.setBorder(50, 20, -1);
            a(this.f30745b.f30762m, this.f30746c.get(i10).getIconUrl(), true);
        }
        double rating = this.f30746c.get(i10).getRating();
        if (rating <= 0.0d) {
            rating = 5.0d;
        }
        MBStarLevelLayoutView mBStarLevelLayoutView = this.f30745b.f30763n;
        if (mBStarLevelLayoutView != null) {
            mBStarLevelLayoutView.setRating((int) rating);
            this.f30745b.f30763n.setOrientation(0);
        }
        MBHeatLevelLayoutView mBHeatLevelLayoutView = this.f30745b.f30764o;
        if (mBHeatLevelLayoutView != null) {
            mBHeatLevelLayoutView.setHeatCount(this.f30746c.get(i10).getNumberRating());
        }
    }

    private View a(int i10, List<String> list) {
        int F = l0.F(com.mbridge.msdk.foundation.controller.c.m().d());
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        View createDynamicView = DynamicViewCreator.getInstance().createDynamicView(new DyOption.Builder().campaignEx(this.f30746c.get(i10)).fileDirs(list).dyAdType(DyAdType.REWARD).orientation(F).adChoiceLink(u0.a(this.f30746c.get(i10))).build());
        if (createDynamicView != null) {
            this.f30744a = true;
            b bVar = new b();
            this.f30745b = bVar;
            bVar.f30761l = (MBCusRoundImageView) createDynamicView.findViewById(b("mbridge_lv_iv"));
            this.f30745b.f30760k = (ImageView) createDynamicView.findViewById(b("mbridge_lv_iv_burl"));
            this.f30745b.f30762m = (MBCusRoundImageView) createDynamicView.findViewById(b("mbridge_lv_icon_iv"));
            this.f30745b.f30763n = (MBStarLevelLayoutView) createDynamicView.findViewById(b("mbridge_lv_sv_starlevel"));
            this.f30745b.f30765p = (MBFrameLayout) createDynamicView.findViewById(b("mbridge_lv_ration"));
            createDynamicView.setTag(this.f30745b);
        }
        return createDynamicView;
    }

    private int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private View a() {
        View inflate = LayoutInflater.from(com.mbridge.msdk.foundation.controller.c.m().d()).inflate(d("mbridge_order_layout_item"), (ViewGroup) null);
        b bVar = new b();
        this.f30745b = bVar;
        bVar.f30752c = (MBridgeImageView) inflate.findViewById(c("mbridge_lv_iv"));
        this.f30745b.f30760k = (ImageView) inflate.findViewById(c("mbridge_lv_iv_burl"));
        this.f30745b.f30753d = (RoundImageView) inflate.findViewById(c("mbridge_lv_icon_iv"));
        this.f30745b.f30758i = (MBridgeLevelLayoutView) inflate.findViewById(c("mbridge_lv_sv_starlevel"));
        this.f30745b.f30751b = (MBRotationView) inflate.findViewById(c("mbridge_lv_ration"));
        inflate.setTag(this.f30745b);
        return inflate;
    }

    private void a(View view) {
        this.f30745b.f30750a = (RelativeLayout) view.findViewById(a("mbridge_lv_item_rl"));
        this.f30745b.f30754e = (TextView) view.findViewById(a("mbridge_lv_title_tv"));
        this.f30745b.f30756g = (TextView) view.findViewById(a("mbridge_lv_tv_install"));
        this.f30745b.f30764o = (MBHeatLevelLayoutView) view.findViewById(a("mbridge_lv_sv_heat_level"));
        this.f30745b.f30755f = (TextView) view.findViewById(a("mbridge_lv_desc_tv"));
        this.f30745b.f30759j = (ImageView) view.findViewById(a("mbridge_iv_flag"));
        this.f30745b.f30757h = (TextView) view.findViewById(a("mbridge_order_viewed_tv"));
    }

    private void a(ImageView imageView, String str, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new C0441a(imageView, z10));
        } else if (z10) {
            imageView.setVisibility(8);
        }
    }

    private void a(int i10) {
        b bVar = this.f30745b;
        if (bVar != null) {
            if (bVar.f30754e != null) {
                this.f30745b.f30754e.setText(this.f30746c.get(i10).getAppName());
            }
            if (this.f30745b.f30755f != null) {
                this.f30745b.f30755f.setText(this.f30746c.get(i10).getAppDesc());
            }
            if (this.f30745b.f30756g != null) {
                String adCall = this.f30746c.get(i10).getAdCall();
                if (this.f30745b.f30756g instanceof MBridgeTextView) {
                    ((MBridgeTextView) this.f30745b.f30756g).setObjectAnimator(new com.mbridge.msdk.video.dynview.ui.b().a(this.f30745b.f30756g));
                }
                this.f30745b.f30756g.setText(adCall);
            }
            if (this.f30745b.f30759j != null) {
                try {
                    String language = Locale.getDefault().getLanguage();
                    Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                    if (d10 != null) {
                        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                            this.f30745b.f30759j.setImageDrawable(d10.getResources().getDrawable(d10.getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        } else {
                            this.f30745b.f30759j.setImageDrawable(d10.getResources().getDrawable(d10.getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
                        }
                    }
                } catch (Exception e10) {
                    p0.b("OrderCampAdapter", e10.getMessage());
                }
                u0.a(2, this.f30745b.f30759j, this.f30746c.get(i10), com.mbridge.msdk.foundation.controller.c.m().d(), false, null);
            }
            if (this.f30745b.f30757h != null) {
                try {
                    this.f30745b.f30757h.setText(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getString(com.mbridge.msdk.foundation.controller.c.m().d().getResources().getIdentifier("mbridge_reward_viewed_text_str", TypedValues.Custom.S_STRING, com.mbridge.msdk.foundation.controller.c.m().h())));
                    this.f30745b.f30757h.setVisibility(0);
                } catch (Exception e11) {
                    p0.b("OrderCampAdapter", e11.getMessage());
                }
            }
        }
    }

    private int a(String str) {
        if (this.f30744a) {
            return b(str);
        }
        return c(str);
    }
}
