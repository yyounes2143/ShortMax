package com.mbridge.msdk.video.dynview.util.draw;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.z;
import com.mbridge.msdk.video.dynview.c;
import com.mbridge.msdk.video.dynview.shape.a;
import java.util.List;
import java.util.Map;
/* compiled from: ChoiceOneDrawBitBg.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f30804d;

    /* renamed from: a  reason: collision with root package name */
    private View f30805a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f30806b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f30807c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChoiceOneDrawBitBg.java */
    /* renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class RunnableC0446a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f30808a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f30809b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ float f30810c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f30811d;

        /* compiled from: ChoiceOneDrawBitBg.java */
        /* renamed from: com.mbridge.msdk.video.dynview.util.draw.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0447a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a.b f30813a;

            RunnableC0447a(a.b bVar) {
                this.f30813a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f30805a != null && this.f30813a.a() != null) {
                    a.this.f30805a.setBackground(this.f30813a.a());
                }
            }
        }

        RunnableC0446a(Bitmap bitmap, int i10, float f10, float f11) {
            this.f30808a = bitmap;
            this.f30809b = i10;
            this.f30810c = f10;
            this.f30811d = f11;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Bitmap a10 = z.a(this.f30808a, 10);
                Bitmap a11 = z.a(this.f30808a, 10);
                a.b a12 = com.mbridge.msdk.video.dynview.shape.a.a();
                a12.a(this.f30809b).b(a10).a(a11);
                if (this.f30809b == 2) {
                    float f10 = this.f30810c;
                    float f11 = this.f30811d;
                    if (f10 > f11) {
                        a12.b(f10).a(this.f30811d);
                    } else {
                        a12.b(f11).a(this.f30810c);
                    }
                } else {
                    a12.b(this.f30810c).a(this.f30811d);
                }
                if (a.this.f30805a != null) {
                    a.this.f30805a.post(new RunnableC0447a(a12));
                }
            } catch (Exception e10) {
                p0.b("ChoiceOneDrawBitBg", e10.getMessage());
            }
        }
    }

    private a() {
    }

    public void b() {
        if (this.f30805a != null) {
            this.f30805a = null;
        }
        Bitmap bitmap = this.f30806b;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f30806b.recycle();
            this.f30806b = null;
        }
        Bitmap bitmap2 = this.f30807c;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.f30807c.recycle();
            this.f30807c = null;
        }
    }

    public static a a() {
        a aVar;
        if (f30804d == null) {
            synchronized (a.class) {
                try {
                    if (f30804d == null) {
                        f30804d = new a();
                    }
                    aVar = f30804d;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return aVar;
        }
        return f30804d;
    }

    public void a(Map<String, Bitmap> map, c cVar, View view) {
        if (view == null || cVar == null || map == null || map.size() == 0 || map.size() < 2 || cVar.b() == null || cVar.b().size() < 2) {
            return;
        }
        this.f30805a = view;
        int h10 = cVar.h();
        float m10 = cVar.m();
        float k10 = cVar.k();
        try {
            List<CampaignEx> b10 = cVar.b();
            String md5 = b10.get(0) != null ? SameMD5.getMD5(b10.get(0).getImageUrl()) : "";
            String md52 = b10.get(1) != null ? SameMD5.getMD5(b10.get(1).getImageUrl()) : "";
            Bitmap bitmap = (TextUtils.isEmpty(md5) || !map.containsKey(md5)) ? null : map.get(md5);
            Bitmap bitmap2 = (TextUtils.isEmpty(md52) || !map.containsKey(md52)) ? null : map.get(md52);
            if (bitmap == null || bitmap.isRecycled() || bitmap2 == null || bitmap2.isRecycled()) {
                return;
            }
            a(h10, m10, k10, bitmap, bitmap2);
        } catch (Exception e10) {
            p0.b("ChoiceOneDrawBitBg", e10.getMessage());
        }
    }

    private synchronized void a(int i10, float f10, float f11, Bitmap bitmap, Bitmap bitmap2) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new RunnableC0446a(bitmap, i10, f10, f11));
        } catch (Exception e10) {
            p0.a("ChoiceOneDrawBitBg", e10.getMessage());
        }
    }
}
