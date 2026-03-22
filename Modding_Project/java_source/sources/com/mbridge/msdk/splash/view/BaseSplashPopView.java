package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import com.ss.ttm.player.MediaPlayer;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public class BaseSplashPopView extends RelativeLayout {
    public static final int TYPE_POP_DEFAULT = 1;
    public static final int TYPE_POP_LARGE = 4;
    public static final int TYPE_POP_MEDIUM = 3;
    public static final int TYPE_POP_SMALL = 2;

    /* renamed from: v  reason: collision with root package name */
    private static final AtomicInteger f29353v = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    protected String f29354a;

    /* renamed from: b  reason: collision with root package name */
    protected String f29355b;

    /* renamed from: c  reason: collision with root package name */
    private int f29356c;

    /* renamed from: d  reason: collision with root package name */
    private CampaignEx f29357d;

    /* renamed from: e  reason: collision with root package name */
    protected com.mbridge.msdk.splash.middle.d f29358e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f29359f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f29360g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f29361h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f29362i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f29363j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f29364k;

    /* renamed from: l  reason: collision with root package name */
    private TextView f29365l;

    /* renamed from: m  reason: collision with root package name */
    private int f29366m;

    /* renamed from: n  reason: collision with root package name */
    protected Handler f29367n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29368o;

    /* renamed from: p  reason: collision with root package name */
    protected com.mbridge.msdk.click.a f29369p;

    /* renamed from: q  reason: collision with root package name */
    private j f29370q;

    /* renamed from: r  reason: collision with root package name */
    private Runnable f29371r;

    /* renamed from: s  reason: collision with root package name */
    private Runnable f29372s;

    /* renamed from: t  reason: collision with root package name */
    View.OnClickListener f29373t;

    /* renamed from: u  reason: collision with root package name */
    View.OnClickListener f29374u;

    /* loaded from: classes6.dex */
    class a implements j {
        a() {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, BaseSplashPopView.this);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            t0.a(campaign, BaseSplashPopView.this);
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            int i10;
            int i11;
            if (BaseSplashPopView.this.f29356c == 1) {
                int min = Math.min(BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight());
                int a10 = (u0.a(BaseSplashPopView.this.getContext(), 60.0f) - Math.min(Math.max(min / 4, 70), min)) / 2;
                i10 = u0.a(BaseSplashPopView.this.getContext(), 23.0f) + a10;
                i11 = u0.a(BaseSplashPopView.this.getContext(), 10.0f) + a10;
            } else {
                i10 = 0;
                i11 = 0;
            }
            t0.a(campaign, BaseSplashPopView.this, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29376a;

        b(boolean z10) {
            this.f29376a = z10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            p0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            Bitmap a10;
            try {
                if (!bitmap.isRecycled()) {
                    if (this.f29376a) {
                        a10 = o0.b(bitmap);
                    } else {
                        a10 = o0.a(bitmap, 1, 16);
                    }
                    ImageView imageView = BaseSplashPopView.this.f29359f;
                    if (a10 != null) {
                        bitmap = a10;
                    }
                    imageView.setImageBitmap(bitmap);
                }
            } catch (Throwable th2) {
                p0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            p0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (!bitmap.isRecycled()) {
                    BaseSplashPopView.this.f29361h.setImageBitmap(z.a(bitmap, 10));
                }
            } catch (Throwable th2) {
                p0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class d implements com.mbridge.msdk.foundation.same.image.c {
        d() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            p0.b("MBSplashPopView", str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            try {
                if (!bitmap.isRecycled()) {
                    BaseSplashPopView.this.f29360g.setImageBitmap(o0.a(bitmap, 1, 16));
                }
            } catch (Throwable th2) {
                p0.b("MBSplashPopView", th2.getMessage());
            }
        }
    }

    /* loaded from: classes6.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseSplashPopView.this.f29365l != null) {
                if (BaseSplashPopView.this.f29366m == 0) {
                    BaseSplashPopView.this.f29366m = -1;
                    BaseSplashPopView.this.g();
                    BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
                    baseSplashPopView.f29367n.removeCallbacks(baseSplashPopView.f29371r);
                    BaseSplashPopView baseSplashPopView2 = BaseSplashPopView.this;
                    com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView2.f29358e;
                    if (dVar != null) {
                        dVar.a(new MBridgeIds(baseSplashPopView2.f29354a, baseSplashPopView2.f29355b), 5);
                        return;
                    }
                    return;
                }
                BaseSplashPopView.g(BaseSplashPopView.this);
                BaseSplashPopView.this.f29365l.setText(String.valueOf(BaseSplashPopView.this.f29366m));
                BaseSplashPopView baseSplashPopView3 = BaseSplashPopView.this;
                baseSplashPopView3.f29367n.postDelayed(baseSplashPopView3.f29371r, 1000L);
            }
        }
    }

    /* loaded from: classes6.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            com.mbridge.msdk.splash.middle.d dVar = baseSplashPopView.f29358e;
            if (dVar != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f29354a, baseSplashPopView.f29355b), BaseSplashPopView.this.getWidth(), BaseSplashPopView.this.getHeight(), BaseSplashPopView.this.f29356c);
            }
        }
    }

    /* loaded from: classes6.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView = BaseSplashPopView.this;
            if (baseSplashPopView.f29358e != null) {
                baseSplashPopView.b(baseSplashPopView.f29357d);
            }
        }
    }

    /* loaded from: classes6.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseSplashPopView baseSplashPopView;
            com.mbridge.msdk.splash.middle.d dVar;
            if (BaseSplashPopView.this.f29366m <= 0 && (dVar = (baseSplashPopView = BaseSplashPopView.this).f29358e) != null) {
                dVar.a(new MBridgeIds(baseSplashPopView.f29354a, baseSplashPopView.f29355b), 4);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        private String f29384a;

        /* renamed from: b  reason: collision with root package name */
        private String f29385b;

        /* renamed from: c  reason: collision with root package name */
        private int f29386c;

        /* renamed from: d  reason: collision with root package name */
        private CampaignEx f29387d;

        public i(String str, String str2, int i10, CampaignEx campaignEx) {
            this.f29384a = str;
            this.f29385b = str2;
            this.f29386c = i10;
            this.f29387d = campaignEx;
        }

        public CampaignEx a() {
            return this.f29387d;
        }

        public String b() {
            return this.f29384a;
        }

        public String c() {
            return this.f29385b;
        }

        public int d() {
            return this.f29386c;
        }
    }

    public BaseSplashPopView(Context context, i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        super(context);
        this.f29356c = 1;
        this.f29366m = -1;
        this.f29367n = new Handler();
        this.f29368o = false;
        this.f29370q = new a();
        this.f29371r = new e();
        this.f29372s = new f();
        this.f29373t = new g();
        this.f29374u = new h();
        if (iVar != null) {
            this.f29355b = iVar.c();
            this.f29354a = iVar.b();
            this.f29356c = iVar.d();
            this.f29357d = iVar.a();
            this.f29358e = dVar;
            a();
            return;
        }
        throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
    }

    static /* synthetic */ int g(BaseSplashPopView baseSplashPopView) {
        int i10 = baseSplashPopView.f29366m;
        baseSplashPopView.f29366m = i10 - 1;
        return i10;
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        do {
            atomicInteger = f29353v;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    private void setBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setForegroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new d());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f29358e != null) {
            postDelayed(this.f29372s, 500L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    public void pauseCountDown() {
        this.f29368o = true;
        if (this.f29365l != null) {
            this.f29367n.removeCallbacks(this.f29371r);
        }
    }

    public void reStartCountDown() {
        if (this.f29368o) {
            this.f29368o = false;
            int i10 = this.f29366m;
            if (i10 != -1 && i10 != 0) {
                TextView textView = this.f29365l;
                if (textView != null) {
                    textView.setText(String.valueOf(i10));
                    this.f29367n.postDelayed(this.f29371r, 1000L);
                    return;
                }
                return;
            }
            g();
        }
    }

    public void release() {
        try {
            this.f29367n.removeCallbacks(this.f29372s);
            this.f29367n.removeCallbacks(this.f29371r);
            this.f29371r = null;
            detachAllViewsFromParent();
            this.f29357d = null;
            this.f29358e = null;
        } catch (Exception e10) {
            p0.b("MBSplashPopView", e10.getMessage());
        }
    }

    public void setPopViewType(i iVar, com.mbridge.msdk.splash.middle.d dVar) {
        if (iVar != null) {
            this.f29355b = iVar.c();
            this.f29354a = iVar.b();
            this.f29356c = iVar.d();
            this.f29357d = iVar.a();
            this.f29358e = dVar;
            a();
            return;
        }
        throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
    }

    public void startCountDown() {
        this.f29367n.removeCallbacks(this.f29371r);
        CampaignEx campaignEx = this.f29357d;
        if (campaignEx != null && this.f29356c == 1) {
            int flbSkipTime = campaignEx.getFlbSkipTime();
            if (flbSkipTime > 0) {
                this.f29366m = flbSkipTime;
                TextView textView = this.f29365l;
                if (textView != null) {
                    textView.setText(String.valueOf(flbSkipTime));
                    this.f29367n.postDelayed(this.f29371r, 1000L);
                    return;
                }
                return;
            }
            g();
        }
    }

    private void b() {
        String str;
        int identifier;
        this.f29362i = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 32.0f), u0.a(getContext(), 13.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(8, this.f29359f.getId());
        this.f29362i.setLayoutParams(layoutParams);
        try {
            str = getResources().getConfiguration().locale.getLanguage();
        } catch (Throwable th2) {
            p0.b("MBSplashPopView", th2.getMessage());
            str = "ZH";
        }
        if (!str.toUpperCase().equals("CN") && !str.toUpperCase().equals("ZH")) {
            identifier = getResources().getIdentifier("mbridge_splash_pop_ad_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
        } else {
            identifier = getResources().getIdentifier("mbridge_splash_pop_ad", "drawable", com.mbridge.msdk.foundation.controller.c.m().h());
        }
        this.f29362i.setBackgroundResource(identifier);
        addView(this.f29362i);
    }

    private void c() {
        View imageView = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 80.0f), u0.a(getContext(), 80.0f));
        layoutParams.addRule(9);
        layoutParams.topMargin = u0.a(getContext(), 16.0f);
        imageView.setId(generateViewId());
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_default", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        this.f29359f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(u0.a(getContext(), 60.0f), u0.a(getContext(), 60.0f));
        layoutParams2.addRule(6, imageView.getId());
        layoutParams2.topMargin = u0.a(getContext(), 7.0f);
        layoutParams2.leftMargin = u0.a(getContext(), 10.0f);
        this.f29359f.setId(generateViewId());
        this.f29359f.setLayoutParams(layoutParams2);
        this.f29359f.setScaleType(ImageView.ScaleType.FIT_CENTER);
        CampaignEx campaignEx = this.f29357d;
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getIconUrl())) {
            a(this.f29357d.getIconUrl(), true);
        }
        this.f29365l = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, imageView.getId());
        layoutParams3.addRule(8, imageView.getId());
        layoutParams3.leftMargin = u0.a(getContext(), 62.0f);
        layoutParams3.bottomMargin = u0.a(getContext(), 70.0f);
        this.f29365l.setId(generateViewId());
        this.f29365l.setTextSize(10.0f);
        this.f29365l.setTextColor(-1);
        this.f29365l.setGravity(17);
        this.f29365l.setMinWidth(u0.a(getContext(), 16.0f));
        this.f29365l.setMaxHeight(u0.a(getContext(), 16.0f));
        this.f29365l.setLayoutParams(layoutParams3);
        this.f29365l.setBackgroundResource(getResources().getIdentifier("mbridge_cm_circle_50black", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(imageView);
        addView(this.f29365l);
        addView(this.f29359f);
        CampaignEx campaignEx2 = this.f29357d;
        if (campaignEx2 != null && campaignEx2.getFlbSkipTime() <= 0) {
            g();
        }
        CampaignEx campaignEx3 = this.f29357d;
        if (campaignEx3 != null) {
            a1.a(this, campaignEx3.getLocalRequestId(), this.f29357d.getLocalAllowTrackClick());
        }
        setOnClickListener(this.f29373t);
        this.f29365l.setOnClickListener(this.f29374u);
    }

    private void d() {
        this.f29361h = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, u0.a(getContext(), 131.0f));
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.f29361h.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f29361h.setId(generateViewId());
        this.f29361h.setLayoutParams(layoutParams);
        setBackgroundImage(this.f29357d.getImageUrl());
        this.f29360g = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, u0.a(getContext(), 131.0f));
        layoutParams2.addRule(10);
        layoutParams2.addRule(14);
        this.f29360g.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f29360g.setId(generateViewId());
        this.f29360g.setLayoutParams(layoutParams2);
        setForegroundImage(this.f29357d.getImageUrl());
        this.f29359f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(u0.a(getContext(), 50.0f), u0.a(getContext(), 50.0f));
        layoutParams3.addRule(9);
        layoutParams3.addRule(3, this.f29361h.getId());
        layoutParams3.topMargin = 20;
        this.f29359f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f29359f.setId(generateViewId());
        this.f29359f.setLayoutParams(layoutParams3);
        a(this.f29357d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(1, this.f29359f.getId());
        layoutParams4.addRule(6, this.f29359f.getId());
        layoutParams4.addRule(8, this.f29359f.getId());
        layoutParams4.leftMargin = u0.a(getContext(), 8.0f);
        layoutParams4.rightMargin = u0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams4);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f29363j = textView;
        textView.setId(generateViewId());
        this.f29363j.setGravity(16);
        this.f29363j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f29363j.setTextSize(12.0f);
        this.f29363j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        TextView textView2 = this.f29363j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f29363j.setMarqueeRepeatLimit(-1);
        this.f29363j.setSelected(true);
        this.f29363j.setSingleLine(true);
        this.f29363j.setText(this.f29357d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f29364k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(5, this.f29363j.getId());
        layoutParams5.addRule(3, this.f29363j.getId());
        layoutParams5.topMargin = u0.a(getContext(), 4.0f);
        layoutParams5.rightMargin = u0.a(getContext(), 36.0f);
        this.f29364k.setGravity(16);
        this.f29364k.setLayoutParams(layoutParams5);
        this.f29364k.setTextSize(8.0f);
        this.f29364k.setTextColor(-10066330);
        this.f29364k.setEllipsize(truncateAt);
        this.f29364k.setMarqueeRepeatLimit(-1);
        this.f29364k.setSelected(true);
        this.f29364k.setSingleLine(true);
        this.f29364k.setText(this.f29357d.getAppDesc());
        relativeLayout.addView(this.f29363j);
        relativeLayout.addView(this.f29364k);
        addView(this.f29361h);
        addView(this.f29360g);
        addView(this.f29359f);
        addView(relativeLayout);
        b();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT));
        if (!TextUtils.isEmpty(this.f29357d.getBidToken())) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        a1.a(this, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, this.f29357d.getBidToken(), eVar, this.f29357d, this.f29355b).o(), this.f29357d.getLocalAllowTrackClick());
        setOnClickListener(this.f29373t);
    }

    private void e() {
        int a10 = u0.a(getContext(), 4.0f);
        this.f29359f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 50.0f), u0.a(getContext(), 50.0f));
        layoutParams.addRule(9);
        this.f29359f.setId(generateViewId());
        this.f29359f.setLayoutParams(layoutParams);
        this.f29359f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        this.f29359f.setPadding(a10, a10, a10, a10);
        a(this.f29357d.getIconUrl(), false);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(1, this.f29359f.getId());
        layoutParams2.addRule(6, this.f29359f.getId());
        layoutParams2.addRule(8, this.f29359f.getId());
        layoutParams2.leftMargin = u0.a(getContext(), 8.0f);
        layoutParams2.rightMargin = u0.a(getContext(), 8.0f);
        relativeLayout.setLayoutParams(layoutParams2);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(getContext());
        this.f29363j = textView;
        textView.setId(generateViewId());
        this.f29363j.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.f29363j.setGravity(16);
        this.f29363j.setTextSize(12.0f);
        this.f29363j.setSelected(true);
        TextView textView2 = this.f29363j;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt);
        this.f29363j.setMarqueeRepeatLimit(-1);
        this.f29363j.setSingleLine(true);
        this.f29363j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f29363j.setText(this.f29357d.getAppName());
        TextView textView3 = new TextView(getContext());
        this.f29364k = textView3;
        textView3.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(5, this.f29363j.getId());
        layoutParams3.addRule(3, this.f29363j.getId());
        layoutParams3.topMargin = u0.a(getContext(), 4.0f);
        layoutParams3.rightMargin = u0.a(getContext(), 36.0f);
        this.f29364k.setGravity(16);
        this.f29364k.setLayoutParams(layoutParams3);
        this.f29364k.setTextSize(8.0f);
        this.f29364k.setTextColor(-10066330);
        this.f29364k.setEllipsize(truncateAt);
        this.f29364k.setMarqueeRepeatLimit(-1);
        this.f29364k.setSelected(true);
        this.f29364k.setSingleLine(true);
        this.f29364k.setText(this.f29357d.getAppDesc());
        relativeLayout.addView(this.f29363j);
        relativeLayout.addView(this.f29364k);
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f29359f);
        addView(relativeLayout);
        b();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT));
        if (!TextUtils.isEmpty(this.f29357d.getBidToken())) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        a1.a(this, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, this.f29357d.getBidToken(), eVar, this.f29357d, this.f29355b).o(), this.f29357d.getLocalAllowTrackClick());
        setOnClickListener(this.f29373t);
    }

    private void f() {
        int a10 = u0.a(getContext(), 4.0f);
        this.f29359f = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(u0.a(getContext(), 28.0f), u0.a(getContext(), 28.0f));
        layoutParams.addRule(9);
        this.f29359f.setId(generateViewId());
        this.f29359f.setLayoutParams(layoutParams);
        this.f29359f.setPadding(a10, a10, a10, a10);
        this.f29359f.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        a(this.f29357d.getIconUrl(), false);
        TextView textView = new TextView(getContext());
        this.f29363j = textView;
        textView.setId(generateViewId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(1, this.f29359f.getId());
        layoutParams2.addRule(6, this.f29359f.getId());
        layoutParams2.addRule(8, this.f29359f.getId());
        layoutParams2.leftMargin = u0.a(getContext(), 4.0f);
        layoutParams2.rightMargin = u0.a(getContext(), 40.0f);
        this.f29363j.setLayoutParams(layoutParams2);
        this.f29363j.setGravity(16);
        this.f29363j.setTextSize(10.0f);
        this.f29363j.setSelected(true);
        this.f29363j.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.f29363j.setMarqueeRepeatLimit(-1);
        this.f29363j.setSingleLine(true);
        this.f29363j.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f29363j.setText(this.f29357d.getAppName());
        setBackgroundResource(getResources().getIdentifier("mbridge_shape_corners_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        addView(this.f29359f);
        addView(this.f29363j);
        b();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT));
        if (!TextUtils.isEmpty(this.f29357d.getBidToken())) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        a1.a(this, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, this.f29357d.getBidToken(), eVar, this.f29357d, this.f29355b).o(), this.f29357d.getLocalAllowTrackClick());
        setOnClickListener(this.f29373t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        TextView textView = this.f29365l;
        if (textView != null) {
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.width = u0.a(getContext(), 16.0f);
            layoutParams.height = u0.a(getContext(), 16.0f);
            this.f29365l.setLayoutParams(layoutParams);
            this.f29365l.setText("");
            this.f29365l.setSelected(true);
            this.f29365l.setBackgroundResource(getResources().getIdentifier("mbridge_splash_popview_close", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        }
    }

    private void a() {
        if (this.f29357d == null) {
            return;
        }
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        int i10 = this.f29356c;
        if (i10 == 1) {
            c();
        } else if (i10 == 2) {
            f();
        } else if (i10 == 3) {
            e();
        } else if (i10 != 4) {
        } else {
            d();
        }
    }

    private void a(String str, boolean z10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new b(z10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(CampaignEx campaignEx) {
        if (this.f29369p == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29355b);
            this.f29369p = aVar;
            aVar.a(this.f29370q);
        }
        campaignEx.setCampaignUnitId(this.f29355b);
        this.f29369p.a(campaignEx);
        if (!campaignEx.isReportClick()) {
            campaignEx.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f29358e;
        if (dVar != null) {
            dVar.a(new MBridgeIds(this.f29354a, this.f29355b));
            this.f29358e.a(new MBridgeIds(this.f29354a, this.f29355b), 6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(CampaignEx campaignEx) {
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f29355b);
    }

    public BaseSplashPopView(Context context) {
        super(context);
        this.f29356c = 1;
        this.f29366m = -1;
        this.f29367n = new Handler();
        this.f29368o = false;
        this.f29370q = new a();
        this.f29371r = new e();
        this.f29372s = new f();
        this.f29373t = new g();
        this.f29374u = new h();
        this.f29356c = 1;
        p0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29356c = 1;
        this.f29366m = -1;
        this.f29367n = new Handler();
        this.f29368o = false;
        this.f29370q = new a();
        this.f29371r = new e();
        this.f29372s = new f();
        this.f29373t = new g();
        this.f29374u = new h();
        this.f29356c = 1;
        p0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29356c = 1;
        this.f29366m = -1;
        this.f29367n = new Handler();
        this.f29368o = false;
        this.f29370q = new a();
        this.f29371r = new e();
        this.f29372s = new f();
        this.f29373t = new g();
        this.f29374u = new h();
        this.f29356c = 1;
        p0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }

    @RequiresApi(api = 21)
    public BaseSplashPopView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f29356c = 1;
        this.f29366m = -1;
        this.f29367n = new Handler();
        this.f29368o = false;
        this.f29370q = new a();
        this.f29371r = new e();
        this.f29372s = new f();
        this.f29373t = new g();
        this.f29374u = new h();
        this.f29356c = 1;
        p0.c("MBSplashPopView", "Please call setPopViewType() to init.");
    }
}
