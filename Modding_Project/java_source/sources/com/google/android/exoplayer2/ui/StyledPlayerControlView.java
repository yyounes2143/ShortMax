package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.u1;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.y0;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class StyledPlayerControlView extends FrameLayout {

    /* renamed from: x0  reason: collision with root package name */
    private static final float[] f18666x0;
    @Nullable
    private final View A;
    @Nullable
    private final View B;
    @Nullable
    private final TextView C;
    @Nullable
    private final TextView D;
    @Nullable
    private final y0 E;
    private final StringBuilder F;
    private final Formatter G;
    private final u1.b H;
    private final u1.d I;
    private final Runnable J;
    private final Drawable K;
    private final Drawable L;
    private final Drawable M;
    private final String N;
    private final String O;
    private final String P;
    private final Drawable Q;
    private final Drawable R;
    private final float S;
    private final float T;
    private final String U;
    private final String V;
    private final Drawable W;

    /* renamed from: a  reason: collision with root package name */
    private final t0 f18667a;

    /* renamed from: a0  reason: collision with root package name */
    private final Drawable f18668a0;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f18669b;

    /* renamed from: b0  reason: collision with root package name */
    private final String f18670b0;

    /* renamed from: c  reason: collision with root package name */
    private final c f18671c;

    /* renamed from: c0  reason: collision with root package name */
    private final String f18672c0;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f18673d;

    /* renamed from: d0  reason: collision with root package name */
    private final Drawable f18674d0;

    /* renamed from: e  reason: collision with root package name */
    private final RecyclerView f18675e;

    /* renamed from: e0  reason: collision with root package name */
    private final Drawable f18676e0;

    /* renamed from: f  reason: collision with root package name */
    private final h f18677f;

    /* renamed from: f0  reason: collision with root package name */
    private final String f18678f0;

    /* renamed from: g  reason: collision with root package name */
    private final e f18679g;

    /* renamed from: g0  reason: collision with root package name */
    private final String f18680g0;

    /* renamed from: h  reason: collision with root package name */
    private final j f18681h;
    @Nullable

    /* renamed from: h0  reason: collision with root package name */
    private l1 f18682h0;

    /* renamed from: i  reason: collision with root package name */
    private final b f18683i;
    @Nullable

    /* renamed from: i0  reason: collision with root package name */
    private d f18684i0;

    /* renamed from: j  reason: collision with root package name */
    private final z0 f18685j;

    /* renamed from: j0  reason: collision with root package name */
    private boolean f18686j0;

    /* renamed from: k  reason: collision with root package name */
    private final PopupWindow f18687k;

    /* renamed from: k0  reason: collision with root package name */
    private boolean f18688k0;

    /* renamed from: l  reason: collision with root package name */
    private final int f18689l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f18690l0;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final View f18691m;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f18692m0;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final View f18693n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f18694n0;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final View f18695o;

    /* renamed from: o0  reason: collision with root package name */
    private int f18696o0;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final View f18697p;

    /* renamed from: p0  reason: collision with root package name */
    private int f18698p0;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final View f18699q;

    /* renamed from: q0  reason: collision with root package name */
    private int f18700q0;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final TextView f18701r;

    /* renamed from: r0  reason: collision with root package name */
    private long[] f18702r0;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final TextView f18703s;

    /* renamed from: s0  reason: collision with root package name */
    private boolean[] f18704s0;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final ImageView f18705t;

    /* renamed from: t0  reason: collision with root package name */
    private long[] f18706t0;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private final ImageView f18707u;

    /* renamed from: u0  reason: collision with root package name */
    private boolean[] f18708u0;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private final View f18709v;

    /* renamed from: v0  reason: collision with root package name */
    private long f18710v0;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final ImageView f18711w;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f18712w0;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f18713x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private final ImageView f18714y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private final View f18715z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class b extends l {
        private b() {
            super();
        }

        private boolean i(z6.f0 f0Var) {
            for (int i10 = 0; i10 < this.f18736i.size(); i10++) {
                if (f0Var.f71391y.containsKey(this.f18736i.get(i10).f18733a.b())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(View view) {
            if (StyledPlayerControlView.this.f18682h0 == null) {
                return;
            }
            ((l1) b7.s0.j(StyledPlayerControlView.this.f18682h0)).D(StyledPlayerControlView.this.f18682h0.h().a().B(1).J(1, false).A());
            StyledPlayerControlView.this.f18677f.c(1, StyledPlayerControlView.this.getResources().getString(s.f18924w));
            StyledPlayerControlView.this.f18687k.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void e(i iVar) {
            int i10;
            iVar.f18730c.setText(s.f18924w);
            boolean i11 = i(((l1) b7.a.e(StyledPlayerControlView.this.f18682h0)).h());
            View view = iVar.f18731d;
            if (i11) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            view.setVisibility(i10);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.b.this.k(view2);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void g(String str) {
            StyledPlayerControlView.this.f18677f.c(1, str);
        }

        public void j(List<k> list) {
            this.f18736i = list;
            z6.f0 h10 = ((l1) b7.a.e(StyledPlayerControlView.this.f18682h0)).h();
            if (list.isEmpty()) {
                StyledPlayerControlView.this.f18677f.c(1, StyledPlayerControlView.this.getResources().getString(s.f18925x));
            } else if (!i(h10)) {
                StyledPlayerControlView.this.f18677f.c(1, StyledPlayerControlView.this.getResources().getString(s.f18924w));
            } else {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    k kVar = list.get(i10);
                    if (kVar.a()) {
                        StyledPlayerControlView.this.f18677f.c(1, kVar.f18735c);
                        return;
                    }
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    private final class c implements l1.d, y0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.l1.d
        public void X(l1 l1Var, l1.c cVar) {
            if (cVar.b(4, 5)) {
                StyledPlayerControlView.this.y0();
            }
            if (cVar.b(4, 5, 7)) {
                StyledPlayerControlView.this.A0();
            }
            if (cVar.a(8)) {
                StyledPlayerControlView.this.B0();
            }
            if (cVar.a(9)) {
                StyledPlayerControlView.this.E0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                StyledPlayerControlView.this.x0();
            }
            if (cVar.b(11, 0)) {
                StyledPlayerControlView.this.F0();
            }
            if (cVar.a(12)) {
                StyledPlayerControlView.this.z0();
            }
            if (cVar.a(2)) {
                StyledPlayerControlView.this.G0();
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void i(y0 y0Var, long j10, boolean z10) {
            StyledPlayerControlView.this.f18694n0 = false;
            if (!z10 && StyledPlayerControlView.this.f18682h0 != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.p0(styledPlayerControlView.f18682h0, j10);
            }
            StyledPlayerControlView.this.f18667a.W();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l1 l1Var = StyledPlayerControlView.this.f18682h0;
            if (l1Var == null) {
                return;
            }
            StyledPlayerControlView.this.f18667a.W();
            if (StyledPlayerControlView.this.f18693n == view) {
                l1Var.t();
            } else if (StyledPlayerControlView.this.f18691m == view) {
                l1Var.o();
            } else if (StyledPlayerControlView.this.f18697p == view) {
                if (l1Var.getPlaybackState() != 4) {
                    l1Var.m();
                }
            } else if (StyledPlayerControlView.this.f18699q == view) {
                l1Var.y();
            } else if (StyledPlayerControlView.this.f18695o == view) {
                StyledPlayerControlView.this.X(l1Var);
            } else if (StyledPlayerControlView.this.f18705t == view) {
                l1Var.setRepeatMode(b7.i0.a(l1Var.getRepeatMode(), StyledPlayerControlView.this.f18700q0));
            } else if (StyledPlayerControlView.this.f18707u == view) {
                l1Var.setShuffleModeEnabled(!l1Var.getShuffleModeEnabled());
            } else if (StyledPlayerControlView.this.f18715z == view) {
                StyledPlayerControlView.this.f18667a.V();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.Y(styledPlayerControlView.f18677f, StyledPlayerControlView.this.f18715z);
            } else if (StyledPlayerControlView.this.A == view) {
                StyledPlayerControlView.this.f18667a.V();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.Y(styledPlayerControlView2.f18679g, StyledPlayerControlView.this.A);
            } else if (StyledPlayerControlView.this.B == view) {
                StyledPlayerControlView.this.f18667a.V();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.Y(styledPlayerControlView3.f18683i, StyledPlayerControlView.this.B);
            } else if (StyledPlayerControlView.this.f18711w == view) {
                StyledPlayerControlView.this.f18667a.V();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.Y(styledPlayerControlView4.f18681h, StyledPlayerControlView.this.f18711w);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (StyledPlayerControlView.this.f18712w0) {
                StyledPlayerControlView.this.f18667a.W();
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void v(y0 y0Var, long j10) {
            if (StyledPlayerControlView.this.D != null) {
                StyledPlayerControlView.this.D.setText(b7.s0.b0(StyledPlayerControlView.this.F, StyledPlayerControlView.this.G, j10));
            }
        }

        @Override // com.google.android.exoplayer2.ui.y0.a
        public void x(y0 y0Var, long j10) {
            StyledPlayerControlView.this.f18694n0 = true;
            if (StyledPlayerControlView.this.D != null) {
                StyledPlayerControlView.this.D.setText(b7.s0.b0(StyledPlayerControlView.this.F, StyledPlayerControlView.this.G, j10));
            }
            StyledPlayerControlView.this.f18667a.V();
        }
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public interface d {
        void x(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class e extends RecyclerView.Adapter<i> {

        /* renamed from: i  reason: collision with root package name */
        private final String[] f18718i;

        /* renamed from: j  reason: collision with root package name */
        private final float[] f18719j;

        /* renamed from: k  reason: collision with root package name */
        private int f18720k;

        public e(String[] strArr, float[] fArr) {
            this.f18718i = strArr;
            this.f18719j = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(int i10, View view) {
            if (i10 != this.f18720k) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f18719j[i10]);
            }
            StyledPlayerControlView.this.f18687k.dismiss();
        }

        public String b() {
            return this.f18718i[this.f18720k];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, final int i10) {
            String[] strArr = this.f18718i;
            if (i10 < strArr.length) {
                iVar.f18730c.setText(strArr[i10]);
            }
            if (i10 == this.f18720k) {
                iVar.itemView.setSelected(true);
                iVar.f18731d.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f18731d.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StyledPlayerControlView.e.this.c(i10, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.f18897h, viewGroup, false));
        }

        public void f(float f10) {
            int i10 = 0;
            float f11 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.f18719j;
                if (i10 < fArr.length) {
                    float abs = Math.abs(f10 - fArr[i10]);
                    if (abs < f11) {
                        i11 = i10;
                        f11 = abs;
                    }
                    i10++;
                } else {
                    this.f18720k = i11;
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f18718i.length;
        }
    }

    /* loaded from: classes4.dex */
    public interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class g extends RecyclerView.ViewHolder {

        /* renamed from: c  reason: collision with root package name */
        private final TextView f18722c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f18723d;

        /* renamed from: e  reason: collision with root package name */
        private final ImageView f18724e;

        public g(View view) {
            super(view);
            if (b7.s0.f2506a < 26) {
                view.setFocusable(true);
            }
            this.f18722c = (TextView) view.findViewById(o.f18880u);
            this.f18723d = (TextView) view.findViewById(o.P);
            this.f18724e = (ImageView) view.findViewById(o.f18879t);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.g.this.g(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(View view) {
            StyledPlayerControlView.this.l0(getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class h extends RecyclerView.Adapter<g> {

        /* renamed from: i  reason: collision with root package name */
        private final String[] f18726i;

        /* renamed from: j  reason: collision with root package name */
        private final String[] f18727j;

        /* renamed from: k  reason: collision with root package name */
        private final Drawable[] f18728k;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f18726i = strArr;
            this.f18727j = new String[strArr.length];
            this.f18728k = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(g gVar, int i10) {
            gVar.f18722c.setText(this.f18726i[i10]);
            if (this.f18727j[i10] == null) {
                gVar.f18723d.setVisibility(8);
            } else {
                gVar.f18723d.setText(this.f18727j[i10]);
            }
            if (this.f18728k[i10] == null) {
                gVar.f18724e.setVisibility(8);
            } else {
                gVar.f18724e.setImageDrawable(this.f18728k[i10]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.f18896g, viewGroup, false));
        }

        public void c(int i10, String str) {
            this.f18727j[i10] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f18726i.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class i extends RecyclerView.ViewHolder {

        /* renamed from: c  reason: collision with root package name */
        public final TextView f18730c;

        /* renamed from: d  reason: collision with root package name */
        public final View f18731d;

        public i(View view) {
            super(view);
            if (b7.s0.f2506a < 26) {
                view.setFocusable(true);
            }
            this.f18730c = (TextView) view.findViewById(o.S);
            this.f18731d = view.findViewById(o.f18867h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        public final v1.a f18733a;

        /* renamed from: b  reason: collision with root package name */
        public final int f18734b;

        /* renamed from: c  reason: collision with root package name */
        public final String f18735c;

        public k(v1 v1Var, int i10, int i11, String str) {
            this.f18733a = v1Var.b().get(i10);
            this.f18734b = i11;
            this.f18735c = str;
        }

        public boolean a() {
            return this.f18733a.g(this.f18734b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public abstract class l extends RecyclerView.Adapter<i> {

        /* renamed from: i  reason: collision with root package name */
        protected List<k> f18736i = new ArrayList();

        protected l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(l1 l1Var, n6.u uVar, k kVar, View view) {
            l1Var.D(l1Var.h().a().G(new z6.d0(uVar, ImmutableList.B(Integer.valueOf(kVar.f18734b)))).J(kVar.f18733a.d(), false).A());
            g(kVar.f18735c);
            StyledPlayerControlView.this.f18687k.dismiss();
        }

        protected void b() {
            this.f18736i = Collections.emptyList();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i10) {
            final l1 l1Var = StyledPlayerControlView.this.f18682h0;
            if (l1Var == null) {
                return;
            }
            if (i10 == 0) {
                e(iVar);
                return;
            }
            boolean z10 = true;
            final k kVar = this.f18736i.get(i10 - 1);
            final n6.u b10 = kVar.f18733a.b();
            int i11 = 0;
            if (l1Var.h().f71391y.get(b10) == null || !kVar.a()) {
                z10 = false;
            }
            iVar.f18730c.setText(kVar.f18735c);
            View view = iVar.f18731d;
            if (!z10) {
                i11 = 4;
            }
            view.setVisibility(i11);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.l.this.c(l1Var, b10, kVar, view2);
                }
            });
        }

        protected abstract void e(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(q.f18897h, viewGroup, false));
        }

        protected abstract void g(String str);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f18736i.isEmpty()) {
                return 0;
            }
            return this.f18736i.size() + 1;
        }
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public interface m {
        void i(int i10);
    }

    static {
        o5.z.a("goog.exo.ui");
        f18666x0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        long j10;
        long j11;
        int playbackState;
        long j12;
        if (h0() && this.f18688k0) {
            l1 l1Var = this.f18682h0;
            if (l1Var != null) {
                j10 = this.f18710v0 + l1Var.getContentPosition();
                j11 = this.f18710v0 + l1Var.l();
            } else {
                j10 = 0;
                j11 = 0;
            }
            TextView textView = this.D;
            if (textView != null && !this.f18694n0) {
                textView.setText(b7.s0.b0(this.F, this.G, j10));
            }
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setPosition(j10);
                this.E.setBufferedPosition(j11);
            }
            removeCallbacks(this.J);
            if (l1Var == null) {
                playbackState = 1;
            } else {
                playbackState = l1Var.getPlaybackState();
            }
            long j13 = 1000;
            if (l1Var != null && l1Var.isPlaying()) {
                y0 y0Var2 = this.E;
                if (y0Var2 != null) {
                    j12 = y0Var2.getPreferredUpdateDelay();
                } else {
                    j12 = 1000;
                }
                long min = Math.min(j12, 1000 - (j10 % 1000));
                float f10 = l1Var.getPlaybackParameters().f17821a;
                if (f10 > 0.0f) {
                    j13 = ((float) min) / f10;
                }
                postDelayed(this.J, b7.s0.q(j13, this.f18698p0, 1000L));
            } else if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.J, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        ImageView imageView;
        if (h0() && this.f18688k0 && (imageView = this.f18705t) != null) {
            if (this.f18700q0 == 0) {
                t0(false, imageView);
                return;
            }
            l1 l1Var = this.f18682h0;
            if (l1Var == null) {
                t0(false, imageView);
                this.f18705t.setImageDrawable(this.K);
                this.f18705t.setContentDescription(this.N);
                return;
            }
            t0(true, imageView);
            int repeatMode = l1Var.getRepeatMode();
            if (repeatMode != 0) {
                if (repeatMode != 1) {
                    if (repeatMode == 2) {
                        this.f18705t.setImageDrawable(this.M);
                        this.f18705t.setContentDescription(this.P);
                        return;
                    }
                    return;
                }
                this.f18705t.setImageDrawable(this.L);
                this.f18705t.setContentDescription(this.O);
                return;
            }
            this.f18705t.setImageDrawable(this.K);
            this.f18705t.setContentDescription(this.N);
        }
    }

    private void C0() {
        long j10;
        l1 l1Var = this.f18682h0;
        if (l1Var != null) {
            j10 = l1Var.A();
        } else {
            j10 = 5000;
        }
        int i10 = (int) (j10 / 1000);
        TextView textView = this.f18703s;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
        View view = this.f18699q;
        if (view != null) {
            view.setContentDescription(this.f18669b.getQuantityString(r.f18900b, i10, Integer.valueOf(i10)));
        }
    }

    private void D0() {
        this.f18675e.measure(0, 0);
        this.f18687k.setWidth(Math.min(this.f18675e.getMeasuredWidth(), getWidth() - (this.f18689l * 2)));
        this.f18687k.setHeight(Math.min(getHeight() - (this.f18689l * 2), this.f18675e.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (h0() && this.f18688k0 && (imageView = this.f18707u) != null) {
            l1 l1Var = this.f18682h0;
            if (!this.f18667a.A(imageView)) {
                t0(false, this.f18707u);
            } else if (l1Var == null) {
                t0(false, this.f18707u);
                this.f18707u.setImageDrawable(this.R);
                this.f18707u.setContentDescription(this.V);
            } else {
                t0(true, this.f18707u);
                ImageView imageView2 = this.f18707u;
                if (l1Var.getShuffleModeEnabled()) {
                    drawable = this.Q;
                } else {
                    drawable = this.R;
                }
                imageView2.setImageDrawable(drawable);
                ImageView imageView3 = this.f18707u;
                if (l1Var.getShuffleModeEnabled()) {
                    str = this.U;
                } else {
                    str = this.V;
                }
                imageView3.setContentDescription(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0() {
        boolean z10;
        int i10;
        int i11;
        int i12;
        u1.d dVar;
        int length;
        l1 l1Var = this.f18682h0;
        if (l1Var == null) {
            return;
        }
        boolean z11 = true;
        if (this.f18690l0 && T(l1Var.getCurrentTimeline(), this.I)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f18692m0 = z10;
        long j10 = 0;
        this.f18710v0 = 0L;
        u1 currentTimeline = l1Var.getCurrentTimeline();
        if (!currentTimeline.u()) {
            int x10 = l1Var.x();
            boolean z12 = this.f18692m0;
            if (z12) {
                i11 = 0;
            } else {
                i11 = x10;
            }
            if (z12) {
                i12 = currentTimeline.t() - 1;
            } else {
                i12 = x10;
            }
            long j11 = 0;
            i10 = 0;
            while (true) {
                if (i11 > i12) {
                    break;
                }
                if (i11 == x10) {
                    this.f18710v0 = b7.s0.Q0(j11);
                }
                currentTimeline.r(i11, this.I);
                u1.d dVar2 = this.I;
                if (dVar2.f18563n == -9223372036854775807L) {
                    b7.a.g(this.f18692m0 ^ z11);
                    break;
                }
                int i13 = dVar2.f18564o;
                while (true) {
                    dVar = this.I;
                    if (i13 <= dVar.f18565p) {
                        currentTimeline.j(i13, this.H);
                        int f10 = this.H.f();
                        for (int r10 = this.H.r(); r10 < f10; r10++) {
                            long i14 = this.H.i(r10);
                            if (i14 == Long.MIN_VALUE) {
                                long j12 = this.H.f18538d;
                                if (j12 != -9223372036854775807L) {
                                    i14 = j12;
                                }
                            }
                            long q10 = i14 + this.H.q();
                            if (q10 >= 0) {
                                long[] jArr = this.f18702r0;
                                if (i10 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.f18702r0 = Arrays.copyOf(jArr, length);
                                    this.f18704s0 = Arrays.copyOf(this.f18704s0, length);
                                }
                                this.f18702r0[i10] = b7.s0.Q0(j11 + q10);
                                this.f18704s0[i10] = this.H.s(r10);
                                i10++;
                            }
                        }
                        i13++;
                    }
                }
                j11 += dVar.f18563n;
                i11++;
                z11 = true;
            }
            j10 = j11;
        } else {
            i10 = 0;
        }
        long Q0 = b7.s0.Q0(j10);
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(b7.s0.b0(this.F, this.G, Q0));
        }
        y0 y0Var = this.E;
        if (y0Var != null) {
            y0Var.setDuration(Q0);
            int length2 = this.f18706t0.length;
            int i15 = i10 + length2;
            long[] jArr2 = this.f18702r0;
            if (i15 > jArr2.length) {
                this.f18702r0 = Arrays.copyOf(jArr2, i15);
                this.f18704s0 = Arrays.copyOf(this.f18704s0, i15);
            }
            System.arraycopy(this.f18706t0, 0, this.f18702r0, i10, length2);
            System.arraycopy(this.f18708u0, 0, this.f18704s0, i10, length2);
            this.E.setAdGroupTimesMs(this.f18702r0, this.f18704s0, i15);
        }
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        boolean z10;
        d0();
        if (this.f18681h.getItemCount() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        t0(z10, this.f18711w);
    }

    private static boolean T(u1 u1Var, u1.d dVar) {
        if (u1Var.t() > 100) {
            return false;
        }
        int t10 = u1Var.t();
        for (int i10 = 0; i10 < t10; i10++) {
            if (u1Var.r(i10, dVar).f18563n == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    private void V(l1 l1Var) {
        l1Var.pause();
    }

    private void W(l1 l1Var) {
        int playbackState = l1Var.getPlaybackState();
        if (playbackState == 1) {
            l1Var.prepare();
        } else if (playbackState == 4) {
            o0(l1Var, l1Var.x(), -9223372036854775807L);
        }
        l1Var.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(l1 l1Var) {
        int playbackState = l1Var.getPlaybackState();
        if (playbackState != 1 && playbackState != 4 && l1Var.getPlayWhenReady()) {
            V(l1Var);
        } else {
            W(l1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(RecyclerView.Adapter<?> adapter, View view) {
        this.f18675e.setAdapter(adapter);
        D0();
        this.f18712w0 = false;
        this.f18687k.dismiss();
        this.f18712w0 = true;
        this.f18687k.showAsDropDown(view, (getWidth() - this.f18687k.getWidth()) - this.f18689l, (-this.f18687k.getHeight()) - this.f18689l);
    }

    private ImmutableList<k> Z(v1 v1Var, int i10) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList<v1.a> b10 = v1Var.b();
        for (int i11 = 0; i11 < b10.size(); i11++) {
            v1.a aVar2 = b10.get(i11);
            if (aVar2.d() == i10) {
                for (int i12 = 0; i12 < aVar2.f19202a; i12++) {
                    if (aVar2.h(i12)) {
                        com.google.android.exoplayer2.v0 c10 = aVar2.c(i12);
                        if ((c10.f19149d & 2) == 0) {
                            aVar.a(new k(v1Var, i11, i12, this.f18685j.a(c10)));
                        }
                    }
                }
            }
        }
        return aVar.k();
    }

    private static int a0(TypedArray typedArray, int i10) {
        return typedArray.getInt(u.Z, i10);
    }

    private void d0() {
        this.f18681h.b();
        this.f18683i.b();
        l1 l1Var = this.f18682h0;
        if (l1Var != null && l1Var.g(30) && this.f18682h0.g(29)) {
            v1 e10 = this.f18682h0.e();
            this.f18683i.j(Z(e10, 1));
            if (this.f18667a.A(this.f18711w)) {
                this.f18681h.i(Z(e10, 3));
            } else {
                this.f18681h.i(ImmutableList.A());
            }
        }
    }

    private static void e0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean g0(int i10) {
        if (i10 != 90 && i10 != 89 && i10 != 85 && i10 != 79 && i10 != 126 && i10 != 127 && i10 != 87 && i10 != 88) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(View view) {
        if (this.f18684i0 == null) {
            return;
        }
        boolean z10 = !this.f18686j0;
        this.f18686j0 = z10;
        v0(this.f18713x, z10);
        v0(this.f18714y, this.f18686j0);
        d dVar = this.f18684i0;
        if (dVar != null) {
            dVar.x(this.f18686j0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if ((i12 - i10 != i16 - i14 || i18 != i19) && this.f18687k.isShowing()) {
            D0();
            this.f18687k.update(view, (getWidth() - this.f18687k.getWidth()) - this.f18689l, (-this.f18687k.getHeight()) - this.f18689l, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(int i10) {
        if (i10 == 0) {
            Y(this.f18679g, (View) b7.a.e(this.f18715z));
        } else if (i10 == 1) {
            Y(this.f18683i, (View) b7.a.e(this.f18715z));
        } else {
            this.f18687k.dismiss();
        }
    }

    private void o0(l1 l1Var, int i10, long j10) {
        l1Var.seekTo(i10, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(l1 l1Var, long j10) {
        int x10;
        u1 currentTimeline = l1Var.getCurrentTimeline();
        if (this.f18692m0 && !currentTimeline.u()) {
            int t10 = currentTimeline.t();
            x10 = 0;
            while (true) {
                long g10 = currentTimeline.r(x10, this.I).g();
                if (j10 < g10) {
                    break;
                } else if (x10 == t10 - 1) {
                    j10 = g10;
                    break;
                } else {
                    j10 -= g10;
                    x10++;
                }
            }
        } else {
            x10 = l1Var.x();
        }
        o0(l1Var, x10, j10);
        A0();
    }

    private boolean q0() {
        l1 l1Var = this.f18682h0;
        if (l1Var != null && l1Var.getPlaybackState() != 4 && this.f18682h0.getPlaybackState() != 1 && this.f18682h0.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f10) {
        l1 l1Var = this.f18682h0;
        if (l1Var == null) {
            return;
        }
        l1Var.b(l1Var.getPlaybackParameters().e(f10));
    }

    private void t0(boolean z10, @Nullable View view) {
        float f10;
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        if (z10) {
            f10 = this.S;
        } else {
            f10 = this.T;
        }
        view.setAlpha(f10);
    }

    private void u0() {
        long j10;
        l1 l1Var = this.f18682h0;
        if (l1Var != null) {
            j10 = l1Var.j();
        } else {
            j10 = 15000;
        }
        int i10 = (int) (j10 / 1000);
        TextView textView = this.f18701r;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
        View view = this.f18697p;
        if (view != null) {
            view.setContentDescription(this.f18669b.getQuantityString(r.f18899a, i10, Integer.valueOf(i10)));
        }
    }

    private void v0(@Nullable ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.f18674d0);
            imageView.setContentDescription(this.f18678f0);
            return;
        }
        imageView.setImageDrawable(this.f18676e0);
        imageView.setContentDescription(this.f18680g0);
    }

    private static void w0(@Nullable View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        if (h0() && this.f18688k0) {
            l1 l1Var = this.f18682h0;
            if (l1Var != null) {
                z10 = l1Var.g(5);
                z12 = l1Var.g(7);
                z13 = l1Var.g(11);
                z14 = l1Var.g(12);
                z11 = l1Var.g(9);
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            if (z13) {
                C0();
            }
            if (z14) {
                u0();
            }
            t0(z12, this.f18691m);
            t0(z13, this.f18699q);
            t0(z14, this.f18697p);
            t0(z11, this.f18693n);
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setEnabled(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        if (h0() && this.f18688k0 && this.f18695o != null) {
            if (q0()) {
                ((ImageView) this.f18695o).setImageDrawable(this.f18669b.getDrawable(com.google.android.exoplayer2.ui.m.f18847j));
                this.f18695o.setContentDescription(this.f18669b.getString(s.f18907f));
                return;
            }
            ((ImageView) this.f18695o).setImageDrawable(this.f18669b.getDrawable(com.google.android.exoplayer2.ui.m.f18848k));
            this.f18695o.setContentDescription(this.f18669b.getString(s.f18908g));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0() {
        l1 l1Var = this.f18682h0;
        if (l1Var == null) {
            return;
        }
        this.f18679g.f(l1Var.getPlaybackParameters().f17821a);
        this.f18677f.c(0, this.f18679g.b());
    }

    @Deprecated
    public void S(m mVar) {
        b7.a.e(mVar);
        this.f18673d.add(mVar);
    }

    public boolean U(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        l1 l1Var = this.f18682h0;
        if (l1Var != null && g0(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (l1Var.getPlaybackState() != 4) {
                        l1Var.m();
                        return true;
                    }
                    return true;
                } else if (keyCode == 89) {
                    l1Var.y();
                    return true;
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        V(l1Var);
                                        return true;
                                    }
                                    return true;
                                }
                                W(l1Var);
                                return true;
                            }
                            l1Var.o();
                            return true;
                        }
                        l1Var.t();
                        return true;
                    }
                    X(l1Var);
                    return true;
                } else {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public void b0() {
        this.f18667a.C();
    }

    public void c0() {
        this.f18667a.F();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!U(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    public boolean f0() {
        return this.f18667a.I();
    }

    @Nullable
    public l1 getPlayer() {
        return this.f18682h0;
    }

    public int getRepeatToggleModes() {
        return this.f18700q0;
    }

    public boolean getShowShuffleButton() {
        return this.f18667a.A(this.f18707u);
    }

    public boolean getShowSubtitleButton() {
        return this.f18667a.A(this.f18711w);
    }

    public int getShowTimeoutMs() {
        return this.f18696o0;
    }

    public boolean getShowVrButton() {
        return this.f18667a.A(this.f18709v);
    }

    public boolean h0() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i0() {
        Iterator<m> it = this.f18673d.iterator();
        while (it.hasNext()) {
            it.next().i(getVisibility());
        }
    }

    @Deprecated
    public void m0(m mVar) {
        this.f18673d.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        View view = this.f18695o;
        if (view != null) {
            view.requestFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f18667a.O();
        this.f18688k0 = true;
        if (f0()) {
            this.f18667a.W();
        }
        s0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f18667a.P();
        this.f18688k0 = false;
        removeCallbacks(this.J);
        this.f18667a.V();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f18667a.Q(z10, i10, i11, i12, i13);
    }

    public void r0() {
        this.f18667a.b0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s0() {
        y0();
        x0();
        B0();
        E0();
        G0();
        z0();
        F0();
    }

    public void setAnimationEnabled(boolean z10) {
        this.f18667a.X(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        boolean z10 = false;
        if (jArr == null) {
            this.f18706t0 = new long[0];
            this.f18708u0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) b7.a.e(zArr);
            if (jArr.length == zArr2.length) {
                z10 = true;
            }
            b7.a.a(z10);
            this.f18706t0 = jArr;
            this.f18708u0 = zArr2;
        }
        F0();
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        boolean z10;
        this.f18684i0 = dVar;
        ImageView imageView = this.f18713x;
        boolean z11 = false;
        if (dVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        w0(imageView, z10);
        ImageView imageView2 = this.f18714y;
        if (dVar != null) {
            z11 = true;
        }
        w0(imageView2, z11);
    }

    public void setPlayer(@Nullable l1 l1Var) {
        boolean z10;
        boolean z11 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (l1Var == null || l1Var.s() == Looper.getMainLooper()) {
            z11 = true;
        }
        b7.a.a(z11);
        l1 l1Var2 = this.f18682h0;
        if (l1Var2 == l1Var) {
            return;
        }
        if (l1Var2 != null) {
            l1Var2.C(this.f18671c);
        }
        this.f18682h0 = l1Var;
        if (l1Var != null) {
            l1Var.F(this.f18671c);
        }
        s0();
    }

    public void setRepeatToggleModes(int i10) {
        this.f18700q0 = i10;
        l1 l1Var = this.f18682h0;
        boolean z10 = false;
        if (l1Var != null) {
            int repeatMode = l1Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.f18682h0.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.f18682h0.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.f18682h0.setRepeatMode(2);
            }
        }
        t0 t0Var = this.f18667a;
        ImageView imageView = this.f18705t;
        if (i10 != 0) {
            z10 = true;
        }
        t0Var.Y(imageView, z10);
        B0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f18667a.Y(this.f18697p, z10);
        x0();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.f18690l0 = z10;
        F0();
    }

    public void setShowNextButton(boolean z10) {
        this.f18667a.Y(this.f18693n, z10);
        x0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f18667a.Y(this.f18691m, z10);
        x0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f18667a.Y(this.f18699q, z10);
        x0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f18667a.Y(this.f18707u, z10);
        E0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f18667a.Y(this.f18711w, z10);
    }

    public void setShowTimeoutMs(int i10) {
        this.f18696o0 = i10;
        if (f0()) {
            this.f18667a.W();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f18667a.Y(this.f18709v, z10);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.f18698p0 = b7.s0.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        boolean z10;
        View view = this.f18709v;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            if (onClickListener != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            t0(z10, this.f18709v);
        }
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        ImageView imageView;
        c cVar;
        boolean z18;
        boolean z19;
        TextView textView;
        boolean z20;
        int i11 = q.f18893d;
        this.f18696o0 = 5000;
        this.f18700q0 = 0;
        this.f18698p0 = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, u.W, i10, 0);
            try {
                i11 = obtainStyledAttributes.getResourceId(u.Y, i11);
                this.f18696o0 = obtainStyledAttributes.getInt(u.f18981g0, this.f18696o0);
                this.f18700q0 = a0(obtainStyledAttributes, this.f18700q0);
                boolean z21 = obtainStyledAttributes.getBoolean(u.f18975d0, true);
                boolean z22 = obtainStyledAttributes.getBoolean(u.f18969a0, true);
                boolean z23 = obtainStyledAttributes.getBoolean(u.f18973c0, true);
                boolean z24 = obtainStyledAttributes.getBoolean(u.f18971b0, true);
                boolean z25 = obtainStyledAttributes.getBoolean(u.f18977e0, false);
                boolean z26 = obtainStyledAttributes.getBoolean(u.f18979f0, false);
                boolean z27 = obtainStyledAttributes.getBoolean(u.f18983h0, false);
                setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(u.f18985i0, this.f18698p0));
                boolean z28 = obtainStyledAttributes.getBoolean(u.X, true);
                obtainStyledAttributes.recycle();
                z11 = z25;
                z12 = z26;
                z14 = z21;
                z15 = z22;
                z16 = z23;
                z13 = z28;
                z17 = z24;
                z10 = z27;
            } catch (Throwable th2) {
                obtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = true;
            z17 = true;
        }
        LayoutInflater.from(context).inflate(i11, this);
        setDescendantFocusability(262144);
        c cVar2 = new c();
        this.f18671c = cVar2;
        this.f18673d = new CopyOnWriteArrayList<>();
        this.H = new u1.b();
        this.I = new u1.d();
        StringBuilder sb2 = new StringBuilder();
        this.F = sb2;
        this.G = new Formatter(sb2, Locale.getDefault());
        this.f18702r0 = new long[0];
        this.f18704s0 = new boolean[0];
        this.f18706t0 = new long[0];
        this.f18708u0 = new boolean[0];
        this.J = new Runnable() { // from class: com.google.android.exoplayer2.ui.y
            @Override // java.lang.Runnable
            public final void run() {
                StyledPlayerControlView.this.A0();
            }
        };
        this.C = (TextView) findViewById(o.f18872m);
        this.D = (TextView) findViewById(o.F);
        ImageView imageView2 = (ImageView) findViewById(o.Q);
        this.f18711w = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar2);
        }
        ImageView imageView3 = (ImageView) findViewById(o.f18878s);
        this.f18713x = imageView3;
        e0(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.j0(view);
            }
        });
        ImageView imageView4 = (ImageView) findViewById(o.f18882w);
        this.f18714y = imageView4;
        e0(imageView4, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StyledPlayerControlView.this.j0(view);
            }
        });
        View findViewById = findViewById(o.M);
        this.f18715z = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(cVar2);
        }
        View findViewById2 = findViewById(o.E);
        this.A = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar2);
        }
        View findViewById3 = findViewById(o.f18862c);
        this.B = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar2);
        }
        y0 y0Var = (y0) findViewById(o.H);
        View findViewById4 = findViewById(o.I);
        if (y0Var != null) {
            this.E = y0Var;
            imageView = imageView2;
            cVar = cVar2;
            z18 = z13;
            z19 = z10;
            textView = null;
        } else if (findViewById4 != null) {
            imageView = imageView2;
            textView = null;
            cVar = cVar2;
            z18 = z13;
            z19 = z10;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, t.f18929a);
            defaultTimeBar.setId(o.H);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            this.E = defaultTimeBar;
        } else {
            imageView = imageView2;
            cVar = cVar2;
            z18 = z13;
            z19 = z10;
            textView = null;
            this.E = null;
        }
        y0 y0Var2 = this.E;
        if (y0Var2 != null) {
            y0Var2.a(cVar);
        }
        View findViewById5 = findViewById(o.D);
        this.f18695o = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(cVar);
        }
        View findViewById6 = findViewById(o.G);
        this.f18691m = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(cVar);
        }
        View findViewById7 = findViewById(o.f18883x);
        this.f18693n = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(cVar);
        }
        Typeface font = ResourcesCompat.getFont(context, n.f18858a);
        View findViewById8 = findViewById(o.K);
        TextView textView2 = findViewById8 == null ? (TextView) findViewById(o.L) : textView;
        this.f18703s = textView2;
        if (textView2 != null) {
            textView2.setTypeface(font);
        }
        findViewById8 = findViewById8 == null ? textView2 : findViewById8;
        this.f18699q = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(cVar);
        }
        View findViewById9 = findViewById(o.f18876q);
        TextView textView3 = findViewById9 == null ? (TextView) findViewById(o.f18877r) : null;
        this.f18701r = textView3;
        if (textView3 != null) {
            textView3.setTypeface(font);
        }
        findViewById9 = findViewById9 == null ? textView3 : findViewById9;
        this.f18697p = findViewById9;
        if (findViewById9 != null) {
            findViewById9.setOnClickListener(cVar);
        }
        ImageView imageView5 = (ImageView) findViewById(o.J);
        this.f18705t = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        ImageView imageView6 = (ImageView) findViewById(o.N);
        this.f18707u = imageView6;
        if (imageView6 != null) {
            imageView6.setOnClickListener(cVar);
        }
        Resources resources = context.getResources();
        this.f18669b = resources;
        this.S = resources.getInteger(p.f18888b) / 100.0f;
        this.T = resources.getInteger(p.f18887a) / 100.0f;
        View findViewById10 = findViewById(o.U);
        this.f18709v = findViewById10;
        boolean z29 = z19;
        if (findViewById10 != null) {
            t0(false, findViewById10);
        }
        t0 t0Var = new t0(this);
        this.f18667a = t0Var;
        t0Var.X(z18);
        boolean z30 = z12;
        h hVar = new h(new String[]{resources.getString(s.f18909h), resources.getString(s.f18926y)}, new Drawable[]{resources.getDrawable(com.google.android.exoplayer2.ui.m.f18854q), resources.getDrawable(com.google.android.exoplayer2.ui.m.f18844g)});
        this.f18677f = hVar;
        this.f18689l = resources.getDimensionPixelSize(com.google.android.exoplayer2.ui.l.f18833a);
        boolean z31 = z11;
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(q.f18895f, (ViewGroup) null);
        this.f18675e = recyclerView;
        recyclerView.setAdapter(hVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        this.f18687k = popupWindow;
        if (b7.s0.f2506a < 23) {
            z20 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z20 = false;
        }
        popupWindow.setOnDismissListener(cVar);
        this.f18712w0 = true;
        this.f18685j = new com.google.android.exoplayer2.ui.f(getResources());
        this.W = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18856s);
        this.f18668a0 = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18855r);
        this.f18670b0 = resources.getString(s.f18903b);
        this.f18672c0 = resources.getString(s.f18902a);
        this.f18681h = new j();
        this.f18683i = new b();
        this.f18679g = new e(resources.getStringArray(com.google.android.exoplayer2.ui.j.f18829a), f18666x0);
        this.f18674d0 = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18846i);
        this.f18676e0 = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18845h);
        this.K = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18850m);
        this.L = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18851n);
        this.M = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18849l);
        this.Q = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18853p);
        this.R = resources.getDrawable(com.google.android.exoplayer2.ui.m.f18852o);
        this.f18678f0 = resources.getString(s.f18905d);
        this.f18680g0 = resources.getString(s.f18904c);
        this.N = resources.getString(s.f18911j);
        this.O = resources.getString(s.f18912k);
        this.P = resources.getString(s.f18910i);
        this.U = resources.getString(s.f18915n);
        this.V = resources.getString(s.f18914m);
        t0Var.Y((ViewGroup) findViewById(o.f18864e), true);
        t0Var.Y(findViewById9, z15);
        t0Var.Y(findViewById8, z14);
        t0Var.Y(findViewById6, z16);
        t0Var.Y(findViewById7, z17);
        t0Var.Y(imageView6, z31);
        t0Var.Y(imageView, z30);
        t0Var.Y(findViewById10, z29);
        t0Var.Y(imageView5, this.f18700q0 != 0 ? true : z20);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.a0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                StyledPlayerControlView.this.k0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            if (StyledPlayerControlView.this.f18682h0 != null) {
                StyledPlayerControlView.this.f18682h0.D(StyledPlayerControlView.this.f18682h0.h().a().B(3).F(-3).A());
                StyledPlayerControlView.this.f18687k.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i10) {
            int i11;
            super.onBindViewHolder(iVar, i10);
            if (i10 > 0) {
                View view = iVar.f18731d;
                if (this.f18736i.get(i10 - 1).a()) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                view.setVisibility(i11);
            }
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void e(i iVar) {
            boolean z10;
            iVar.f18730c.setText(s.f18925x);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 < this.f18736i.size()) {
                    if (this.f18736i.get(i11).a()) {
                        z10 = false;
                        break;
                    }
                    i11++;
                } else {
                    z10 = true;
                    break;
                }
            }
            View view = iVar.f18731d;
            if (!z10) {
                i10 = 4;
            }
            view.setVisibility(i10);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    StyledPlayerControlView.j.this.j(view2);
                }
            });
        }

        public void i(List<k> list) {
            boolean z10 = false;
            int i10 = 0;
            while (true) {
                if (i10 >= list.size()) {
                    break;
                } else if (list.get(i10).a()) {
                    z10 = true;
                    break;
                } else {
                    i10++;
                }
            }
            if (StyledPlayerControlView.this.f18711w != null) {
                ImageView imageView = StyledPlayerControlView.this.f18711w;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z10 ? styledPlayerControlView.W : styledPlayerControlView.f18668a0);
                StyledPlayerControlView.this.f18711w.setContentDescription(z10 ? StyledPlayerControlView.this.f18670b0 : StyledPlayerControlView.this.f18672c0);
            }
            this.f18736i = list;
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public void g(String str) {
        }
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }
}
