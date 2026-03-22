package com.mbridge.msdk.splash.manager;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.splash.manager.g;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.ss.ttm.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: ResManager.java */
/* loaded from: classes6.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static int f29159a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static com.mbridge.msdk.foundation.db.e f29160b = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResManager.java */
    /* loaded from: classes6.dex */
    public class a implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBSplashView f29161a;

        a(MBSplashView mBSplashView) {
            this.f29161a = mBSplashView;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            this.f29161a.setVideoReady(true);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            this.f29161a.setVideoReady(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResManager.java */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.view.nativeview.a f29162a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MBSplashView f29163b;

        b(com.mbridge.msdk.splash.view.nativeview.a aVar, MBSplashView mBSplashView) {
            this.f29162a = aVar;
            this.f29163b = mBSplashView;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            com.mbridge.msdk.splash.view.nativeview.a aVar = this.f29162a;
            if (aVar != null) {
                aVar.b();
            }
            MBSplashView mBSplashView = this.f29163b;
            if (mBSplashView != null) {
                mBSplashView.setImageReady(false);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            com.mbridge.msdk.splash.view.nativeview.a aVar = this.f29162a;
            if (aVar != null) {
                aVar.a();
            }
            MBSplashView mBSplashView = this.f29163b;
            if (mBSplashView != null) {
                mBSplashView.setImageReady(true);
            }
        }
    }

    public static CampaignEx a(MBSplashView mBSplashView, String str, String str2, String str3, boolean z10, int i10, boolean z11, boolean z12) {
        if (f29160b == null) {
            f29160b = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        com.mbridge.msdk.setting.g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
        }
        long Z = d10.Z() * 1000;
        long a02 = d10.a0() * 1000;
        a(a02, str2);
        List<CampaignEx> a10 = f29160b.a(str2, 0, 0, f29159a, !TextUtils.isEmpty(str3));
        if (a10 == null || a10.size() <= 0) {
            return null;
        }
        CampaignEx campaignEx = a10.get(0);
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = currentTimeMillis - Z;
        if (!z11) {
            if (((campaignEx.getPlct() <= 0 || (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() < currentTimeMillis) && (campaignEx.getPlct() > 0 || campaignEx.getTimestamp() < j10)) || !a(mBSplashView, campaignEx, str, str2, z10, i10, z12)) {
                return null;
            }
            return a(campaignEx);
        } else if ((campaignEx.getPlct() > 0 && (campaignEx.getPlct() * 1000) + campaignEx.getTimestamp() >= currentTimeMillis) || (campaignEx.getPlct() <= 0 && campaignEx.getTimestamp() >= j10)) {
            if (a(mBSplashView, campaignEx, str, str2, z10, i10, z12)) {
                return a(campaignEx);
            }
            return null;
        } else if (a(mBSplashView, campaignEx, str, str2, z10, i10, z12) && campaignEx.isSpareOffer(Z, a02)) {
            return a(campaignEx);
        } else {
            return null;
        }
    }

    public static void b(String str) {
        if (f29160b == null) {
            f29160b = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f29160b.a(str, 0, f29159a);
    }

    private static CampaignEx a(CampaignEx campaignEx) {
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
            campaignEx.setHasMBTplMark(false);
            campaignEx.setIsMraid(true);
        } else {
            campaignEx.setHasMBTplMark(true);
            campaignEx.setIsMraid(false);
        }
        return campaignEx;
    }

    public static boolean a(MBSplashView mBSplashView, CampaignEx campaignEx, String str, String str2, boolean z10, int i10, boolean z11) {
        boolean z12;
        if (campaignEx != null) {
            mBSplashView.clearResState();
            if (TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                z12 = true;
            } else {
                boolean z13 = mBSplashView.isVideoReady() || com.mbridge.msdk.videocommon.download.b.getInstance().b(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, str2, campaignEx.isBidCampaign());
                if (!z13) {
                    a(mBSplashView, campaignEx, str2);
                } else {
                    mBSplashView.setVideoReady(true);
                }
                z12 = z13;
            }
            if (!TextUtils.isEmpty(campaignEx.getAdZip()) && !mBSplashView.isH5Ready()) {
                String h5ResAddress = H5DownLoadManager.getInstance().getH5ResAddress(campaignEx.getAdZip());
                if (TextUtils.isEmpty(h5ResAddress)) {
                    z12 = false;
                } else if (!z11) {
                    a(mBSplashView, h5ResAddress, campaignEx, str, str2, z10, i10);
                }
            }
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml()) && !mBSplashView.isH5Ready()) {
                String a10 = a(campaignEx.getAdHtml());
                if (TextUtils.isEmpty(a10)) {
                    z12 = false;
                } else if (!z11) {
                    a(mBSplashView, a10, campaignEx, str, str2, z10, i10);
                }
            }
            if (campaignEx.isDynamicView()) {
                if (TextUtils.isEmpty(campaignEx.getImageUrl()) || mBSplashView.isImageReady()) {
                    return false;
                }
                if (!com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).c(campaignEx.getImageUrl())) {
                    a(mBSplashView, campaignEx, (com.mbridge.msdk.splash.view.nativeview.a) null);
                } else {
                    mBSplashView.setImageReady(true);
                    return true;
                }
            }
            return z12;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResManager.java */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
        }
    }

    private static void a(MBSplashView mBSplashView, CampaignEx campaignEx, String str) {
        a aVar = new a(mBSplashView);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(com.mbridge.msdk.foundation.controller.c.m().d(), str, copyOnWriteArrayList, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, aVar);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, str, campaignEx.isBidCampaign())) {
            com.mbridge.msdk.videocommon.download.b.getInstance().load(str);
        } else {
            mBSplashView.setVideoReady(true);
        }
    }

    public static void a(MBSplashView mBSplashView, CampaignEx campaignEx, com.mbridge.msdk.splash.view.nativeview.a aVar) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl(), new b(aVar, mBSplashView));
        if (TextUtils.isEmpty(campaignEx.getIconUrl())) {
            return;
        }
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getIconUrl(), new c());
    }

    private static void a(MBSplashView mBSplashView, String str, CampaignEx campaignEx, String str2, String str3, boolean z10, int i10) {
        g.d dVar = new g.d();
        dVar.c(str3);
        dVar.b(str2);
        dVar.a(campaignEx);
        dVar.a(str);
        dVar.a(z10);
        dVar.a(i10);
        g.a().a(mBSplashView, dVar, null);
    }

    private static String a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return "file:///" + file.getAbsolutePath();
            }
            return "";
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Exception e10) {
                e10.getMessage();
            }
        }
    }

    public static boolean a(MBSplashView mBSplashView, CampaignEx campaignEx) {
        if (mBSplashView == null) {
            return false;
        }
        boolean isVideoReady = !TextUtils.isEmpty(campaignEx.getVideoUrlEncode()) ? mBSplashView.isVideoReady() : true;
        if (isVideoReady && !TextUtils.isEmpty(campaignEx.getAdZip())) {
            isVideoReady = mBSplashView.isH5Ready();
        }
        if (isVideoReady && TextUtils.isEmpty(campaignEx.getAdZip()) && !TextUtils.isEmpty(campaignEx.getAdHtml())) {
            isVideoReady = mBSplashView.isH5Ready();
        }
        if (TextUtils.isEmpty(campaignEx.getAdZip()) && TextUtils.isEmpty(campaignEx.getAdHtml())) {
            isVideoReady = false;
        }
        if (campaignEx.isDynamicView()) {
            if (TextUtils.isEmpty(campaignEx.getImageUrl())) {
                return false;
            }
            return mBSplashView.isImageReady();
        }
        return isVideoReady;
    }

    public static void a(CampaignEx campaignEx, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        if (f29160b == null) {
            f29160b = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f29160b.a(arrayList, str);
    }

    public static void a(long j10, String str) {
        if (f29160b == null) {
            f29160b = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        f29160b.a(j10, str);
    }
}
