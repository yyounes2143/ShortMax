package com.mbridge.msdk.video.module.listener.impl;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: VideoViewDefaultListener.java */
/* loaded from: classes6.dex */
public class m extends o {
    private Timer A;
    private Handler B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private MBridgeVideoView.u H;

    /* renamed from: x  reason: collision with root package name */
    private MBridgeVideoView f31178x;

    /* renamed from: y  reason: collision with root package name */
    private MBridgeContainerView f31179y;

    /* renamed from: z  reason: collision with root package name */
    private int f31180z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoViewDefaultListener.java */
    /* loaded from: classes6.dex */
    public class a extends TimerTask {

        /* compiled from: VideoViewDefaultListener.java */
        /* renamed from: com.mbridge.msdk.video.module.listener.impl.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0452a implements Runnable {
            RunnableC0452a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                m.this.f31179y.showVideoClickView(-1);
                m.this.f31178x.soundOperate(0, 2);
            }
        }

        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                m.this.B.post(new RunnableC0452a());
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public m(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i10, int i11, com.mbridge.msdk.video.module.listener.a aVar2, int i12, boolean z10, int i13) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i12, z10);
        boolean z11;
        this.B = new Handler();
        this.C = false;
        this.D = false;
        this.E = false;
        this.f31178x = mBridgeVideoView;
        this.f31179y = mBridgeContainerView;
        this.G = i10;
        this.f31180z = i11;
        this.F = i13;
        if (mBridgeVideoView != null) {
            if (mBridgeVideoView.getVideoSkipTime() == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.C = z11;
        }
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f31161a = false;
        }
    }

    private void n() {
        try {
            Timer timer = this.A;
            if (timer != null) {
                timer.cancel();
                this.A = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o() {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r4.f31162b
            if (r0 == 0) goto L70
            int r0 = r0.getDynamicTempCode()
            r1 = 5
            if (r0 != r1) goto L70
            com.mbridge.msdk.video.module.MBridgeVideoView r0 = r4.f31178x
            if (r0 == 0) goto L5c
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r0.mCampOrderViewData
            if (r0 == 0) goto L5c
            r0 = 0
            r1 = r0
        L15:
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.f31178x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            int r2 = r2.size()
            if (r1 >= r2) goto L45
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.f31178x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            java.lang.Object r2 = r2.get(r1)
            if (r2 == 0) goto L42
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.f31178x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            java.lang.Object r2 = r2.get(r1)
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = (com.mbridge.msdk.foundation.entity.CampaignEx) r2
            java.lang.String r2 = r2.getId()
            com.mbridge.msdk.foundation.entity.CampaignEx r3 = r4.f31162b
            java.lang.String r3 = r3.getId()
            if (r2 != r3) goto L42
            int r0 = r1 + (-1)
            goto L45
        L42:
            int r1 = r1 + 1
            goto L15
        L45:
            if (r0 < 0) goto L5c
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.f31178x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r1.mCampOrderViewData
            java.lang.Object r1 = r1.get(r0)
            if (r1 == 0) goto L5c
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.f31178x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r1.mCampOrderViewData
            java.lang.Object r0 = r1.get(r0)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            goto L5d
        L5c:
            r0 = 0
        L5d:
            if (r0 == 0) goto L70
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.f31178x
            if (r1 == 0) goto L66
            r1.setCampaign(r0)
        L66:
            com.mbridge.msdk.video.module.MBridgeContainerView r1 = r4.f31179y
            if (r1 == 0) goto L6d
            r1.setCampaign(r0)
        L6d:
            r4.a(r0)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.listener.impl.m.o():void");
    }

    private void p() {
        try {
            n();
            this.A = new Timer();
            this.A.schedule(new a(), 3000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.o, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        Integer num;
        int i11;
        String str;
        int i12;
        if (this.f31161a) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 5) {
                        if (i10 != 6) {
                            if (i10 == 8) {
                                MBridgeContainerView mBridgeContainerView = this.f31179y;
                                if (mBridgeContainerView != null) {
                                    if (!mBridgeContainerView.showAlertWebView()) {
                                        MBridgeVideoView mBridgeVideoView = this.f31178x;
                                        if (mBridgeVideoView != null) {
                                            mBridgeVideoView.showAlertView();
                                        }
                                    } else {
                                        MBridgeVideoView mBridgeVideoView2 = this.f31178x;
                                        if (mBridgeVideoView2 != null) {
                                            mBridgeVideoView2.alertWebViewShowed();
                                        }
                                    }
                                } else {
                                    MBridgeVideoView mBridgeVideoView3 = this.f31178x;
                                    if (mBridgeVideoView3 != null) {
                                        mBridgeVideoView3.showAlertView();
                                    }
                                }
                            } else if (i10 != 20) {
                                switch (i10) {
                                    case 10:
                                        this.D = true;
                                        this.f31178x.soundOperate(0, 2);
                                        this.f31178x.progressOperate(0, 2);
                                        break;
                                    case 11:
                                        this.f31178x.videoOperate(3);
                                        this.f31178x.dismissAllAlert();
                                        CampaignEx campaignEx = this.f31162b;
                                        if (campaignEx != null && campaignEx.getVideo_end_type() != 3 && this.f31162b.getRewardTemplateMode() != null && this.f31162b.getRewardTemplateMode().f() != 5002010) {
                                            if (this.f31162b.getAdSpaceT() != 2) {
                                                this.f31178x.setVisibility(8);
                                            }
                                        } else {
                                            this.f31178x.setVisibility(0);
                                        }
                                        CampaignEx campaignEx2 = this.f31162b;
                                        if (campaignEx2 != null && campaignEx2.getDynamicTempCode() == 5) {
                                            MBridgeVideoView mBridgeVideoView4 = this.f31178x;
                                            if (mBridgeVideoView4.mCurrPlayNum == mBridgeVideoView4.mCampaignSize) {
                                                MBridgeContainerView mBridgeContainerView2 = this.f31179y;
                                                if (mBridgeContainerView2 != null) {
                                                    mBridgeContainerView2.setRewardStatus(true);
                                                    this.f31179y.showOrderCampView();
                                                    break;
                                                }
                                            }
                                        }
                                        CampaignEx campaignEx3 = this.f31162b;
                                        if (campaignEx3 == null || campaignEx3.getRewardTemplateMode() == null || this.f31162b.getRewardTemplateMode().f() != 5002010) {
                                            if (this.f31162b.getAdSpaceT() == 2) {
                                                this.f31179y.showVideoEndCover();
                                                break;
                                            } else {
                                                this.f31179y.showEndcard(this.f31162b.getVideo_end_type());
                                                break;
                                            }
                                        }
                                        break;
                                    case 12:
                                        k();
                                        this.f31178x.videoOperate(3);
                                        this.f31178x.dismissAllAlert();
                                        if (this.f31162b.getVideo_end_type() != 3) {
                                            this.f31178x.setVisibility(8);
                                        } else {
                                            this.f31178x.setVisibility(0);
                                        }
                                        if (this.D || this.F != 0) {
                                            if (this.f31162b.isDynamicView() && this.f31162b.getDynamicTempCode() == 5 && TextUtils.isEmpty(this.f31162b.getendcard_url())) {
                                                o();
                                                this.F = 0;
                                            }
                                            if (!this.D && this.F == 1) {
                                                j();
                                                h();
                                                i();
                                                if (r0.a().a("i_l_s_t_r_i", false) && !this.E) {
                                                    this.E = true;
                                                    MBridgeVideoView.u uVar = this.H;
                                                    if (uVar != null) {
                                                        uVar.a();
                                                    }
                                                }
                                            }
                                            if (this.f31162b.getAdSpaceT() != 2) {
                                                this.f31179y.showEndcard(this.f31162b.getVideo_end_type());
                                                break;
                                            } else {
                                                this.f31179y.showVideoEndCover();
                                                break;
                                            }
                                        }
                                        break;
                                    case 13:
                                        MBridgeVideoView mBridgeVideoView5 = this.f31178x;
                                        if (mBridgeVideoView5 != null) {
                                            mBridgeVideoView5.closeVideoOperate(0, 2);
                                            str = this.f31178x.getPlayURL();
                                            i11 = this.f31178x.getBufferTimeout();
                                        } else {
                                            i11 = -1;
                                            str = "";
                                        }
                                        CampaignEx campaignEx4 = this.f31162b;
                                        String videoUrlEncode = campaignEx4 != null ? campaignEx4.getVideoUrlEncode() : "";
                                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                                        eVar.a("play_url", str);
                                        eVar.a(CampaignEx.JSON_KEY_VIDEO_URL, videoUrlEncode);
                                        eVar.a("timeout", Integer.valueOf(i11));
                                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_video_buffer_timeout", this.f31162b, eVar);
                                        break;
                                    case 14:
                                        if (!this.C) {
                                            this.f31178x.closeVideoOperate(0, 1);
                                            break;
                                        }
                                        break;
                                    case 15:
                                        if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                            MBridgeVideoView.v vVar = (MBridgeVideoView.v) obj;
                                            int videoInteractiveType = this.f31179y.getVideoInteractiveType();
                                            if (this.f31162b.getAdSpaceT() == 2) {
                                                SoundImageView soundImageView = this.f31178x.mSoundImageView;
                                                if (soundImageView != null && (soundImageView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f31178x.mSoundImageView.getLayoutParams();
                                                    layoutParams.setMargins(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                                    this.f31178x.mSoundImageView.setLayoutParams(layoutParams);
                                                }
                                                TextView textView = this.f31178x.tvFlag;
                                                if (textView != null && (textView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f31178x.tvFlag.getLayoutParams();
                                                    layoutParams2.setMargins(u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                                    this.f31178x.tvFlag.setVisibility(0);
                                                    this.f31178x.tvFlag.setLayoutParams(layoutParams2);
                                                }
                                                this.f31179y.showVideoClickView(1);
                                            } else if (videoInteractiveType >= 0 && vVar.f31129a >= videoInteractiveType) {
                                                this.f31179y.showVideoClickView(1);
                                                this.f31178x.soundOperate(0, 1);
                                            }
                                            this.C = vVar.f31131c;
                                            if (this.f31162b.getDynamicTempCode() == 5) {
                                                a(vVar.f31129a, vVar.f31130b);
                                                break;
                                            } else {
                                                int i13 = this.f31180z;
                                                if (((i13 >= 0 && ((i12 = vVar.f31129a) >= i13 || i12 == vVar.f31130b)) || (this.f31162b.getVideoCompleteTime() > 0 && (vVar.f31129a > this.f31162b.getVideoCompleteTime() || vVar.f31129a == vVar.f31130b))) && !this.C) {
                                                    this.f31178x.closeVideoOperate(0, 2);
                                                    this.C = true;
                                                    break;
                                                }
                                            }
                                        }
                                        break;
                                }
                            } else if (r0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                                this.H = (MBridgeVideoView.u) obj;
                            }
                        }
                    } else if (obj != null && (obj instanceof Integer)) {
                        if (((Integer) obj).intValue() == 1) {
                            num = 2;
                        } else {
                            num = 1;
                        }
                        this.f31178x.soundOperate(num.intValue(), -1);
                    }
                }
                this.f31178x.dismissAllAlert();
                this.f31178x.videoOperate(3);
                CampaignEx campaignEx5 = this.f31162b;
                if (campaignEx5 != null && campaignEx5.isDynamicView() && this.f31162b.getDynamicTempCode() == 5) {
                    if (this.f31179y != null) {
                        MBridgeVideoView mBridgeVideoView6 = this.f31178x;
                        if (mBridgeVideoView6.mCurrPlayNum == mBridgeVideoView6.mCampaignSize) {
                            if (this.f31162b.getAdSpaceT() != 2) {
                                this.f31179y.setRewardStatus(true);
                                this.f31179y.showOrderCampView();
                            }
                            i10 = 16;
                        }
                    }
                    com.mbridge.msdk.video.bt.module.orglistener.f.a(this.f31162b, this.f31167g, this.f31178x.mCurrentPlayProgressTime);
                }
                if (this.G == 2 && !this.f31179y.endCardShowing() && this.f31162b.getAdSpaceT() != 2) {
                    this.f31179y.showEndcard(this.f31162b.getVideo_end_type());
                }
                i10 = 16;
            } else if (!this.f31179y.endCardShowing()) {
                int videoInteractiveType2 = this.f31179y.getVideoInteractiveType();
                if (videoInteractiveType2 != -2) {
                    if (videoInteractiveType2 == -1) {
                        if (this.f31179y.isLast()) {
                            this.f31179y.showVideoClickView(1);
                            this.f31178x.soundOperate(0, 1);
                            p();
                        } else {
                            this.f31179y.showVideoClickView(-1);
                            this.f31178x.soundOperate(0, 2);
                            n();
                        }
                    }
                } else if (this.f31179y.miniCardLoaded()) {
                    this.f31179y.showVideoClickView(2);
                }
            }
        }
        super.a(i10, obj);
    }

    private void a(int i10, int i11) {
        CampaignEx campaignEx;
        if (this.C || this.f31178x == null || (campaignEx = this.f31162b) == null) {
            return;
        }
        int i12 = this.f31180z;
        int i13 = (i12 < 0 || i10 < i12) ? 1 : 2;
        if (i13 != 2 && (campaignEx.getVideoCompleteTime() != 0 ? i10 > this.f31162b.getVideoCompleteTime() : this.f31178x.mCurrPlayNum > 1)) {
            i13 = 2;
        }
        if (i13 != 2 && this.f31178x.mCurrPlayNum > 1 && i10 == i11) {
            i13 = 2;
        }
        if (i13 == 2) {
            this.f31178x.closeVideoOperate(0, i13);
            this.C = true;
        }
    }
}
