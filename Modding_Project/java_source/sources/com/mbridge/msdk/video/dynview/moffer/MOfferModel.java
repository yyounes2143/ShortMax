package com.mbridge.msdk.video.dynview.moffer;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.system.NoProGuard;
import com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener;
import com.mbridge.msdk.video.dynview.widget.MBridgeRelativeLayout;
import com.mbridge.msdk.video.dynview.widget.ObservableScrollView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MOfferModel implements NoProGuard {
    private static final String MOF_LOAD_RESULT_CODE_OFFER_LESS_THAN_5 = "12930014";
    private static final String MOF_LOAD_RESULT_FAILED = "2";
    private static final String MOF_LOAD_RESULT_SUCCESS = "1";
    private static final String TAG = "MOfferModel";
    private int admf;
    private int admftm;
    private List<Integer> cacheImpressionReportList;
    private List<Integer> cacheOnlyImpressionReportList;
    private boolean isShowMoreOffer;
    private CampaignUnit mCampaignUnit;
    private Context mContext;
    private LinearLayout mLinearLayout;
    private CampaignEx mMainOfferCampaignEx;
    private com.mbridge.msdk.video.dynview.listener.g mMoreOfferLayoutListener;
    private com.mbridge.msdk.video.module.listener.a mNotifyListener;
    private ObservableScrollView mObservableScrollView;
    private com.mbridge.msdk.foundation.same.net.wrapper.e mParam;
    private String mRid;
    private String mUnitId;
    private MBridgeRelativeLayout viewMofferLayout;
    private final String VALUE_MOF_TYPE = "1";
    private final String VALUE_H5_TYPE = "1";
    private final String VALUE_MOF = "1";
    private final String VALUE_COUNTRY_CODE = "CN";
    private final String VALUE_MOF_VER = "1";
    private final String VALUE_OFF_SET = MBridgeConstans.ENDCARD_URL_TYPE_PL;
    private final String VALUE_CATEGORY = MBridgeConstans.ENDCARD_URL_TYPE_PL;
    private final String VALUE_ONLY_IMPRESSION = "1";
    private final String VALUE_PING_MODE = "1";
    private final String VALUE_HTTP_REQ = "2";
    private final String VALUE_AD_NUM = "20";
    private final String VALUE_TNUM = "20";
    private final String VALUE_API_VERSION = "2.3";
    private final String VALUE_DEFAULT_VIDEO_TEMP_ID = "404";
    private final String K = CampaignEx.JSON_KEY_AD_K;
    private final String MOF_TEST_UID = "mof_testuid";
    private final String MCC = "mcc";
    private final String MOF_UID = "mof_uid";
    private final String MNC = "mnc";
    private final String RV_TID = "rv_tid";
    private final String EC_ID = "ecid";
    private final String TP_LGP = "tplgp";
    private final String V_FMD5 = "v_fmd5";
    private final String I_FMD5 = "i_fmd5";
    private final String APP_ID = "app_id";
    private final String SIGN = "sign";
    private final String PARENT_UNIT = "parent_unit";
    private final String E = "e";
    private final String MOF_TYPE = "mof_type";
    private final String H5_TYPE = "h5_type";
    private final String MOF = "mof";
    private final String COUNTRY_CODE = "country_code";
    private final String MOF_VER = "mof_ver";
    private final String CRT_CID = "crt_cid";
    private final String CRT_RID = "crt_rid";
    private final String H5_T = "h5_t";
    private final String MOF_T = "mof_t";
    private final String MOF_DATA = "mof_data";
    private final String OFFER_ID = "offer_id";
    private final String OFF_SET = TypedValues.CycleType.S_WAVE_OFFSET;
    private final String CATEGORY = "category";
    private final String ONLY_IMPRESSION = "only_impression";
    private final String PING_MODE = "ping_mode";
    private final String HTTP_REQ = "http_req";
    private final String AD_NUM = "ad_num";
    private final String TNUM = "tnum";
    private final String API_VERSION = "api_version";
    private final String MOF_DOMAIN = "mof_domain";
    private final String PARENT_ID = "parent_id";
    private final String MOF_PARENT_ID = "mof_parent_id";
    private final String MOF_CALLBACK_DATE = "mcd";
    private final String UC_PARENT_UNIT = "uc_parent_unit";
    private final String DEFAULT_PATH_V3 = "/openapi/ad/v3";
    private final String PARENT_EXCHANGE = "parent_exchange";
    private final String PARENT_AD_TYPE = "parent_ad_type";
    private final String PARENT_TEMPLATE_ID = "parent_template_id";
    private final String ONE_ID = "oneId";
    private final String DY_VIEW = "dy_view";
    private final String MORE_OFFER_DEFAULT_UNIT_ID = "117361";
    private final String MORE_OFFER_DEFAULT_APP_ID = "92762";
    private final String MORE_OFFER_DEFAULT_APP_KEY = "936dcbdd57fe235fd7cf61c2e93da3c4";
    private final String MORE_OFFER_LOAD_SUCCESS = "more offer load success";
    private final String MORE_OFFER_LOAD_FAILED = "more offer load failed";
    private final String MORE_OFFER_SHOW = "more offer show";
    private final String MORE_OFFER_CLICK = "more offer click";
    private final String MORE_OFFER_SHOW_FAILED = "more offer show fail";
    private final String UNIT_ID = MBridgeConstans.PROPERTIES_UNIT_ID;
    private final String R_ID = "r_id";
    private final int DO_ACTION_IMPRESSION = 0;
    private final int DO_ACTION_ONLY_IMPRESSION = 1;
    private volatile boolean hasReportMoreOfferLoad = false;
    private volatile boolean hasReportMoreOfferShow = false;
    private int bitmapSuccessCount = 0;
    private List<Integer> mImpressionId = new ArrayList();
    private int mControlShowSize = 0;
    private boolean isOnlyImpShow = false;
    private boolean mHasReportMofScenes = false;
    private boolean mIsRetry = false;
    private int mFromType = 0;
    private OnItemExposeListener onItemExposeListener = new a();
    private com.mbridge.msdk.video.dynview.moffer.c mMoreOfferShowCallBack = new b();

    /* loaded from: classes6.dex */
    class a implements OnItemExposeListener {
        a() {
        }

        @Override // com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener
        public void onItemViewFirstVisible() {
            if (MOfferModel.this.viewMofferLayout != null && MOfferModel.this.isOnlyImpShow) {
                if (MOfferModel.this.viewMofferLayout.getVisibility() == 0) {
                    try {
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, 0, 1, "117361");
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                if (MOfferModel.this.cacheOnlyImpressionReportList == null) {
                    MOfferModel.this.cacheOnlyImpressionReportList = new ArrayList();
                }
                MOfferModel.this.cacheOnlyImpressionReportList.add(0);
            }
        }

        @Override // com.mbridge.msdk.video.dynview.endcard.expose.OnItemExposeListener
        public void onItemViewVisible(boolean z10, int i10) {
            if (MOfferModel.this.viewMofferLayout == null) {
                return;
            }
            if (MOfferModel.this.viewMofferLayout.getVisibility() == 0) {
                if (!MOfferModel.this.hasReportMoreOfferShow) {
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer show", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                    MOfferModel.this.hasReportMoreOfferShow = true;
                }
                try {
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, i10, 0, "117361");
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (MOfferModel.this.cacheImpressionReportList == null) {
                MOfferModel.this.cacheImpressionReportList = new ArrayList();
            }
            if (!MOfferModel.this.cacheImpressionReportList.contains(Integer.valueOf(i10))) {
                MOfferModel.this.cacheImpressionReportList.add(Integer.valueOf(i10));
            }
        }
    }

    /* loaded from: classes6.dex */
    class b implements com.mbridge.msdk.video.dynview.moffer.c {
        b() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.c
        public void a(List<View> list) {
            TextView textView;
            if (MOfferModel.this.viewMofferLayout != null && (textView = (TextView) MOfferModel.this.viewMofferLayout.findViewById(MOfferModel.this.findID("mbridge_reward_end_card_like_tv"))) != null) {
                textView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements com.mbridge.msdk.video.dynview.moffer.b {
        d() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.b
        public void a() {
            try {
                if (MOfferModel.this.cacheImpressionReportList != null) {
                    for (int i10 = 0; i10 < MOfferModel.this.cacheImpressionReportList.size(); i10++) {
                        if (!MOfferModel.this.hasReportMoreOfferShow) {
                            com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, MOfferModel.this.mContext, "more offer show", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                            MOfferModel.this.hasReportMoreOfferShow = true;
                        }
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, ((Integer) MOfferModel.this.cacheImpressionReportList.get(i10)).intValue(), 0, "117361");
                    }
                }
                if (!MOfferModel.this.isOnlyImpShow && MOfferModel.this.cacheOnlyImpressionReportList != null) {
                    for (int i11 = 0; i11 < MOfferModel.this.cacheOnlyImpressionReportList.size(); i11++) {
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mCampaignUnit, ((Integer) MOfferModel.this.cacheOnlyImpressionReportList.get(i11)).intValue(), 1, "117361");
                    }
                }
                MOfferModel.this.release();
            } catch (Exception e10) {
                p0.b(MOfferModel.TAG, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class e implements com.mbridge.msdk.video.dynview.moffer.d {
        e() {
        }

        @Override // com.mbridge.msdk.video.dynview.moffer.d
        public void a() {
            if (MOfferModel.this.viewMofferLayout != null && MOfferModel.this.viewMofferLayout.getVisibility() != 0) {
                com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, MOfferModel.this.mContext, "more offer show fail", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
            }
            MOfferModel.this.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class f implements View.OnTouchListener {
        f() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                MOfferModel.this.checkViewVisiableState();
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class g implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30727a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f30728b;

        g(int i10, View view) {
            this.f30727a = i10;
            this.f30728b = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CampaignEx campaignEx;
            try {
                if (MOfferModel.this.mCampaignUnit != null && MOfferModel.this.mCampaignUnit.ads != null && MOfferModel.this.mCampaignUnit.ads.size() > 0 && (campaignEx = MOfferModel.this.mCampaignUnit.ads.get(this.f30727a)) != null) {
                    if (MOfferModel.this.mNotifyListener != null) {
                        MOfferModel mOfferModel = MOfferModel.this;
                        mOfferModel.callBackClick(mOfferModel.mNotifyListener);
                    }
                    campaignEx.setLocalRequestId(MOfferModel.this.mCampaignUnit.getLocalRequestId());
                    com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer click", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                    com.mbridge.msdk.video.dynview.request.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, MOfferModel.this.mUnitId, this.f30728b);
                }
            } catch (Exception e10) {
                p0.b(MOfferModel.TAG, e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MOfferModel.this.mObservableScrollView != null) {
                if (MOfferModel.this.mObservableScrollView.getVisibility() == 0) {
                    MOfferModel.this.mObservableScrollView.setVisibility(8);
                } else {
                    MOfferModel.this.mObservableScrollView.setVisibility(0);
                }
            }
            try {
                new com.mbridge.msdk.video.dynview.ui.b().c(MOfferModel.this.mLinearLayout, 300L);
            } catch (Exception e10) {
                p0.b(MOfferModel.TAG, e10.getMessage());
            }
        }
    }

    static /* synthetic */ int access$2208(MOfferModel mOfferModel) {
        int i10 = mOfferModel.bitmapSuccessCount;
        mOfferModel.bitmapSuccessCount = i10 + 1;
        return i10;
    }

    private void addLikeTextView() {
        TextView textView;
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null || (textView = (TextView) mBridgeRelativeLayout.findViewById(findID("mbridge_reward_end_card_like_tv"))) == null) {
            return;
        }
        textView.setTextColor(Color.parseColor("#FF000000"));
        textView.setTextSize(10.0f);
        if (l0.p(com.mbridge.msdk.foundation.controller.c.m().d()).contains("zh")) {
            textView.setEms(1);
            textView.getLayoutParams().width = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f);
            textView.setText("猜你喜欢");
        } else {
            textView.setText("Just\nfor\nYou");
        }
        textView.setOnClickListener(new i());
    }

    private View buildItemView(int i10) {
        com.mbridge.msdk.foundation.same.report.metrics.c a10;
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        View inflate = LayoutInflater.from(this.mContext).inflate(h0.a(context, "mbridge_reward_end_card_more_offer_item", TtmlNode.TAG_LAYOUT), (ViewGroup) null, false);
        int a11 = h0.a(this.mContext, "mbridge_reward_end_card_item_iv", "id");
        if (inflate == null) {
            return null;
        }
        setOfferData(this.mCampaignUnit.getAds(), i10, (RoundImageView) inflate.findViewById(a11), (TextView) inflate.findViewById(h0.a(this.mContext, "mbridge_reward_end_card_item_title_tv", "id")));
        CampaignEx campaignEx = this.mCampaignUnit.getAds().get(0);
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD));
        if (!TextUtils.isEmpty(campaignEx.getBidToken())) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        if (!TextUtils.isEmpty(this.mCampaignUnit.getLocalRequestId())) {
            campaignEx.setLocalRequestId(this.mCampaignUnit.getLocalRequestId());
            a10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(this.mCampaignUnit.getLocalRequestId());
        } else {
            a10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(false, campaignEx.getBidToken(), eVar, campaignEx, this.mUnitId);
        }
        a1.a(inflate, a10.o(), campaignEx.getLocalAllowTrackClick());
        this.mCampaignUnit.setLocalRequestId(a10.o());
        inflate.setOnClickListener(new g(i10, inflate));
        return inflate;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:5|(1:7)|8|(2:9|10)|(21:14|15|(1:17)(1:52)|18|19|(1:21)(1:51)|22|(1:24)(1:50)|25|(2:27|(1:29))(1:49)|30|(1:32)(1:48)|33|(1:35)(1:47)|36|37|38|39|(1:41)|42|43)|54|15|(0)(0)|18|19|(0)(0)|22|(0)(0)|25|(0)(0)|30|(0)(0)|33|(0)(0)|36|37|38|39|(0)|42|43) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01ed, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01ee, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x024a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void buildRequestParams(com.mbridge.msdk.foundation.entity.CampaignEx r28) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.moffer.MOfferModel.buildRequestParams(com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private void buildScrollViewGroup() {
        if (this.mContext != null && this.viewMofferLayout != null && this.mMainOfferCampaignEx != null) {
            this.mLinearLayout = new LinearLayout(this.mContext);
            this.mLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
            this.mLinearLayout.setOrientation(0);
            this.mLinearLayout.setGravity(17);
            for (int i10 = 0; i10 < this.mCampaignUnit.ads.size(); i10++) {
                View buildItemView = buildItemView(i10);
                if (buildItemView != null) {
                    this.mLinearLayout.addView(buildItemView);
                }
            }
            this.mObservableScrollView.addView(this.mLinearLayout);
            this.mObservableScrollView.setOnTouchListener(new f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callBackClick(com.mbridge.msdk.video.module.listener.a aVar) {
        if (aVar == null) {
            return;
        }
        aVar.a(128, "");
    }

    private void createMoreOfferList() {
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null) {
            return;
        }
        this.mObservableScrollView = (ObservableScrollView) mBridgeRelativeLayout.findViewById(findID("mbridge_moreoffer_hls"));
        buildScrollViewGroup();
        addLikeTextView();
        showView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMoreOfferView() {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null || this.mContext == null || campaignUnit.getAds() == null || this.mCampaignUnit.getAds().size() == 0) {
            return;
        }
        setMoreOfferLayoutCallBack();
        createMoreOfferList();
    }

    private void doAdmfContorl() {
        JSONObject jSONObject;
        try {
            CampaignEx campaignEx = this.mMainOfferCampaignEx;
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getMoreOfferJsonData())) {
                JSONObject jSONObject2 = new JSONObject(this.mMainOfferCampaignEx.getMoreOfferJsonData());
                int i10 = this.mFromType;
                if (i10 != 1) {
                    if (i10 != 2) {
                        jSONObject = null;
                    } else {
                        jSONObject = jSONObject2.getJSONObject(CampaignEx.ENDCARD_URL);
                    }
                } else {
                    jSONObject = jSONObject2.getJSONObject("template_url");
                }
                if (jSONObject == null) {
                    return;
                }
                if (jSONObject.has(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMFTM)) {
                    this.admftm = jSONObject.getInt(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMFTM);
                }
                if (jSONObject.has(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMF)) {
                    this.admf = jSONObject.getInt(MBridgeConstans.DYNAMIC_VIEW_MORE_OFFER_ADMF);
                }
            }
        } catch (Exception e10) {
            p0.b(TAG, e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doControllableImpOnRequest() {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null) {
            return;
        }
        try {
            com.mbridge.msdk.video.dynview.request.a.a(campaignUnit, 0, 1, "117361");
            this.isOnlyImpShow = true;
            if (this.mCampaignUnit.getAds() == null) {
                return;
            }
            int size = this.mCampaignUnit.getAds().size();
            if (this.admf >= size) {
                this.admf = size;
            }
            if (this.mImpressionId == null) {
                this.mImpressionId = new ArrayList();
            }
            for (int i10 = 0; i10 < this.admf; i10++) {
                if (!this.mImpressionId.contains(Integer.valueOf(i10))) {
                    com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, i10, 0, "117361");
                    this.mImpressionId.add(Integer.valueOf(i10));
                }
            }
        } catch (Exception e10) {
            p0.b(TAG, e10.getMessage());
        }
    }

    private void doControllableImpOnShow(int i10) {
        CampaignUnit campaignUnit = this.mCampaignUnit;
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return;
        }
        try {
            int size = this.mCampaignUnit.getAds().size();
            if (this.mControlShowSize == 0) {
                this.mControlShowSize = this.admf + i10;
            }
            if (this.mControlShowSize >= size) {
                this.mControlShowSize = size;
            }
            while (i10 < this.mControlShowSize) {
                if (!this.mImpressionId.contains(Integer.valueOf(i10))) {
                    com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, i10, 0, "117361");
                    this.mImpressionId.add(Integer.valueOf(i10));
                }
                i10++;
            }
        } catch (Exception e10) {
            p0.b(TAG, e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findID(String str) {
        return h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }

    private void initData() {
        String str;
        CampaignEx campaignEx = this.mMainOfferCampaignEx;
        if (campaignEx != null && this.mContext != null) {
            buildRequestParams(campaignEx);
            if (this.mParam == null) {
                return;
            }
            com.mbridge.msdk.video.dynview.request.b bVar = new com.mbridge.msdk.video.dynview.request.b(this.mContext);
            c cVar = new c();
            String str2 = com.mbridge.msdk.foundation.same.net.utils.d.h().Z;
            if (!TextUtils.isEmpty(this.mMainOfferCampaignEx.getReq_ext_data())) {
                try {
                    JSONObject jSONObject = new JSONObject(this.mMainOfferCampaignEx.getReq_ext_data());
                    String optString = jSONObject.optString("mof_domain");
                    if (!TextUtils.isEmpty(optString)) {
                        str2 = optString + "/openapi/ad/v3";
                    }
                    String optString2 = jSONObject.optString("parent_id");
                    if (!TextUtils.isEmpty(optString2)) {
                        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mof_parent_id", optString2);
                    }
                    String optString3 = jSONObject.optString("oneId");
                    if (!TextUtils.isEmpty(optString3)) {
                        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "oneId", optString3);
                    }
                    String optString4 = jSONObject.optString("mcd");
                    if (!TextUtils.isEmpty(optString4)) {
                        com.mbridge.msdk.foundation.same.net.utils.b.a(this.mParam, "mcd", optString4);
                    }
                    cVar.setUnitId(this.mMainOfferCampaignEx.getCampaignUnitId());
                } catch (Exception e10) {
                    p0.b(TAG, e10.getMessage());
                    str = com.mbridge.msdk.foundation.same.net.utils.d.h().Z;
                }
            }
            str = str2;
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            if (this.mIsRetry) {
                eVar.a("retry", "1");
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_initiate", this.mMainOfferCampaignEx, eVar);
            bVar.getLoadOrSetting(1, str, this.mParam, cVar, true, "more_offer", 30000L);
            doAdmfContorl();
        }
    }

    private void initView() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        this.viewMofferLayout = (MBridgeRelativeLayout) LayoutInflater.from(this.mContext).inflate(h0.a(context, "mbridge_reward_more_offer_view", TtmlNode.TAG_LAYOUT), (ViewGroup) null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        List<Integer> list = this.cacheImpressionReportList;
        if (list != null) {
            list.clear();
            this.cacheImpressionReportList = null;
        }
        List<Integer> list2 = this.cacheOnlyImpressionReportList;
        if (list2 != null) {
            list2.clear();
            this.cacheOnlyImpressionReportList = null;
        }
    }

    private void setCallbackForLogicVisibleView(View view, int i10) {
        boolean z10;
        if (view == null) {
            return;
        }
        try {
            Rect rect = new Rect();
            boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
            if (rect.width() > view.getMeasuredWidth() / 5) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (globalVisibleRect && z10) {
                List<Integer> list = this.mImpressionId;
                if (list != null && this.onItemExposeListener != null) {
                    if (list.contains(Integer.valueOf(i10))) {
                        return;
                    }
                    this.mImpressionId.add(Integer.valueOf(i10));
                    this.onItemExposeListener.onItemViewVisible(true, i10);
                }
            } else if (this.admf != 0) {
                doControllableImpOnShow(i10);
            }
        } catch (Exception e10) {
            p0.b(TAG, e10.getMessage());
        }
    }

    private void setMoreOfferLayoutCallBack() {
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout == null) {
            return;
        }
        mBridgeRelativeLayout.setMoreOfferCacheReportCallBack(new d());
        this.viewMofferLayout.setMoreOfferShowFailedCallBack(new e());
    }

    private void setOfferData(List<CampaignEx> list, int i10, RoundImageView roundImageView, TextView textView) {
        CampaignEx campaignEx;
        if (roundImageView == null || textView == null || list == null || this.mContext == null || this.mMainOfferCampaignEx == null || list.size() <= 0 || (campaignEx = list.get(i10)) == null) {
            return;
        }
        roundImageView.setImageDrawable(null);
        com.mbridge.msdk.foundation.same.image.b.a(this.mContext).a(campaignEx.getIconUrl(), new h(roundImageView));
        if (!TextUtils.isEmpty(campaignEx.getAppName())) {
            String a10 = b1.a(this.mMainOfferCampaignEx.getendcard_url(), "mof_textmod");
            if (!TextUtils.isEmpty(a10) && a10.equals("1")) {
                textView.setText(campaignEx.getAppName());
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public void buildMofferAd(CampaignEx campaignEx) {
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        this.mContext = d10;
        if (d10 == null) {
            return;
        }
        this.mMainOfferCampaignEx = campaignEx;
        initView();
        initData();
    }

    public void checkViewVisiableState() {
        if (this.mLinearLayout == null) {
            return;
        }
        for (int i10 = 0; i10 < this.mLinearLayout.getChildCount(); i10++) {
            try {
                setCallbackForLogicVisibleView(this.mLinearLayout.getChildAt(i10), i10);
            } catch (Exception e10) {
                p0.b(TAG, e10.getMessage());
                return;
            }
        }
    }

    public long getECParentTemplateCode() {
        try {
            String str = "";
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = this.mParam;
            if (eVar != null) {
                str = eVar.a().get("parent_template_id");
            }
            if (TextUtils.isEmpty(str)) {
                return 404L;
            }
            return Long.parseLong(str);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return 404L;
        }
    }

    public CampaignEx getmMainOfferCampaignEx() {
        return this.mMainOfferCampaignEx;
    }

    public void mofDestroy() {
        if (this.mMoreOfferLayoutListener != null) {
            this.mMoreOfferLayoutListener = null;
        }
        if (this.onItemExposeListener != null) {
            this.onItemExposeListener = null;
        }
        if (this.mMoreOfferShowCallBack != null) {
            this.mMoreOfferShowCallBack = null;
        }
        if (this.mNotifyListener != null) {
            this.mNotifyListener = null;
        }
    }

    public void setFromType(int i10) {
        this.mFromType = i10;
    }

    public void setIsRetry(boolean z10) {
        this.mIsRetry = z10;
    }

    public void setMoreOfferListener(com.mbridge.msdk.video.dynview.listener.g gVar, com.mbridge.msdk.video.module.listener.a aVar) {
        this.mMoreOfferLayoutListener = gVar;
        this.mNotifyListener = aVar;
    }

    public void showView() {
        CampaignUnit campaignUnit;
        com.mbridge.msdk.video.dynview.listener.g gVar = this.mMoreOfferLayoutListener;
        if (gVar == null) {
            return;
        }
        MBridgeRelativeLayout mBridgeRelativeLayout = this.viewMofferLayout;
        if (mBridgeRelativeLayout != null && (campaignUnit = this.mCampaignUnit) != null) {
            gVar.a(mBridgeRelativeLayout, campaignUnit);
            if (!this.isOnlyImpShow) {
                com.mbridge.msdk.video.dynview.request.a.a(this.mCampaignUnit, 0, 1, "117361");
            }
            if (!this.mHasReportMofScenes) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("scene", this.mFromType + "");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_scenes", this.mMainOfferCampaignEx, eVar);
                return;
            }
            return;
        }
        gVar.a(-1, "more Offer create fail");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c extends com.mbridge.msdk.video.dynview.request.abs.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.request.abs.a
        public void a(List<com.mbridge.msdk.tracker.network.g> list, CampaignUnit campaignUnit) {
            if (MOfferModel.this.mParam != null && campaignUnit != null) {
                try {
                    MOfferModel mOfferModel = MOfferModel.this;
                    mOfferModel.mUnitId = mOfferModel.mParam.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
                    MOfferModel mOfferModel2 = MOfferModel.this;
                    mOfferModel2.mRid = mOfferModel2.mParam.a().get("r_id");
                    if (campaignUnit.getAds() == null || campaignUnit.getAds().size() < 5) {
                        if (!MOfferModel.this.hasReportMoreOfferLoad) {
                            com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer load failed errorCode: -999 errorMsg: The campaign quantity less than 5.", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                            MOfferModel.this.hasReportMoreOfferLoad = true;
                        }
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("result", "2");
                        eVar.a(Module.ResponseKey.Code, MOfferModel.MOF_LOAD_RESULT_CODE_OFFER_LESS_THAN_5);
                        if (MOfferModel.this.mIsRetry) {
                            eVar.a("retry", "1");
                        }
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar);
                        com.mbridge.msdk.video.dynview.moffer.a.a().b();
                        return;
                    }
                    MOfferModel.this.mCampaignUnit = campaignUnit;
                    if (MOfferModel.this.admf > 0 && MOfferModel.this.admftm == 1) {
                        MOfferModel.this.doControllableImpOnRequest();
                    }
                    if (!MOfferModel.this.hasReportMoreOfferLoad) {
                        com.mbridge.msdk.video.dynview.request.a.a(MOfferModel.this.mMainOfferCampaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), "more offer load success", MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                        MOfferModel.this.hasReportMoreOfferLoad = true;
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar2.a("result", "1");
                    if (MOfferModel.this.mIsRetry) {
                        eVar2.a("retry", "1");
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar2);
                    MOfferModel.this.createMoreOfferView();
                    return;
                } catch (Exception e10) {
                    p0.b(MOfferModel.TAG, e10.getMessage());
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                    return;
                }
            }
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        }

        @Override // com.mbridge.msdk.video.dynview.request.abs.a
        public void a(int i10, String str) {
            if (MOfferModel.this.mParam == null) {
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
                return;
            }
            try {
                MOfferModel mOfferModel = MOfferModel.this;
                mOfferModel.mUnitId = mOfferModel.mParam.a().get(MBridgeConstans.PROPERTIES_UNIT_ID);
                MOfferModel mOfferModel2 = MOfferModel.this;
                mOfferModel2.mRid = mOfferModel2.mParam.a().get("r_id");
                if (!MOfferModel.this.hasReportMoreOfferLoad) {
                    CampaignEx campaignEx = MOfferModel.this.mMainOfferCampaignEx;
                    Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                    com.mbridge.msdk.video.dynview.request.a.a(campaignEx, d10, "more offer load failed errorCode:" + i10 + "errorMsg:" + str, MOfferModel.this.mUnitId, MOfferModel.this.mRid);
                    MOfferModel.this.hasReportMoreOfferLoad = true;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", "2");
                eVar.a(Module.ResponseKey.Code, i10 + "");
                if (MOfferModel.this.mIsRetry) {
                    eVar.a("retry", "1");
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mof_req_result", MOfferModel.this.mMainOfferCampaignEx, eVar);
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
            } catch (Exception e10) {
                p0.b(MOfferModel.TAG, e10.getMessage());
                com.mbridge.msdk.video.dynview.moffer.a.a().b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class h implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoundImageView f30730a;

        h(RoundImageView roundImageView) {
            this.f30730a = roundImageView;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (this.f30730a != null && bitmap != null && !bitmap.isRecycled()) {
                    this.f30730a.setBorderRadius(13);
                    this.f30730a.setImageBitmap(bitmap);
                }
                MOfferModel.access$2208(MOfferModel.this);
                if (!MOfferModel.this.isShowMoreOffer && MOfferModel.this.bitmapSuccessCount >= 5 && MOfferModel.this.mMoreOfferShowCallBack != null) {
                    MOfferModel.this.isShowMoreOffer = true;
                    MOfferModel.this.mMoreOfferShowCallBack.a(null);
                }
            } catch (Exception e10) {
                p0.b(MOfferModel.TAG, e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
