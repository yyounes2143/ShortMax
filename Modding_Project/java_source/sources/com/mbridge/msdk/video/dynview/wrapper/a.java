package com.mbridge.msdk.video.dynview.wrapper;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z;
import com.mbridge.msdk.video.dynview.shape.a;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: DataEnergizeWrapper.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: m  reason: collision with root package name */
    private static boolean f30848m = false;

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.b f30849a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Bitmap> f30850b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f30851c;

    /* renamed from: d  reason: collision with root package name */
    private String f30852d = "#FFFFFFFF";

    /* renamed from: e  reason: collision with root package name */
    private String f30853e = "#60000000";

    /* renamed from: f  reason: collision with root package name */
    private String f30854f = "#FF5F5F5F";

    /* renamed from: g  reason: collision with root package name */
    private String f30855g = "#90ECECEC";

    /* renamed from: h  reason: collision with root package name */
    private volatile long f30856h = 0;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.video.dynview.util.time.a f30857i = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f30858j = false;

    /* renamed from: k  reason: collision with root package name */
    private int f30859k = 0;

    /* renamed from: l  reason: collision with root package name */
    public com.mbridge.msdk.video.dynview.inter.a f30860l = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* renamed from: com.mbridge.msdk.video.dynview.wrapper.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0448a implements com.mbridge.msdk.video.dynview.util.time.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f30861a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30862b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignEx f30863c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Map f30864d;

        C0448a(TextView textView, String str, CampaignEx campaignEx, Map map) {
            this.f30861a = textView;
            this.f30862b = str;
            this.f30863c = campaignEx;
            this.f30864d = map;
        }

        @Override // com.mbridge.msdk.video.dynview.util.time.a
        public void onFinish() {
            this.f30863c.setShowType(com.mbridge.msdk.foundation.same.report.metrics.a.f27265c);
            a.this.b(this.f30864d);
        }

        @Override // com.mbridge.msdk.video.dynview.util.time.a
        public void onTick(long j10) {
            a.this.f30859k = (int) (j10 / 1000);
            this.f30861a.setText(com.mbridge.msdk.video.dynview.util.a.a(a.this.f30859k, this.f30861a.getContext()));
            a.this.f30856h++;
            if (!TextUtils.isEmpty(this.f30862b) && this.f30862b.equals("1")) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", "choseFromTwoHeartbeat");
                eVar.a("xtSecond", "countTimeForReport");
                eVar.a("autoPlayCountDownTime", "mLeftOverCountTime");
                com.mbridge.msdk.video.module.report.a.a("2000103", this.f30863c, eVar);
            }
        }
    }

    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    class c implements com.mbridge.msdk.video.dynview.inter.a {
        c() {
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void a() {
            if (a.this.f30858j && a.this.f30849a != null) {
                a.this.f30849a.a(a.this.f30859k * 1000, a.this.f30857i);
                a.this.f30858j = false;
            }
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void b() {
            if (a.this.f30849a != null) {
                a.this.f30849a.a();
                a.this.f30858j = true;
            }
        }

        @Override // com.mbridge.msdk.video.dynview.inter.a
        public void c() {
            if (a.this.f30849a != null) {
                a.this.f30849a.a();
                a.this.f30858j = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class d extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f30868b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f30869c;

        d(Map map, List list) {
            this.f30868b = map;
            this.f30869c = list;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (!a.this.f30851c) {
                a.this.f30851c = true;
                a.this.a(this.f30868b, this.f30869c, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class e extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f30871b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f30872c;

        e(Map map, List list) {
            this.f30871b = map;
            this.f30872c = list;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (!a.this.f30851c) {
                a.this.f30851c = true;
                a.this.a(this.f30871b, this.f30872c, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class f implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f30874a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f30875b;

        f(Map map, List list) {
            this.f30874a = map;
            this.f30875b = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            a.this.a(this.f30874a, this.f30875b, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class g implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f30877a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f30878b;

        g(Map map, List list) {
            this.f30877a = map;
            this.f30878b = list;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            a.this.a(this.f30877a, this.f30878b, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f30880a;

        h(Map map) {
            this.f30880a = map;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a.this.a(this.f30880a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class i implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30882a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f30883b;

        /* compiled from: DataEnergizeWrapper.java */
        /* renamed from: com.mbridge.msdk.video.dynview.wrapper.a$i$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0449a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f30885a;

            /* compiled from: DataEnergizeWrapper.java */
            /* renamed from: com.mbridge.msdk.video.dynview.wrapper.a$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class RunnableC0450a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Bitmap f30887a;

                RunnableC0450a(Bitmap bitmap) {
                    this.f30887a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    i.this.f30883b.setImageBitmap(this.f30887a);
                }
            }

            RunnableC0449a(Bitmap bitmap) {
                this.f30885a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    i.this.f30883b.post(new RunnableC0450a(z.a(this.f30885a, 10)));
                } catch (Exception e10) {
                    p0.b("DataEnergizeWrapper", e10.getMessage());
                }
            }
        }

        i(int i10, ImageView imageView) {
            this.f30882a = i10;
            this.f30883b = imageView;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            try {
                int a10 = h0.a(this.f30883b.getContext(), "mbridge_icon_play_bg", "drawable");
                this.f30883b.setBackgroundColor(Color.parseColor(a.this.f30854f));
                this.f30883b.setImageResource(a10);
                this.f30883b.setScaleType(ImageView.ScaleType.CENTER);
            } catch (Exception e10) {
                p0.a("DataEnergizeWrapper", e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null && !bitmap.isRecycled()) {
                int i10 = this.f30882a;
                if (i10 != 501 && i10 != 802) {
                    this.f30883b.setImageBitmap(bitmap);
                    return;
                }
                com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0449a(bitmap));
                return;
            }
            int a10 = h0.a(this.f30883b.getContext(), "mbridge_icon_play_bg", "drawable");
            this.f30883b.setBackgroundColor(Color.parseColor(a.this.f30854f));
            this.f30883b.setImageResource(a10);
            this.f30883b.setScaleType(ImageView.ScaleType.CENTER);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class k extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f30894b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f30895c;

        k(CampaignEx campaignEx, Map map) {
            this.f30894b = campaignEx;
            this.f30895c = map;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            if (!a.this.f30851c) {
                a.this.f30851c = true;
                this.f30894b.setShowType(com.mbridge.msdk.foundation.same.report.metrics.a.f27266d);
                a.this.b(this.f30895c);
            }
        }
    }

    public void c(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, com.mbridge.msdk.video.dynview.listener.e eVar) {
        try {
            if (this.f30850b == null) {
                this.f30850b = new HashMap();
            }
            List<CampaignEx> b10 = cVar.b();
            if (view.getContext() == null) {
                eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_CONTEXT);
                return;
            }
            if (map != null && map.containsKey("is_dy_success")) {
                f30848m = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            for (CampaignEx campaignEx : b10) {
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(f30848m);
                }
            }
            ListView listView = (ListView) view.findViewById(a(f30848m, "mbridge_order_view_lv"));
            GridView gridView = (GridView) view.findViewById(a(f30848m, "mbridge_order_view_h_lv"));
            ImageView imageView = (ImageView) view.findViewById(a(f30848m, "mbridge_order_view_iv_close"));
            com.mbridge.msdk.video.dynview.ordercamp.adapter.a aVar = new com.mbridge.msdk.video.dynview.ordercamp.adapter.a(b10);
            if (cVar.h() == 1) {
                if (listView != null) {
                    a(listView, cVar);
                    listView.setAdapter((ListAdapter) aVar);
                    listView.setOnItemClickListener(new f(map, b10));
                }
            } else if (gridView != null) {
                int m10 = (int) cVar.m();
                int size = m10 / b10.size();
                int i10 = size / 9;
                int i11 = i10 / 2;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) gridView.getLayoutParams();
                layoutParams.width = m10 - (i10 * 2);
                gridView.setLayoutParams(layoutParams);
                gridView.setColumnWidth((size - i10) - (i11 / 2));
                gridView.setHorizontalSpacing(i11);
                gridView.setStretchMode(0);
                gridView.setNumColumns(b10.size());
                gridView.setAdapter((ListAdapter) aVar);
                gridView.setOnItemClickListener(new g(map, b10));
            }
            if (imageView != null) {
                imageView.setOnClickListener(new h(map));
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        } catch (Exception unused) {
            if (eVar != null) {
                eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.foundation.feedback.a {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            if (a.this.f30849a != null) {
                a.this.f30849a.a();
                a.this.f30858j = true;
            }
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            if (a.this.f30858j && a.this.f30849a != null) {
                a.this.f30849a.a(a.this.f30859k * 1000, a.this.f30857i);
                a.this.f30858j = false;
            }
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            if (!a.this.f30858j || a.this.f30849a == null) {
                return;
            }
            a.this.f30849a.a(a.this.f30859k * 1000, a.this.f30857i);
            a.this.f30858j = false;
        }
    }

    public void b(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, com.mbridge.msdk.video.dynview.listener.e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        if (map != null && map.containsKey("is_dy_success")) {
            f30848m = ((Boolean) map.get("is_dy_success")).booleanValue();
        }
        boolean z10 = f30848m;
        LinearLayout linearLayout = z10 ? (LinearLayout) view.findViewById(a(z10, "mbridge_reward_heat_mllv")) : null;
        ImageView imageView = (ImageView) view.findViewById(a(f30848m, "mbridge_reward_icon_riv"));
        TextView textView = (TextView) view.findViewById(a(f30848m, "mbridge_reward_title_tv"));
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(a(f30848m, "mbridge_reward_stars_mllv"));
        TextView textView2 = (TextView) view.findViewById(a(f30848m, "mbridge_reward_click_tv"));
        ImageView imageView2 = (ImageView) view.findViewById(a(f30848m, "mbridge_videoview_bg"));
        TextView textView3 = (TextView) view.findViewById(a(f30848m, "mbridge_reward_desc_tv"));
        View view2 = (RelativeLayout) view.findViewById(a(f30848m, "mbridge_reward_bottom_layout"));
        List<View> arrayList = new ArrayList<>();
        List<CampaignEx> b10 = cVar.b();
        if (b10 != null && b10.size() > 0) {
            CampaignEx campaignEx = b10.get(0);
            if (campaignEx != null) {
                if (imageView != null) {
                    if (f30848m) {
                        if (imageView instanceof MBCusRoundImageView) {
                            ((MBCusRoundImageView) imageView).setCustomBorder(30, 30, 30, 30, 10, -1);
                        }
                    } else {
                        ((RoundImageView) imageView).setBorderRadius(10);
                    }
                    a(campaignEx.getIconUrl(), imageView);
                }
                if (textView != null) {
                    textView.setText(campaignEx.getAppName());
                }
                if (textView3 != null) {
                    textView3.setText(campaignEx.getAppDesc());
                }
                if (linearLayout2 != null) {
                    double rating = campaignEx.getRating();
                    if (rating <= 0.0d) {
                        rating = 5.0d;
                    }
                    if (f30848m) {
                        if (linearLayout2 instanceof MBStarLevelLayoutView) {
                            MBStarLevelLayoutView mBStarLevelLayoutView = (MBStarLevelLayoutView) linearLayout2;
                            mBStarLevelLayoutView.setRating((int) rating);
                            mBStarLevelLayoutView.setOrientation(0);
                        }
                        if (linearLayout instanceof MBHeatLevelLayoutView) {
                            ((MBHeatLevelLayoutView) linearLayout).setHeatCount(campaignEx.getNumberRating());
                        }
                    } else {
                        ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, campaignEx.getNumberRating());
                    }
                }
                if (textView2 != null) {
                    textView2.setText(campaignEx.getAdCall());
                }
                int l10 = cVar.l();
                if (l10 == 102 || l10 == 202 || l10 == 302) {
                    if (textView2 != null) {
                        arrayList.add(textView2);
                    }
                } else if (l10 == 802) {
                    if (imageView != null) {
                        arrayList.add(imageView);
                    }
                    if (textView2 != null) {
                        arrayList.add(textView2);
                    }
                    a(imageView2, campaignEx.getImageUrl(), l10);
                } else if (l10 != 902) {
                    if (l10 != 904) {
                        if (l10 == 5002010) {
                            if (cVar.p() && view2 != null && view2.getVisibility() == 0) {
                                arrayList.add(view2);
                            } else {
                                if (imageView != null) {
                                    arrayList.add(imageView);
                                }
                                if (textView2 != null) {
                                    arrayList.add(textView2);
                                }
                            }
                        }
                    } else if (cVar.p()) {
                        arrayList.add(view);
                    }
                } else if (TextUtils.isEmpty(cVar.n()) || !cVar.n().equals("dsp") || !TextUtils.isEmpty(campaignEx.getClickURL())) {
                    arrayList.add(view);
                }
                eVar.a(view, arrayList);
                return;
            }
            eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        eVar.a(com.mbridge.msdk.video.dynview.error.a.CAMPAIGNEX_IS_NULL);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.video.dynview.c r35, android.view.View r36, java.util.Map r37, com.mbridge.msdk.video.dynview.listener.e r38) {
        /*
            Method dump skipped, instructions count: 828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.wrapper.a.a(com.mbridge.msdk.video.dynview.c, android.view.View, java.util.Map, com.mbridge.msdk.video.dynview.listener.e):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataEnergizeWrapper.java */
    /* loaded from: classes6.dex */
    public class j implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f30889a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30890b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.video.dynview.c f30891c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ View f30892d;

        j(ImageView imageView, String str, com.mbridge.msdk.video.dynview.c cVar, View view) {
            this.f30889a = imageView;
            this.f30890b = str;
            this.f30891c = cVar;
            this.f30892d = view;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            ImageView imageView;
            if (bitmap != null && !bitmap.isRecycled() && (imageView = this.f30889a) != null) {
                imageView.setImageBitmap(bitmap);
                if (a.this.f30850b != null) {
                    a.this.f30850b.put(SameMD5.getMD5(this.f30890b), bitmap);
                    a.this.a(this.f30891c, this.f30892d);
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map map) {
        if (map != null) {
            try {
                if (map.containsKey("choice_one_callback") && (map.get("choice_one_callback") instanceof com.mbridge.msdk.video.dynview.listener.d)) {
                    ((com.mbridge.msdk.video.dynview.listener.d) map.get("choice_one_callback")).a();
                    b();
                }
            } catch (Exception e10) {
                p0.b("DataEnergizeWrapper", e10.getMessage());
            }
        }
    }

    private void b(com.mbridge.msdk.video.dynview.c cVar, View view) {
        a.b a10 = com.mbridge.msdk.video.dynview.shape.a.a();
        a10.a(cVar.h()).a(true);
        if (cVar.h() == 2) {
            if (cVar.m() > cVar.k()) {
                a10.b(cVar.m()).a(cVar.k());
            } else {
                a10.b(cVar.k()).a(cVar.m());
            }
        } else {
            a10.b(cVar.m()).a(cVar.k());
        }
        if (view.getBackground() == null) {
            view.setBackground(a10.a());
        }
    }

    private void b() {
        com.mbridge.msdk.video.dynview.util.draw.a.a().b();
        com.mbridge.msdk.video.dynview.util.time.b bVar = this.f30849a;
        if (bVar != null) {
            bVar.a();
            this.f30849a = null;
        }
        com.mbridge.msdk.video.dynview.energize.a.a().f30710a = null;
        if (this.f30860l != null) {
            this.f30860l = null;
        }
        Map<String, Bitmap> map = this.f30850b;
        if (map != null) {
            if (map.entrySet() != null) {
                try {
                    Iterator<Map.Entry<String, Bitmap>> it = this.f30850b.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, Bitmap> next = it.next();
                        if (next != null && next.getValue() != null && !next.getValue().isRecycled()) {
                            next.getValue().recycle();
                        }
                        it.remove();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f30850b.clear();
        }
    }

    public void a(com.mbridge.msdk.video.dynview.c cVar, View view, com.mbridge.msdk.video.dynview.listener.e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        try {
            ImageView imageView = (ImageView) view.findViewById(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_iv_adbanner_bg", "id"));
            if (imageView != null) {
                imageView.setBackgroundColor(Color.parseColor(this.f30855g));
            }
            ImageView imageView2 = (ImageView) view.findViewById(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_iv_adbanner", "id"));
            if (imageView2 != null) {
                imageView2.setBackgroundColor(Color.parseColor(this.f30855g));
            }
            eVar.a(view, new ArrayList());
        } catch (Exception e10) {
            p0.a("DataEnergizeWrapper", e10.getMessage());
            eVar.a(com.mbridge.msdk.video.dynview.error.a.NOT_FOUND_VIEWOPTION);
        }
    }

    private void a(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        a(imageView, str, -1);
    }

    private void a(ImageView imageView, String str, int i10) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new i(i10, imageView));
    }

    private void a(String str, ImageView imageView, com.mbridge.msdk.video.dynview.c cVar, View view) {
        com.mbridge.msdk.foundation.same.image.b.a(imageView.getContext()).a(str, new j(imageView, str, cVar, view));
        try {
            Bitmap a10 = a();
            if (a10 == null || a10.isRecycled()) {
                return;
            }
            b(cVar, view);
        } catch (Exception e10) {
            p0.b("DataEnergizeWrapper", e10.getMessage());
        }
    }

    private void a(String str, Context context, View view, int i10, Map map, CampaignEx campaignEx) {
        String a10 = b1.a(str, "cltp");
        String a11 = b1.a(str, "xt");
        long parseLong = !TextUtils.isEmpty(a10) ? Long.parseLong(a10) : 0L;
        if (parseLong != 0) {
            if (map != null && map.containsKey("is_dy_success")) {
                f30848m = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            TextView textView = (TextView) view.findViewById(a(f30848m, "mbridge_choice_one_countdown_tv"));
            if (textView != null) {
                textView.setTextSize(11.0f);
                textView.setTextColor(Color.parseColor(this.f30852d));
                String str2 = this.f30853e;
                com.mbridge.msdk.video.dynview.util.drawable.a.a(textView, 1, 12, str2, str2);
                textView.setVisibility(0);
                textView.setOnClickListener(new k(campaignEx, map));
                this.f30857i = new C0448a(textView, a11, campaignEx, map);
                com.mbridge.msdk.video.dynview.util.time.b a12 = new com.mbridge.msdk.video.dynview.util.time.b().b(parseLong * 1000).a(1000L).a(this.f30857i);
                this.f30849a = a12;
                a12.c();
            }
            ImageView imageView = (ImageView) view.findViewById(a(f30848m, "mbridge_iv_link"));
            if (campaignEx == null) {
                return;
            }
            if (campaignEx.getAdchoice() != null) {
                campaignEx.getAdchoice().g("");
            }
            u0.a(4, imageView, campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), false, new b());
        }
    }

    private void a(ListView listView, com.mbridge.msdk.video.dynview.c cVar) {
        if (listView == null || cVar == null) {
            return;
        }
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) listView.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            layoutParams.height = -1;
            int a10 = u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
            int k10 = (int) ((cVar.k() - u0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 720.0f)) / 2.0f);
            layoutParams.setMargins(a10, k10, a10, k10);
            listView.setLayoutParams(layoutParams);
        } catch (Exception e10) {
            p0.b("DataEnergizeWrapper", e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map map, List<CampaignEx> list, int i10) {
        if (map == null || list == null || list.size() <= 1) {
            return;
        }
        if (map.containsKey("choice_one_callback") && (map.get("choice_one_callback") instanceof com.mbridge.msdk.video.dynview.listener.d)) {
            com.mbridge.msdk.video.dynview.listener.d dVar = (com.mbridge.msdk.video.dynview.listener.d) map.get("choice_one_callback");
            if (dVar != null) {
                dVar.a(list.get(i10));
                try {
                    CampaignEx campaignEx = list.get(i10);
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("click", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    eVar.a(CrashHianalyticsData.TIME, Long.valueOf(this.f30856h));
                    eVar.a("choose_cid", campaignEx.getId());
                    eVar.a("position", Integer.valueOf(i10));
                    eVar.a("type", "choseFromTwoSelect");
                    com.mbridge.msdk.video.module.report.a.a("2000103", campaignEx, eVar);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                    }
                }
            }
            b();
        } else if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.listener.c)) {
            com.mbridge.msdk.video.dynview.listener.c cVar = (com.mbridge.msdk.video.dynview.listener.c) map.get("order_view_callback");
            if (cVar != null) {
                cVar.a(list.get(i10), i10);
            }
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map map) {
        if (map != null) {
            try {
                if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.listener.c)) {
                    ((com.mbridge.msdk.video.dynview.listener.c) map.get("order_view_callback")).close();
                    b();
                }
            } catch (Exception e10) {
                p0.b("DataEnergizeWrapper", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.video.dynview.c cVar, View view) {
        Map<String, Bitmap> map = this.f30850b;
        if (map == null || map.size() <= 1) {
            return;
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(this.f30850b, cVar, view);
    }

    private int a(boolean z10, String str) {
        try {
            if (z10) {
                if (TextUtils.isEmpty(str)) {
                    return -1;
                }
                return str.hashCode();
            }
            return h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
        } catch (Exception e10) {
            p0.b("DataEnergizeWrapper", e10.getMessage());
            return -1;
        }
    }

    private Bitmap a() {
        Bitmap bitmap = null;
        try {
            bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_4444);
            bitmap.eraseColor(Color.parseColor(this.f30855g));
            return bitmap;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return bitmap;
            }
            return bitmap;
        }
    }
}
