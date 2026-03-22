package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.ss.texturerender.TextureRenderKeys;
import java.io.File;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MBridgeBTVideoView extends BTBaseView {
    private static boolean P = false;
    private static long Q;
    private AdSession A;
    private AdEvents B;
    private MediaEvents C;
    private d D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private String J;
    private boolean K;
    private boolean L;
    private boolean M;
    private RelativeLayout N;
    private ProgressBar O;

    /* renamed from: p  reason: collision with root package name */
    private PlayerView f30604p;

    /* renamed from: q  reason: collision with root package name */
    private SoundImageView f30605q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f30606r;

    /* renamed from: s  reason: collision with root package name */
    private View f30607s;

    /* renamed from: t  reason: collision with root package name */
    private FeedBackButton f30608t;

    /* renamed from: u  reason: collision with root package name */
    private ImageView f30609u;

    /* renamed from: v  reason: collision with root package name */
    private WebView f30610v;

    /* renamed from: w  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.download.a f30611w;

    /* renamed from: x  reason: collision with root package name */
    private int f30612x;

    /* renamed from: y  reason: collision with root package name */
    private int f30613y;

    /* renamed from: z  reason: collision with root package name */
    private int f30614z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean isSilent = MBridgeBTVideoView.this.f30604p.isSilent();
            if (MBridgeBTVideoView.this.f30610v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f30514d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("mute", MBridgeBTVideoView.this.E);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f30610v, "onPlayerMuteBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    p0.a("OperateViews", "onPlayerMuteBtnClicked isMute = " + isSilent + " mute = " + MBridgeBTVideoView.this.E);
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f30610v, e10.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.f30610v != null) {
                BTBaseView.a(MBridgeBTVideoView.this.f30610v, "onPlayerCloseBtnClicked", MBridgeBTVideoView.this.f30514d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.C != null) {
                try {
                    MBridgeBTVideoView.this.C.adUserInteraction(InteractionType.CLICK);
                    p0.a("omsdk", "btv adUserInteraction click");
                } catch (Exception e10) {
                    p0.b("omsdk", e10.getMessage());
                }
            }
            if (MBridgeBTVideoView.this.f30610v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    jSONObject.put("id", MBridgeBTVideoView.this.f30514d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(TextureRenderKeys.KEY_IS_X, String.valueOf(view.getX()));
                    jSONObject2.put(TextureRenderKeys.KEY_IS_Y, String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.f30610v, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.f30610v, "onClicked", MBridgeBTVideoView.this.f30514d);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class d extends DefaultVideoPlayerStatusListener {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeBTVideoView f30618a;

        /* renamed from: b  reason: collision with root package name */
        private WebView f30619b;

        /* renamed from: c  reason: collision with root package name */
        private MediaEvents f30620c;

        /* renamed from: d  reason: collision with root package name */
        private String f30621d;

        /* renamed from: e  reason: collision with root package name */
        private String f30622e;

        /* renamed from: f  reason: collision with root package name */
        private int f30623f;

        /* renamed from: g  reason: collision with root package name */
        private int f30624g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f30625h;

        /* renamed from: l  reason: collision with root package name */
        private int f30629l;

        /* renamed from: m  reason: collision with root package name */
        private int f30630m;

        /* renamed from: i  reason: collision with root package name */
        private boolean f30626i = false;

        /* renamed from: j  reason: collision with root package name */
        private boolean f30627j = false;

        /* renamed from: k  reason: collision with root package name */
        private boolean f30628k = false;

        /* renamed from: n  reason: collision with root package name */
        private boolean f30631n = false;

        /* renamed from: o  reason: collision with root package name */
        private boolean f30632o = false;

        public d(MBridgeBTVideoView mBridgeBTVideoView, WebView webView, MediaEvents mediaEvents) {
            this.f30618a = mBridgeBTVideoView;
            this.f30619b = webView;
            this.f30620c = mediaEvents;
            if (mBridgeBTVideoView != null) {
                this.f30621d = mBridgeBTVideoView.f30514d;
                this.f30622e = mBridgeBTVideoView.f30513c;
            }
        }

        public void b(int i10, int i11) {
            this.f30629l = i10;
            this.f30630m = i11;
            a();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                if (this.f30620c != null && this.f30632o) {
                    p0.b("omsdk", "bt onBufferingEnd");
                    this.f30632o = false;
                    this.f30620c.bufferFinish();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                p0.b("omsdk", "bt onBufferingStart1");
                super.onBufferingStart(str);
                if (this.f30620c != null) {
                    p0.b("omsdk", "bt onBufferingStart");
                    this.f30620c.bufferStart();
                    this.f30632o = true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                if (!str.equals(PlayerErrorConstant.PREPARE_TIMEOUT) && !str.equals(PlayerErrorConstant.PLAYERING_TIMEOUT)) {
                    return;
                }
                if (this.f30619b != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                        jSONObject.put("id", this.f30621d);
                        jSONObject.put("data", new JSONObject());
                        f.a().a(this.f30619b, "onPlayerTimeout", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e10) {
                        com.mbridge.msdk.video.bt.component.d.c().a(this.f30619b, e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            super.onPlayCompleted();
            MBridgeBTVideoView mBridgeBTVideoView = this.f30618a;
            CampaignEx campaignEx = mBridgeBTVideoView.f30512b;
            if (campaignEx != null) {
                if (campaignEx.getVideoCompleteTime() > 0) {
                    this.f30618a.f30606r.setText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                } else {
                    this.f30618a.f30606r.setText(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                }
            } else {
                mBridgeBTVideoView.f30606r.setText(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            this.f30618a.f30604p.setClickable(false);
            WebView webView = this.f30619b;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerFinish", this.f30621d);
            }
            MediaEvents mediaEvents = this.f30620c;
            if (mediaEvents != null) {
                mediaEvents.complete();
                p0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f30623f = this.f30624g;
            boolean unused = MBridgeBTVideoView.P = true;
            this.f30618a.stop();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            super.onPlayError(str);
            if (this.f30619b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30510o);
                    jSONObject.put("id", this.f30621d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error", str);
                    jSONObject2.put("id", this.f30621d);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f30619b, "onPlayerFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f30619b, e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i10, int i11) {
            int i12;
            int i13;
            StringBuilder sb2;
            String str;
            String sb3;
            super.onPlayProgress(i10, i11);
            if (MBridgeBTVideoView.Q == 0) {
                long unused = MBridgeBTVideoView.Q = System.currentTimeMillis();
            }
            MBridgeBTVideoView mBridgeBTVideoView = this.f30618a;
            if (mBridgeBTVideoView.f30518h) {
                CampaignEx campaignEx = mBridgeBTVideoView.f30512b;
                if (campaignEx != null) {
                    i12 = campaignEx.getVideoCompleteTime();
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f30618a.f30512b.getCampaignUnitId() + "_1", i10);
                } else {
                    i12 = 0;
                }
                if (i12 > i11 || i12 <= 0) {
                    i12 = i11;
                }
                if (i12 <= 0) {
                    i13 = i11 - i10;
                } else {
                    i13 = i12 - i10;
                }
                if (i13 <= 0) {
                    if (i12 <= 0) {
                        sb3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    } else {
                        sb3 = (String) this.f30618a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                    }
                } else {
                    if (i12 <= 0) {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = "";
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(i13);
                        str = (String) this.f30618a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                    }
                    sb2.append(str);
                    sb3 = sb2.toString();
                }
                CampaignEx campaignEx2 = this.f30618a.f30512b;
                if (campaignEx2 != null && campaignEx2.getUseSkipTime() == 1) {
                    int min = Math.min(this.f30618a.f30512b.getVst(), i11);
                    if (min < i12 && min >= 0) {
                        int i14 = min - i10;
                        if (i14 > 0) {
                            sb3 = i14 + ((String) this.f30618a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                        } else if (this.f30618a.f30512b.getAdType() == 287 && i14 == 0) {
                            this.f30618a.f30606r.setVisibility(4);
                        }
                    } else {
                        int i15 = i12 - i10;
                        if (this.f30618a.f30512b.getAdType() == 287) {
                            if (i15 > 0) {
                                sb3 = i15 + ((String) this.f30618a.getContext().getResources().getText(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                            } else if (i15 == 0) {
                                this.f30618a.f30606r.setVisibility(4);
                            }
                        }
                    }
                }
                this.f30618a.f30606r.setText(sb3);
            }
            this.f30624g = i11;
            this.f30623f = i10;
            this.f30618a.O.setMax(this.f30624g);
            this.f30618a.O.setProgress(this.f30623f);
            if (this.f30619b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(Module.ResponseKey.Code, BTBaseView.f30509n);
                    jSONObject.put("id", this.f30621d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", this.f30621d);
                    jSONObject2.put("progress", MBridgeBTVideoView.b(i10, i11));
                    jSONObject2.put(CrashHianalyticsData.TIME, String.valueOf(i10));
                    jSONObject2.put("duration", String.valueOf(i11));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.f30619b, "onPlayerProgressChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.f30619b, e10.getMessage());
                }
            }
            MediaEvents mediaEvents = this.f30620c;
            if (mediaEvents != null) {
                int i16 = (i10 * 100) / i11;
                int i17 = ((i10 + 1) * 100) / i11;
                if (i16 <= 25 && 25 < i17 && !this.f30626i) {
                    this.f30626i = true;
                    mediaEvents.firstQuartile();
                    p0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i16 <= 50 && 50 < i17 && !this.f30627j) {
                    this.f30627j = true;
                    mediaEvents.midpoint();
                    p0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i16 <= 75 && 75 < i17 && !this.f30628k) {
                    this.f30628k = true;
                    mediaEvents.thirdQuartile();
                    p0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            a(i10, i11);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayStarted(int i10) {
            float f10;
            super.onPlayStarted(i10);
            if (!this.f30625h) {
                this.f30618a.O.setMax(i10);
                WebView webView = this.f30619b;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f30621d);
                }
                this.f30625h = true;
                if (this.f30620c != null) {
                    try {
                        MBridgeBTVideoView mBridgeBTVideoView = this.f30618a;
                        if (mBridgeBTVideoView != null && mBridgeBTVideoView.f30604p != null) {
                            f10 = this.f30618a.f30604p.getVolume();
                        } else {
                            f10 = 0.0f;
                        }
                        this.f30620c.start(i10, f10);
                        p0.a("omsdk", "play2: videoEvents.start()");
                    } catch (Exception e10) {
                        p0.b("omsdk", e10.getMessage());
                    }
                }
            }
            boolean unused = MBridgeBTVideoView.P = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00a2 A[Catch: Exception -> 0x006a, TryCatch #0 {Exception -> 0x006a, blocks: (B:17:0x002a, B:19:0x0032, B:22:0x003f, B:26:0x0096, B:28:0x00a2, B:30:0x00ac, B:25:0x006c), top: B:36:0x002a }] */
        /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a() {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                com.mbridge.msdk.foundation.tools.r0 r1 = com.mbridge.msdk.foundation.tools.r0.a()
                java.lang.String r2 = "h_c_r_w_p_c"
                r3 = 0
                boolean r1 = r1.a(r2, r3)
                if (r1 != 0) goto L10
                return
            L10:
                int r1 = r4.f30629l
                r2 = 100
                if (r1 == r2) goto Lbd
                int r2 = r4.f30630m
                if (r2 != 0) goto Lbd
                boolean r2 = r4.f30631n
                if (r2 != 0) goto Lbd
                if (r1 == 0) goto Lbd
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a
                if (r1 == 0) goto Lbd
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b
                if (r1 != 0) goto L2a
                goto Lbd
            L2a:
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L6a
                r2 = 94
                if (r1 == r2) goto L6c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L6a
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L6a
                r2 = 287(0x11f, float:4.02E-43)
                if (r1 != r2) goto L3f
                goto L6c
            L3f:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
                r1.<init>()     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getBidToken()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L6a
                goto L96
            L6a:
                r1 = move-exception
                goto Lb2
            L6c:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
                r1.<init>()     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getRequestId()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f30618a     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.f30512b     // Catch: java.lang.Exception -> L6a
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L6a
                r1.append(r2)     // Catch: java.lang.Exception -> L6a
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L6a
            L96:
                com.mbridge.msdk.videocommon.download.b r2 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L6a
                java.lang.String r3 = r4.f30622e     // Catch: java.lang.Exception -> L6a
                com.mbridge.msdk.videocommon.download.a r1 = r2.a(r3, r1)     // Catch: java.lang.Exception -> L6a
                if (r1 == 0) goto Lbd
                r1.v()     // Catch: java.lang.Exception -> L6a
                r1 = 1
                r4.f30631n = r1     // Catch: java.lang.Exception -> L6a
                boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L6a
                if (r1 == 0) goto Lbd
                java.lang.String r1 = "CDRate is : 0  and start download when player create!"
                com.mbridge.msdk.foundation.tools.p0.b(r0, r1)     // Catch: java.lang.Exception -> L6a
                goto Lbd
            Lb2:
                boolean r2 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r2 == 0) goto Lbd
                java.lang.String r1 = r1.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r1)
            Lbd:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.d.a():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0093 A[Catch: Exception -> 0x005b, TRY_LEAVE, TryCatch #0 {Exception -> 0x005b, blocks: (B:3:0x0002, B:5:0x0008, B:9:0x000f, B:11:0x0013, B:13:0x0017, B:15:0x0023, B:18:0x0030, B:22:0x0087, B:24:0x0093, B:21:0x005d), top: B:28:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(int r5, int r6) {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                int r1 = r4.f30629l     // Catch: java.lang.Exception -> L5b
                r2 = 100
                if (r1 == r2) goto Lba
                boolean r3 = r4.f30631n     // Catch: java.lang.Exception -> L5b
                if (r3 != 0) goto Lba
                if (r1 != 0) goto Lf
                return
            Lf:
                int r1 = r4.f30630m     // Catch: java.lang.Exception -> L5b
                if (r1 < 0) goto Lba
                int r6 = r6 * r1
                int r6 = r6 / r2
                if (r5 < r6) goto Lba
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r5 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r5 = r5.f30512b     // Catch: java.lang.Exception -> L5b
                int r5 = r5.getAdType()     // Catch: java.lang.Exception -> L5b
                r1 = 94
                if (r5 == r1) goto L5d
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r5 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r5 = r5.f30512b     // Catch: java.lang.Exception -> L5b
                int r5 = r5.getAdType()     // Catch: java.lang.Exception -> L5b
                r1 = 287(0x11f, float:4.02E-43)
                if (r5 != r1) goto L30
                goto L5d
            L30:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5b
                r5.<init>()     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getId()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getBidToken()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5b
                goto L87
            L5b:
                r5 = move-exception
                goto Lb3
            L5d:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5b
                r5.<init>()     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getRequestId()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getId()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f30618a     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.f30512b     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = r1.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5b
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5b
            L87:
                com.mbridge.msdk.videocommon.download.b r1 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L5b
                java.lang.String r2 = r4.f30622e     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.videocommon.download.a r5 = r1.a(r2, r5)     // Catch: java.lang.Exception -> L5b
                if (r5 == 0) goto Lba
                r5.v()     // Catch: java.lang.Exception -> L5b
                r5 = 1
                r4.f30631n = r5     // Catch: java.lang.Exception -> L5b
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5b
                r5.<init>()     // Catch: java.lang.Exception -> L5b
                java.lang.String r1 = "CDRate is : "
                r5.append(r1)     // Catch: java.lang.Exception -> L5b
                r5.append(r6)     // Catch: java.lang.Exception -> L5b
                java.lang.String r6 = " and start download !"
                r5.append(r6)     // Catch: java.lang.Exception -> L5b
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5b
                com.mbridge.msdk.foundation.tools.p0.b(r0, r5)     // Catch: java.lang.Exception -> L5b
                goto Lba
            Lb3:
                java.lang.String r5 = r5.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r5)
            Lba:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.d.a(int, int):void");
        }
    }

    public MBridgeBTVideoView(Context context) {
        super(context);
        this.f30612x = 0;
        this.f30613y = 0;
        this.f30614z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }

    private int getBufferTimeout() {
        int i10 = 5;
        try {
            com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c10 == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            if (c10 != null) {
                i10 = (int) c10.i();
            }
            p0.c(BTBaseView.TAG, "MBridgeBaseView buffetTimeout:" + i10);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return i10;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f30513c, false).g();
    }

    private String getPlayURL() {
        String str = "";
        try {
            str = this.f30512b.getVideoUrlEncode();
            com.mbridge.msdk.videocommon.download.a aVar = this.f30611w;
            if (aVar != null) {
                String k10 = aVar.k();
                if (!z0.a(k10)) {
                    if (new File(k10).exists()) {
                        return k10;
                    }
                    return str;
                }
                return str;
            }
            return str;
        } catch (Throwable th2) {
            p0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return str;
        }
    }

    public AdEvents getAdEvents() {
        return this.B;
    }

    public AdSession getAdSession() {
        return this.A;
    }

    public int getMute() {
        return this.E;
    }

    public MediaEvents getVideoEvents() {
        return this.C;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_videoview_item");
        if (h0.a(findLayout)) {
            this.f30516f.inflate(findLayout, this);
            boolean e10 = e();
            this.f30518h = e10;
            if (!e10) {
                p0.b(BTBaseView.TAG, "MBridgeVideoView init fail");
            }
            b();
        }
        P = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        View rootView;
        int i10;
        int i11;
        super.onAttachedToWindow();
        if (!this.M) {
            this.H = com.mbridge.msdk.video.bt.component.d.c().g(this.f30513c);
        }
        View view = this.f30607s;
        int i12 = 0;
        if (view != null) {
            if (this.f30613y == 0) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            view.setVisibility(i11);
        }
        SoundImageView soundImageView = this.f30605q;
        if (soundImageView != null) {
            if (this.f30614z == 0) {
                i10 = 8;
            } else {
                i10 = 0;
            }
            soundImageView.setVisibility(i10);
        }
        CampaignEx campaignEx = this.f30512b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f30513c);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f30513c + "_1", this.f30512b);
        }
        TextView textView = this.f30606r;
        if (textView != null) {
            if (this.f30612x == 0) {
                i12 = 8;
            }
            textView.setVisibility(i12);
            if (this.f30606r.getVisibility() == 0 && com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f30513c + "_1", this.f30608t);
            }
        }
        if (this.A != null && (rootView = getRootView()) != null) {
            this.A.removeFriendlyObstruction(rootView);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        try {
            if (this.f30604p != null) {
                AdSession adSession = this.A;
                if (adSession != null) {
                    adSession.finish();
                }
                this.f30604p.setOnClickListener(null);
                this.f30604p.release();
                this.f30604p = null;
                if (!TextUtils.isEmpty(this.J)) {
                    e eVar = new e();
                    long j10 = Q;
                    if (j10 != 0) {
                        j10 = System.currentTimeMillis() - Q;
                    }
                    eVar.a("duration", Long.valueOf(j10));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.f30512b, eVar);
                }
            }
            SoundImageView soundImageView = this.f30605q;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(null);
            }
            View view = this.f30607s;
            if (view != null) {
                view.setOnClickListener(null);
            }
            if (this.f30610v != null) {
                this.f30610v = null;
            }
            if (this.A != null) {
                this.A = null;
            }
            if (this.C != null) {
                this.C = null;
            }
            setOnClickListener(null);
        } catch (Throwable th2) {
            p0.a(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void onPause() {
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            boolean isPlayIng = playerView.isPlayIng();
            this.L = isPlayIng;
            this.f30604p.setIsBTVideoPlaying(isPlayIng);
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                this.f30604p.setVideoEvents(mediaEvents);
            }
            this.f30604p.onPause();
        }
    }

    public void onResume() {
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            playerView.setDesk(true);
            this.f30604p.setIsCovered(false);
            if (this.L) {
                this.f30604p.start(true);
            }
            this.f30604p.resumeOMSDK();
        }
    }

    public void onStop() {
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            playerView.setIsCovered(true);
        }
    }

    public void pause() {
        try {
            PlayerView playerView = this.f30604p;
            if (playerView != null) {
                playerView.pause();
                WebView webView = this.f30610v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPause", this.f30514d);
                }
            }
        } catch (Exception e10) {
            p0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
    }

    public void play() {
        d dVar;
        try {
            if (!this.M) {
                String playURL = getPlayURL();
                this.J = playURL;
                this.f30604p.initVFPData(playURL, this.f30512b.getVideoUrlEncode(), this.D);
                if (this.H == 1) {
                    playMute();
                } else {
                    playUnMute();
                }
                if (this.B != null) {
                    p0.b("omsdk", "bt impressionOccurred");
                    this.B.impressionOccurred();
                }
                if (!this.f30604p.playVideo() && (dVar = this.D) != null) {
                    dVar.onPlayError("play video failed");
                }
                this.M = true;
                return;
            }
            if (this.G) {
                this.f30604p.playVideo(0);
                this.G = false;
            } else {
                this.f30604p.start(false);
            }
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                mediaEvents.resume();
                p0.a("omsdk", "btv play2:  videoEvents.resume()");
            }
            WebView webView = this.f30610v;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerPlay", this.f30514d);
            }
        } catch (Exception e10) {
            p0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
    }

    public boolean playMute() {
        try {
            PlayerView playerView = this.f30604p;
            if (playerView != null && this.f30610v != null) {
                playerView.closeSound();
                this.f30605q.setSoundStatus(false);
                this.E = 1;
                try {
                    MediaEvents mediaEvents = this.C;
                    if (mediaEvents != null) {
                        mediaEvents.volumeChange(0.0f);
                    }
                } catch (Exception e10) {
                    p0.a("OMSDK", e10.getMessage());
                }
                BTBaseView.a(this.f30610v, "onPlayerMute", this.f30514d);
                return true;
            }
        } catch (Exception e11) {
            p0.b(BTBaseView.TAG, e11.getMessage());
        }
        return false;
    }

    public boolean playUnMute() {
        try {
            PlayerView playerView = this.f30604p;
            if (playerView != null && this.f30610v != null) {
                playerView.openSound();
                this.f30605q.setSoundStatus(true);
                this.E = 2;
                try {
                    MediaEvents mediaEvents = this.C;
                    if (mediaEvents != null) {
                        mediaEvents.volumeChange(1.0f);
                    }
                } catch (Exception e10) {
                    p0.a("OMSDK", e10.getMessage());
                }
                BTBaseView.a(this.f30610v, "onUnmute", this.f30514d);
                return true;
            }
            return false;
        } catch (Exception e11) {
            p0.b(BTBaseView.TAG, e11.getMessage());
            return false;
        }
    }

    public void preLoadData() {
        d();
        this.F = getBufferTimeout();
        String playURL = getPlayURL();
        this.J = playURL;
        if (this.f30518h && !TextUtils.isEmpty(playURL) && this.f30512b != null) {
            AdSession adSession = this.A;
            if (adSession != null) {
                adSession.registerAdView(this.f30604p);
                AdSession adSession2 = this.A;
                SoundImageView soundImageView = this.f30605q;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                adSession2.addFriendlyObstruction(soundImageView, friendlyObstructionPurpose, null);
                this.A.addFriendlyObstruction(this.f30606r, friendlyObstructionPurpose, null);
                this.A.addFriendlyObstruction(this.f30607s, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            d dVar = new d(this, this.f30610v, this.C);
            this.D = dVar;
            dVar.b(a(this.f30512b), getCDRate());
            this.f30604p.setDesk(false);
            this.f30604p.initBufferIngParam(this.F);
            soundOperate(this.E, -1, null);
        }
        P = false;
    }

    public void resume() {
        try {
            PlayerView playerView = this.f30604p;
            if (playerView != null) {
                if (this.G) {
                    playerView.playVideo(0);
                    this.G = false;
                } else {
                    playerView.onResume();
                }
                MediaEvents mediaEvents = this.C;
                if (mediaEvents != null) {
                    mediaEvents.resume();
                    p0.a("omsdk", "btv play3:  videoEvents.resume()");
                }
                WebView webView = this.f30610v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerResume", this.f30514d);
                }
            }
        } catch (Exception e10) {
            p0.b(BTBaseView.TAG, e10.getMessage());
        }
    }

    public void setAdEvents(AdEvents adEvents) {
        this.B = adEvents;
    }

    public void setAdSession(AdSession adSession) {
        this.A = adSession;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        if (campaignEx != null && campaignEx.getVideoCompleteTime() > 0) {
            this.f30606r.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
            int a10 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            layoutParams.setMargins(a10, 0, 0, 0);
            this.f30606r.setPadding(a10, 0, a10, 0);
            this.f30606r.setLayoutParams(layoutParams);
            return;
        }
        this.f30606r.setBackgroundResource(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
        this.f30606r.setWidth(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
    }

    public void setCloseViewVisable(int i10) {
        int i11;
        View view = this.f30607s;
        if (i10 == 0) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        view.setVisibility(i11);
    }

    public void setCountDownTextViewVisable(int i10) {
        int i11;
        TextView textView = this.f30606r;
        if (i10 == 0) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        textView.setVisibility(i11);
    }

    public void setCreateWebView(WebView webView) {
        this.f30610v = webView;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        if (i10 <= 0) {
            i10 = this.N.getPaddingLeft();
        }
        if (i11 <= 0) {
            i11 = this.N.getPaddingRight();
        }
        if (i12 <= 0) {
            i12 = this.N.getPaddingTop();
        }
        if (i13 <= 0) {
            i13 = this.N.getPaddingBottom();
        }
        p0.b(BTBaseView.TAG, "NOTCH BTVideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13)));
        this.N.setPadding(i10, i12, i11, i13);
    }

    public void setOrientation(int i10) {
        this.I = i10;
    }

    public void setPlaybackParams(float f10) {
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            playerView.setPlaybackParams(f10);
        }
    }

    public void setProgressBarState(int i10) {
        int i11;
        ProgressBar progressBar = this.O;
        if (progressBar != null) {
            if (i10 == 0) {
                i11 = 8;
            } else {
                i11 = 0;
            }
            progressBar.setVisibility(i11);
            CampaignEx campaignEx = this.f30512b;
            if (campaignEx != null && campaignEx.getProgressBarShow() == 1) {
                this.O.setVisibility(0);
            }
        }
    }

    public void setShowClose(int i10) {
        this.f30613y = i10;
    }

    public void setShowMute(int i10) {
        this.f30614z = i10;
    }

    public void setShowTime(int i10) {
        this.f30612x = i10;
    }

    public void setSoundImageViewVisble(int i10) {
        int i11;
        SoundImageView soundImageView = this.f30605q;
        if (i10 == 0) {
            i11 = 4;
        } else {
            i11 = 0;
        }
        soundImageView.setVisibility(i11);
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.C = mediaEvents;
        d dVar = this.D;
        if (dVar != null) {
            dVar.f30620c = mediaEvents;
        }
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            playerView.setVideoEvents(mediaEvents);
        }
    }

    public void setVolume(float f10, float f11) {
        PlayerView playerView = this.f30604p;
        if (playerView != null) {
            playerView.setVolume(f10, f11);
        }
    }

    public void soundOperate(int i10, int i11, String str) {
        if (this.f30518h) {
            this.E = i10;
            if (i10 == 1) {
                this.f30605q.setSoundStatus(false);
                this.f30604p.closeSound();
            } else if (i10 == 2) {
                this.f30605q.setSoundStatus(true);
                this.f30604p.openSound();
            }
            if (i11 == 1) {
                this.f30605q.setVisibility(8);
            } else if (i11 == 2) {
                this.f30605q.setVisibility(0);
            }
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                try {
                    mediaEvents.volumeChange(this.f30604p.getVolume());
                } catch (Exception e10) {
                    p0.b("omsdk", e10.getMessage());
                }
            }
        }
    }

    public void stop() {
        try {
            PlayerView playerView = this.f30604p;
            if (playerView != null) {
                playerView.pause();
                this.f30604p.stop();
                this.G = true;
                WebView webView = this.f30610v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerStop", this.f30514d);
                }
            }
        } catch (Exception e10) {
            p0.b(BTBaseView.TAG, e10.getMessage(), e10);
        }
    }

    private void d() {
        String str;
        if (this.f30512b.getAdType() != 94 && this.f30512b.getAdType() != 287) {
            str = this.f30512b.getId() + this.f30512b.getVideoUrlEncode() + this.f30512b.getBidToken();
        } else {
            str = this.f30512b.getRequestId() + this.f30512b.getId() + this.f30512b.getVideoUrlEncode();
        }
        com.mbridge.msdk.videocommon.download.a a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f30513c, str);
        if (a10 != null) {
            this.f30611w = a10;
        }
    }

    private boolean e() {
        try {
            this.f30604p = (PlayerView) findViewById(findID("mbridge_vfpv"));
            this.f30605q = (SoundImageView) findViewById(findID("mbridge_sound_switch"));
            this.f30606r = (TextView) findViewById(findID("mbridge_tv_count"));
            this.f30607s = findViewById(findID("mbridge_rl_playing_close"));
            this.N = (RelativeLayout) findViewById(findID("mbridge_top_control"));
            this.O = (ProgressBar) findViewById(findID("mbridge_video_progress_bar"));
            this.f30604p.setIsBTVideo(true);
            this.f30608t = (FeedBackButton) findViewById(findID("mbridge_native_endcard_feed_btn"));
            this.f30609u = (ImageView) findViewById(findID("mbridge_iv_link"));
            return isNotNULL(this.f30604p, this.f30605q, this.f30606r, this.f30607s);
        } catch (Throwable th2) {
            p0.b(BTBaseView.TAG, th2.getMessage(), th2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void b() {
        super.b();
        if (this.f30518h) {
            this.f30605q.setOnClickListener(new a());
            this.f30607s.setOnClickListener(new b());
            setOnClickListener(new c());
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f30513c, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f30513c, false).w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i10, int i11) {
        if (i11 != 0) {
            double d10 = i10 / i11;
            try {
                return u0.a(Double.valueOf(d10)) + "";
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return i11 + "";
    }

    public MBridgeBTVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30612x = 0;
        this.f30613y = 0;
        this.f30614z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }
}
