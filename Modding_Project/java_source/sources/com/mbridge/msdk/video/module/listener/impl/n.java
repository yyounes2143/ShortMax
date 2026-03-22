package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
/* compiled from: VideoViewJSListener.java */
/* loaded from: classes6.dex */
public class n extends o {
    private boolean A;
    private int B;
    private boolean C;
    private MBridgeVideoView.u D;

    /* renamed from: x  reason: collision with root package name */
    private IJSFactory f31183x;

    /* renamed from: y  reason: collision with root package name */
    private int f31184y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f31185z;

    public n(IJSFactory iJSFactory, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i10, int i11, com.mbridge.msdk.video.module.listener.a aVar2, int i12, boolean z10, int i13) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i12, z10);
        boolean z11;
        this.f31185z = false;
        this.A = false;
        this.C = false;
        this.f31183x = iJSFactory;
        this.f31184y = i10;
        if (i11 == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.f31185z = z11;
        this.B = i13;
        if (iJSFactory == null) {
            this.f31161a = false;
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.o, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        Integer num;
        int i11;
        int i12 = i10;
        if (this.f31161a) {
            String str = "";
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 5) {
                        int i13 = 6;
                        if (i12 != 6) {
                            if (i12 != 8) {
                                if (i12 != 20) {
                                    if (i12 != 114) {
                                        if (i12 != 116) {
                                            switch (i12) {
                                                case 10:
                                                    this.C = true;
                                                    this.f31183x.getJSNotifyProxy().a(0);
                                                    break;
                                                case 11:
                                                case 12:
                                                    this.f31183x.getJSVideoModule().videoOperate(3);
                                                    if (this.f31162b.getVideo_end_type() != 3) {
                                                        if (this.f31162b.getAdSpaceT() != 2) {
                                                            this.f31183x.getJSVideoModule().setVisible(8);
                                                        }
                                                    } else {
                                                        this.f31183x.getJSVideoModule().setVisible(0);
                                                    }
                                                    if (i12 == 12) {
                                                        k();
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 1;
                                                    }
                                                    this.f31183x.getJSNotifyProxy().a(i11);
                                                    if (this.f31183x.getJSCommon().i() == 2) {
                                                        this.f31183x.getJSVideoModule().setVisible(0);
                                                        com.mbridge.msdk.video.signal.j jSVideoModule = this.f31183x.getJSVideoModule();
                                                        this.f31183x.getJSContainerModule().showMiniCard(jSVideoModule.getBorderViewTop(), jSVideoModule.getBorderViewLeft(), jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                                                    } else if (i12 == 12) {
                                                        if (this.B == 1) {
                                                            if (this.f31162b.getAdSpaceT() != 2) {
                                                                this.f31183x.getJSContainerModule().showEndcard(this.f31162b.getVideo_end_type());
                                                            } else {
                                                                this.f31183x.getJSContainerModule().showVideoEndCover();
                                                            }
                                                        }
                                                    } else if (this.f31162b.getAdSpaceT() != 2) {
                                                        this.f31183x.getJSContainerModule().showEndcard(this.f31162b.getVideo_end_type());
                                                    } else {
                                                        this.f31183x.getJSContainerModule().showVideoEndCover();
                                                    }
                                                    this.f31183x.getJSVideoModule().dismissAllAlert();
                                                    if (i12 == 12 && !this.C && this.B == 1) {
                                                        k();
                                                        j();
                                                        h();
                                                        i();
                                                        if (r0.a().a("i_l_s_t_r_i", false) && !this.A) {
                                                            this.A = true;
                                                            MBridgeVideoView.u uVar = this.D;
                                                            if (uVar != null) {
                                                                uVar.a();
                                                                break;
                                                            }
                                                        }
                                                    }
                                                    break;
                                                case 13:
                                                    if (!this.f31183x.getJSVideoModule().isH5Canvas()) {
                                                        this.f31183x.getJSVideoModule().closeVideoOperate(0, 2);
                                                    }
                                                    this.f31183x.getJSNotifyProxy().a(-1);
                                                    break;
                                                case 14:
                                                    if (!this.f31185z) {
                                                        this.f31183x.getJSVideoModule().closeVideoOperate(0, 1);
                                                        break;
                                                    }
                                                    break;
                                                case 15:
                                                    if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                                        this.f31185z = true;
                                                        this.f31183x.getJSNotifyProxy().a((MBridgeVideoView.v) obj);
                                                        break;
                                                    }
                                                    break;
                                                default:
                                                    switch (i12) {
                                                        case 123:
                                                        case 124:
                                                            com.mbridge.msdk.video.signal.g jSNotifyProxy = this.f31183x.getJSNotifyProxy();
                                                            if (i12 == 123) {
                                                                i13 = 7;
                                                            }
                                                            jSNotifyProxy.a(i13, "");
                                                            break;
                                                        case 125:
                                                            this.f31183x.getJSContainerModule().hideAlertWebview();
                                                            break;
                                                    }
                                            }
                                        } else {
                                            com.mbridge.msdk.video.signal.j jSVideoModule2 = this.f31183x.getJSVideoModule();
                                            this.f31183x.getJSContainerModule().configurationChanged(jSVideoModule2.getBorderViewWidth(), jSVideoModule2.getBorderViewHeight(), jSVideoModule2.getBorderViewRadius());
                                        }
                                    } else if (this.f31183x.getJSCommon().i() == 2) {
                                        com.mbridge.msdk.video.signal.j jSVideoModule3 = this.f31183x.getJSVideoModule();
                                        this.f31183x.getJSContainerModule().showMiniCard(jSVideoModule3.getBorderViewTop(), jSVideoModule3.getBorderViewLeft(), jSVideoModule3.getBorderViewWidth(), jSVideoModule3.getBorderViewHeight(), jSVideoModule3.getBorderViewRadius());
                                    }
                                } else if (r0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                                    this.D = (MBridgeVideoView.u) obj;
                                }
                            } else if (!this.f31183x.getJSContainerModule().showAlertWebView()) {
                                this.f31183x.getJSVideoModule().showAlertView();
                            } else {
                                this.f31183x.getJSVideoModule().alertWebViewShowed();
                            }
                        }
                    } else if (obj != null && (obj instanceof Integer)) {
                        if (((Integer) obj).intValue() == 1) {
                            num = 2;
                        } else {
                            num = 1;
                        }
                        this.f31183x.getJSVideoModule().soundOperate(num.intValue(), -1);
                        this.f31183x.getJSNotifyProxy().a(5, num + "");
                    }
                }
                this.f31183x.getJSVideoModule().dismissAllAlert();
                if (i12 == 2) {
                    this.f31183x.getJSNotifyProxy().a(2, "");
                }
                this.f31183x.getJSVideoModule().videoOperate(3);
                if (this.f31183x.getJSCommon().i() != 2) {
                    if (this.f31162b.getVideo_end_type() != 3) {
                        this.f31183x.getJSVideoModule().setVisible(8);
                    } else {
                        this.f31183x.getJSVideoModule().setVisible(0);
                    }
                    if (this.f31184y == 2 && !this.f31183x.getJSContainerModule().endCardShowing() && this.f31162b.getAdSpaceT() != 2) {
                        this.f31183x.getJSContainerModule().showEndcard(this.f31162b.getVideo_end_type());
                        this.f31183x.getJSNotifyProxy().a(1);
                    }
                }
                i12 = 16;
                this.f31183x.getJSNotifyProxy().a(1);
            } else if (!this.f31183x.getJSContainerModule().endCardShowing()) {
                com.mbridge.msdk.video.signal.g jSNotifyProxy2 = this.f31183x.getJSNotifyProxy();
                if (obj != null) {
                    str = obj.toString();
                }
                jSNotifyProxy2.a(1, str);
            }
        }
        super.a(i12, obj);
    }
}
