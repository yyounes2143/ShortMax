package com.mbridge.msdk.video.dynview;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
/* compiled from: ViewOption.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Context f30670a;

    /* renamed from: b  reason: collision with root package name */
    private String f30671b;

    /* renamed from: c  reason: collision with root package name */
    private int f30672c;

    /* renamed from: d  reason: collision with root package name */
    private float f30673d;

    /* renamed from: e  reason: collision with root package name */
    private float f30674e;

    /* renamed from: f  reason: collision with root package name */
    private int f30675f;

    /* renamed from: g  reason: collision with root package name */
    private int f30676g;

    /* renamed from: h  reason: collision with root package name */
    private View f30677h;

    /* renamed from: i  reason: collision with root package name */
    private List<CampaignEx> f30678i;

    /* renamed from: j  reason: collision with root package name */
    private int f30679j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f30680k;

    /* renamed from: l  reason: collision with root package name */
    private List<String> f30681l;

    /* renamed from: m  reason: collision with root package name */
    private int f30682m;

    /* renamed from: n  reason: collision with root package name */
    private String f30683n;

    /* renamed from: o  reason: collision with root package name */
    private int f30684o;

    /* renamed from: p  reason: collision with root package name */
    private int f30685p;

    /* renamed from: q  reason: collision with root package name */
    private String f30686q;

    /* compiled from: ViewOption.java */
    /* loaded from: classes6.dex */
    public static class b implements InterfaceC0439c {

        /* renamed from: a  reason: collision with root package name */
        private Context f30687a;

        /* renamed from: b  reason: collision with root package name */
        private String f30688b;

        /* renamed from: c  reason: collision with root package name */
        private int f30689c;

        /* renamed from: d  reason: collision with root package name */
        private float f30690d;

        /* renamed from: e  reason: collision with root package name */
        private float f30691e;

        /* renamed from: f  reason: collision with root package name */
        private int f30692f;

        /* renamed from: g  reason: collision with root package name */
        private int f30693g;

        /* renamed from: h  reason: collision with root package name */
        private View f30694h;

        /* renamed from: i  reason: collision with root package name */
        private List<CampaignEx> f30695i;

        /* renamed from: j  reason: collision with root package name */
        private int f30696j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f30697k;

        /* renamed from: l  reason: collision with root package name */
        private List<String> f30698l;

        /* renamed from: m  reason: collision with root package name */
        private int f30699m;

        /* renamed from: n  reason: collision with root package name */
        private String f30700n;

        /* renamed from: o  reason: collision with root package name */
        private int f30701o;

        /* renamed from: p  reason: collision with root package name */
        private int f30702p = 1;

        /* renamed from: q  reason: collision with root package name */
        private String f30703q;

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public c build() {
            return new c(this);
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c fileDirs(List<String> list) {
            this.f30698l = list;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c orientation(int i10) {
            this.f30692f = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(Context context) {
            this.f30687a = context.getApplicationContext();
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c b(int i10) {
            this.f30689c = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c c(String str) {
            this.f30688b = str;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c d(int i10) {
            this.f30699m = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c e(int i10) {
            this.f30702p = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c f(int i10) {
            this.f30701o = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(float f10) {
            this.f30691e = f10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c b(float f10) {
            this.f30690d = f10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c c(int i10) {
            this.f30693g = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(View view) {
            this.f30694h = view;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c b(String str) {
            this.f30703q = str;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(List<CampaignEx> list) {
            this.f30695i = list;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(int i10) {
            this.f30696j = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(boolean z10) {
            this.f30697k = z10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.c.InterfaceC0439c
        public InterfaceC0439c a(String str) {
            this.f30700n = str;
            return this;
        }
    }

    /* compiled from: ViewOption.java */
    /* renamed from: com.mbridge.msdk.video.dynview.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0439c {
        InterfaceC0439c a(float f10);

        InterfaceC0439c a(int i10);

        InterfaceC0439c a(Context context);

        InterfaceC0439c a(View view);

        InterfaceC0439c a(String str);

        InterfaceC0439c a(List<CampaignEx> list);

        InterfaceC0439c a(boolean z10);

        InterfaceC0439c b(float f10);

        InterfaceC0439c b(int i10);

        InterfaceC0439c b(String str);

        c build();

        InterfaceC0439c c(int i10);

        InterfaceC0439c c(String str);

        InterfaceC0439c d(int i10);

        InterfaceC0439c e(int i10);

        InterfaceC0439c f(int i10);

        InterfaceC0439c fileDirs(List<String> list);

        InterfaceC0439c orientation(int i10);
    }

    public static b a() {
        return new b();
    }

    public List<CampaignEx> b() {
        return this.f30678i;
    }

    public Context c() {
        return this.f30670a;
    }

    public List<String> d() {
        return this.f30681l;
    }

    public int e() {
        return this.f30684o;
    }

    public String f() {
        return this.f30671b;
    }

    public int g() {
        return this.f30672c;
    }

    public int h() {
        return this.f30675f;
    }

    public View i() {
        return this.f30677h;
    }

    public int j() {
        return this.f30676g;
    }

    public float k() {
        return this.f30673d;
    }

    public int l() {
        return this.f30679j;
    }

    public float m() {
        return this.f30674e;
    }

    public String n() {
        return this.f30686q;
    }

    public int o() {
        return this.f30685p;
    }

    public boolean p() {
        return this.f30680k;
    }

    private c(b bVar) {
        this.f30674e = bVar.f30691e;
        this.f30673d = bVar.f30690d;
        this.f30675f = bVar.f30692f;
        this.f30676g = bVar.f30693g;
        this.f30670a = bVar.f30687a;
        this.f30671b = bVar.f30688b;
        this.f30672c = bVar.f30689c;
        this.f30677h = bVar.f30694h;
        this.f30678i = bVar.f30695i;
        this.f30679j = bVar.f30696j;
        this.f30680k = bVar.f30697k;
        this.f30681l = bVar.f30698l;
        this.f30682m = bVar.f30699m;
        this.f30683n = bVar.f30700n;
        this.f30684o = bVar.f30701o;
        this.f30685p = bVar.f30702p;
        this.f30686q = bVar.f30703q;
    }
}
