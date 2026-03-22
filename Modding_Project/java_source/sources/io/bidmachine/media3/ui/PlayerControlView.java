package io.bidmachine.media3.ui;

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
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.ui.PlayerControlView;
import io.bidmachine.media3.ui.j1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import zm.a0;
import zm.e0;
import zm.w;
/* loaded from: classes8.dex */
public class PlayerControlView extends FrameLayout {
    private static final float[] A0;
    @Nullable
    private final View A;
    @Nullable
    private final View B;
    @Nullable
    private final TextView C;
    @Nullable
    private final TextView D;
    @Nullable
    private final j1 E;
    private final StringBuilder F;
    private final Formatter G;
    private final a0.b H;
    private final a0.c I;
    private final Runnable J;
    private final Drawable K;
    private final Drawable L;
    private final Drawable M;
    private final Drawable N;
    private final Drawable O;
    private final String P;
    private final String Q;
    private final String R;
    private final Drawable S;
    private final Drawable T;
    private final float U;
    private final float V;
    private final String W;

    /* renamed from: a  reason: collision with root package name */
    private final d0 f57537a;

    /* renamed from: a0  reason: collision with root package name */
    private final String f57538a0;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f57539b;

    /* renamed from: b0  reason: collision with root package name */
    private final Drawable f57540b0;

    /* renamed from: c  reason: collision with root package name */
    private final c f57541c;

    /* renamed from: c0  reason: collision with root package name */
    private final Drawable f57542c0;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArrayList<m> f57543d;

    /* renamed from: d0  reason: collision with root package name */
    private final String f57544d0;

    /* renamed from: e  reason: collision with root package name */
    private final RecyclerView f57545e;

    /* renamed from: e0  reason: collision with root package name */
    private final String f57546e0;

    /* renamed from: f  reason: collision with root package name */
    private final h f57547f;

    /* renamed from: f0  reason: collision with root package name */
    private final Drawable f57548f0;

    /* renamed from: g  reason: collision with root package name */
    private final e f57549g;

    /* renamed from: g0  reason: collision with root package name */
    private final Drawable f57550g0;

    /* renamed from: h  reason: collision with root package name */
    private final j f57551h;

    /* renamed from: h0  reason: collision with root package name */
    private final String f57552h0;

    /* renamed from: i  reason: collision with root package name */
    private final b f57553i;

    /* renamed from: i0  reason: collision with root package name */
    private final String f57554i0;

    /* renamed from: j  reason: collision with root package name */
    private final k1 f57555j;
    @Nullable

    /* renamed from: j0  reason: collision with root package name */
    private zm.w f57556j0;

    /* renamed from: k  reason: collision with root package name */
    private final PopupWindow f57557k;
    @Nullable

    /* renamed from: k0  reason: collision with root package name */
    private d f57558k0;

    /* renamed from: l  reason: collision with root package name */
    private final int f57559l;

    /* renamed from: l0  reason: collision with root package name */
    private boolean f57560l0;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final ImageView f57561m;

    /* renamed from: m0  reason: collision with root package name */
    private boolean f57562m0;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final ImageView f57563n;

    /* renamed from: n0  reason: collision with root package name */
    private boolean f57564n0;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final ImageView f57565o;

    /* renamed from: o0  reason: collision with root package name */
    private boolean f57566o0;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final View f57567p;

    /* renamed from: p0  reason: collision with root package name */
    private boolean f57568p0;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final View f57569q;

    /* renamed from: q0  reason: collision with root package name */
    private boolean f57570q0;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final TextView f57571r;

    /* renamed from: r0  reason: collision with root package name */
    private int f57572r0;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final TextView f57573s;

    /* renamed from: s0  reason: collision with root package name */
    private int f57574s0;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final ImageView f57575t;

    /* renamed from: t0  reason: collision with root package name */
    private int f57576t0;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private final ImageView f57577u;

    /* renamed from: u0  reason: collision with root package name */
    private long[] f57578u0;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private final ImageView f57579v;

    /* renamed from: v0  reason: collision with root package name */
    private boolean[] f57580v0;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final ImageView f57581w;

    /* renamed from: w0  reason: collision with root package name */
    private long[] f57582w0;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f57583x;

    /* renamed from: x0  reason: collision with root package name */
    private boolean[] f57584x0;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private final ImageView f57585y;

    /* renamed from: y0  reason: collision with root package name */
    private long f57586y0;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private final View f57587z;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f57588z0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class b extends l {
        private b() {
            super();
        }

        private boolean i(zm.d0 d0Var) {
            for (int i10 = 0; i10 < this.f57609i.size(); i10++) {
                if (d0Var.D.containsKey(this.f57609i.get(i10).f57606a.a())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(View view) {
            if (PlayerControlView.this.f57556j0 != null && PlayerControlView.this.f57556j0.g(29)) {
                ((zm.w) cn.m0.i(PlayerControlView.this.f57556j0)).E(PlayerControlView.this.f57556j0.h().a().G(1).P(1, false).F());
                PlayerControlView.this.f57547f.d(1, PlayerControlView.this.getResources().getString(z0.f57938w));
                PlayerControlView.this.f57557k.dismiss();
            }
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.l
        public void e(i iVar) {
            int i10;
            iVar.f57603c.setText(z0.f57938w);
            boolean i11 = i(((zm.w) cn.a.e(PlayerControlView.this.f57556j0)).h());
            View view = iVar.f57604d;
            if (i11) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            view.setVisibility(i10);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PlayerControlView.b.this.k(view2);
                }
            });
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.l
        public void g(String str) {
            PlayerControlView.this.f57547f.d(1, str);
        }

        public void j(List<k> list) {
            this.f57609i = list;
            zm.d0 h10 = ((zm.w) cn.a.e(PlayerControlView.this.f57556j0)).h();
            if (list.isEmpty()) {
                PlayerControlView.this.f57547f.d(1, PlayerControlView.this.getResources().getString(z0.f57939x));
            } else if (!i(h10)) {
                PlayerControlView.this.f57547f.d(1, PlayerControlView.this.getResources().getString(z0.f57938w));
            } else {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    k kVar = list.get(i10);
                    if (kVar.a()) {
                        PlayerControlView.this.f57547f.d(1, kVar.f57608c);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class c implements w.d, j1.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void K(j1 j1Var, long j10, boolean z10) {
            PlayerControlView.this.f57570q0 = false;
            if (!z10 && PlayerControlView.this.f57556j0 != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.l0(playerControlView.f57556j0, j10);
            }
            PlayerControlView.this.f57537a.W();
        }

        @Override // zm.w.d
        public void R(zm.w wVar, w.c cVar) {
            if (cVar.b(4, 5, 13)) {
                PlayerControlView.this.u0();
            }
            if (cVar.b(4, 5, 7, 13)) {
                PlayerControlView.this.w0();
            }
            if (cVar.b(8, 13)) {
                PlayerControlView.this.x0();
            }
            if (cVar.b(9, 13)) {
                PlayerControlView.this.B0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                PlayerControlView.this.t0();
            }
            if (cVar.b(11, 0, 13)) {
                PlayerControlView.this.C0();
            }
            if (cVar.b(12, 13)) {
                PlayerControlView.this.v0();
            }
            if (cVar.b(2, 13)) {
                PlayerControlView.this.D0();
            }
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void i(j1 j1Var, long j10) {
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(cn.m0.o0(PlayerControlView.this.F, PlayerControlView.this.G, j10));
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            zm.w wVar = PlayerControlView.this.f57556j0;
            if (wVar == null) {
                return;
            }
            PlayerControlView.this.f57537a.W();
            if (PlayerControlView.this.f57563n == view) {
                if (wVar.g(9)) {
                    wVar.t();
                }
            } else if (PlayerControlView.this.f57561m == view) {
                if (wVar.g(7)) {
                    wVar.o();
                }
            } else if (PlayerControlView.this.f57567p == view) {
                if (wVar.getPlaybackState() != 4 && wVar.g(12)) {
                    wVar.m();
                }
            } else if (PlayerControlView.this.f57569q == view) {
                if (wVar.g(11)) {
                    wVar.y();
                }
            } else if (PlayerControlView.this.f57565o == view) {
                cn.m0.x0(wVar, PlayerControlView.this.f57566o0);
            } else if (PlayerControlView.this.f57575t == view) {
                if (wVar.g(15)) {
                    wVar.setRepeatMode(cn.c0.a(wVar.getRepeatMode(), PlayerControlView.this.f57576t0));
                }
            } else if (PlayerControlView.this.f57577u == view) {
                if (wVar.g(14)) {
                    wVar.setShuffleModeEnabled(!wVar.getShuffleModeEnabled());
                }
            } else if (PlayerControlView.this.f57587z == view) {
                PlayerControlView.this.f57537a.V();
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.V(playerControlView.f57547f, PlayerControlView.this.f57587z);
            } else if (PlayerControlView.this.A == view) {
                PlayerControlView.this.f57537a.V();
                PlayerControlView playerControlView2 = PlayerControlView.this;
                playerControlView2.V(playerControlView2.f57549g, PlayerControlView.this.A);
            } else if (PlayerControlView.this.B == view) {
                PlayerControlView.this.f57537a.V();
                PlayerControlView playerControlView3 = PlayerControlView.this;
                playerControlView3.V(playerControlView3.f57553i, PlayerControlView.this.B);
            } else if (PlayerControlView.this.f57581w == view) {
                PlayerControlView.this.f57537a.V();
                PlayerControlView playerControlView4 = PlayerControlView.this;
                playerControlView4.V(playerControlView4.f57551h, PlayerControlView.this.f57581w);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (PlayerControlView.this.f57588z0) {
                PlayerControlView.this.f57537a.W();
            }
        }

        @Override // io.bidmachine.media3.ui.j1.a
        public void x(j1 j1Var, long j10) {
            PlayerControlView.this.f57570q0 = true;
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(cn.m0.o0(PlayerControlView.this.F, PlayerControlView.this.G, j10));
            }
            PlayerControlView.this.f57537a.V();
        }
    }

    @Deprecated
    /* loaded from: classes8.dex */
    public interface d {
        void x(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class e extends RecyclerView.Adapter<i> {

        /* renamed from: i  reason: collision with root package name */
        private final String[] f57591i;

        /* renamed from: j  reason: collision with root package name */
        private final float[] f57592j;

        /* renamed from: k  reason: collision with root package name */
        private int f57593k;

        public e(String[] strArr, float[] fArr) {
            this.f57591i = strArr;
            this.f57592j = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(int i10, View view) {
            if (i10 != this.f57593k) {
                PlayerControlView.this.setPlaybackSpeed(this.f57592j[i10]);
            }
            PlayerControlView.this.f57557k.dismiss();
        }

        public String b() {
            return this.f57591i[this.f57593k];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, final int i10) {
            String[] strArr = this.f57591i;
            if (i10 < strArr.length) {
                iVar.f57603c.setText(strArr[i10]);
            }
            if (i10 == this.f57593k) {
                iVar.itemView.setSelected(true);
                iVar.f57604d.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f57604d.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PlayerControlView.e.this.c(i10, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(x0.f57911g, viewGroup, false));
        }

        public void f(float f10) {
            int i10 = 0;
            float f11 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.f57592j;
                if (i10 < fArr.length) {
                    float abs = Math.abs(f10 - fArr[i10]);
                    if (abs < f11) {
                        i11 = i10;
                        f11 = abs;
                    }
                    i10++;
                } else {
                    this.f57593k = i11;
                    return;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f57591i.length;
        }
    }

    /* loaded from: classes8.dex */
    public interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class g extends RecyclerView.ViewHolder {

        /* renamed from: c  reason: collision with root package name */
        private final TextView f57595c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f57596d;

        /* renamed from: e  reason: collision with root package name */
        private final ImageView f57597e;

        public g(View view) {
            super(view);
            if (cn.m0.f3614a < 26) {
                view.setFocusable(true);
            }
            this.f57595c = (TextView) view.findViewById(v0.f57896v);
            this.f57596d = (TextView) view.findViewById(v0.Q);
            this.f57597e = (ImageView) view.findViewById(v0.f57894t);
            view.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PlayerControlView.g.this.g(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(View view) {
            PlayerControlView.this.i0(getBindingAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class h extends RecyclerView.Adapter<g> {

        /* renamed from: i  reason: collision with root package name */
        private final String[] f57599i;

        /* renamed from: j  reason: collision with root package name */
        private final String[] f57600j;

        /* renamed from: k  reason: collision with root package name */
        private final Drawable[] f57601k;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f57599i = strArr;
            this.f57600j = new String[strArr.length];
            this.f57601k = drawableArr;
        }

        private boolean e(int i10) {
            if (PlayerControlView.this.f57556j0 == null) {
                return false;
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    return true;
                }
                if (!PlayerControlView.this.f57556j0.g(30) || !PlayerControlView.this.f57556j0.g(29)) {
                    return false;
                }
                return true;
            }
            return PlayerControlView.this.f57556j0.g(13);
        }

        public boolean a() {
            if (e(1) || e(0)) {
                return true;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: b */
        public void onBindViewHolder(g gVar, int i10) {
            if (e(i10)) {
                gVar.itemView.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            } else {
                gVar.itemView.setLayoutParams(new RecyclerView.LayoutParams(0, 0));
            }
            gVar.f57595c.setText(this.f57599i[i10]);
            if (this.f57600j[i10] == null) {
                gVar.f57596d.setVisibility(8);
            } else {
                gVar.f57596d.setText(this.f57600j[i10]);
            }
            if (this.f57601k[i10] == null) {
                gVar.f57597e.setVisibility(8);
            } else {
                gVar.f57597e.setImageDrawable(this.f57601k[i10]);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: c */
        public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new g(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(x0.f57910f, viewGroup, false));
        }

        public void d(int i10, String str) {
            this.f57600j[i10] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f57599i.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static class i extends RecyclerView.ViewHolder {

        /* renamed from: c  reason: collision with root package name */
        public final TextView f57603c;

        /* renamed from: d  reason: collision with root package name */
        public final View f57604d;

        public i(View view) {
            super(view);
            if (cn.m0.f3614a < 26) {
                view.setFocusable(true);
            }
            this.f57603c = (TextView) view.findViewById(v0.T);
            this.f57604d = view.findViewById(v0.f57882h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        public final e0.a f57606a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57607b;

        /* renamed from: c  reason: collision with root package name */
        public final String f57608c;

        public k(zm.e0 e0Var, int i10, int i11, String str) {
            this.f57606a = e0Var.a().get(i10);
            this.f57607b = i11;
            this.f57608c = str;
        }

        public boolean a() {
            return this.f57606a.g(this.f57607b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public abstract class l extends RecyclerView.Adapter<i> {

        /* renamed from: i  reason: collision with root package name */
        protected List<k> f57609i = new ArrayList();

        protected l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(zm.w wVar, zm.b0 b0Var, k kVar, View view) {
            if (!wVar.g(29)) {
                return;
            }
            wVar.E(wVar.h().a().L(new zm.c0(b0Var, ImmutableList.B(Integer.valueOf(kVar.f57607b)))).P(kVar.f57606a.c(), false).F());
            g(kVar.f57608c);
            PlayerControlView.this.f57557k.dismiss();
        }

        protected void b() {
            this.f57609i = Collections.emptyList();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i10) {
            final zm.w wVar = PlayerControlView.this.f57556j0;
            if (wVar == null) {
                return;
            }
            if (i10 == 0) {
                e(iVar);
                return;
            }
            boolean z10 = true;
            final k kVar = this.f57609i.get(i10 - 1);
            final zm.b0 a10 = kVar.f57606a.a();
            int i11 = 0;
            if (wVar.h().D.get(a10) == null || !kVar.a()) {
                z10 = false;
            }
            iVar.f57603c.setText(kVar.f57608c);
            View view = iVar.f57604d;
            if (!z10) {
                i11 = 4;
            }
            view.setVisibility(i11);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PlayerControlView.l.this.c(wVar, a10, kVar, view2);
                }
            });
        }

        protected abstract void e(i iVar);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(x0.f57911g, viewGroup, false));
        }

        protected abstract void g(String str);

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.f57609i.isEmpty()) {
                return 0;
            }
            return this.f57609i.size() + 1;
        }
    }

    @Deprecated
    /* loaded from: classes8.dex */
    public interface m {
        void i(int i10);
    }

    static {
        zm.r.a("media3.ui");
        A0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    private void A0() {
        this.f57545e.measure(0, 0);
        this.f57557k.setWidth(Math.min(this.f57545e.getMeasuredWidth(), getWidth() - (this.f57559l * 2)));
        this.f57557k.setHeight(Math.min(getHeight() - (this.f57559l * 2), this.f57545e.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (e0() && this.f57562m0 && (imageView = this.f57577u) != null) {
            zm.w wVar = this.f57556j0;
            if (!this.f57537a.A(imageView)) {
                o0(false, this.f57577u);
            } else if (wVar != null && wVar.g(14)) {
                o0(true, this.f57577u);
                ImageView imageView2 = this.f57577u;
                if (wVar.getShuffleModeEnabled()) {
                    drawable = this.S;
                } else {
                    drawable = this.T;
                }
                imageView2.setImageDrawable(drawable);
                ImageView imageView3 = this.f57577u;
                if (wVar.getShuffleModeEnabled()) {
                    str = this.W;
                } else {
                    str = this.f57538a0;
                }
                imageView3.setContentDescription(str);
            } else {
                o0(false, this.f57577u);
                this.f57577u.setImageDrawable(this.T);
                this.f57577u.setContentDescription(this.f57538a0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0() {
        boolean z10;
        zm.a0 a0Var;
        long j10;
        int i10;
        int i11;
        int i12;
        a0.c cVar;
        int length;
        zm.w wVar = this.f57556j0;
        if (wVar == null) {
            return;
        }
        boolean z11 = true;
        if (this.f57564n0 && T(wVar, this.I)) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f57568p0 = z10;
        this.f57586y0 = 0L;
        if (wVar.g(17)) {
            a0Var = wVar.getCurrentTimeline();
        } else {
            a0Var = zm.a0.f71731a;
        }
        if (!a0Var.q()) {
            int x10 = wVar.x();
            boolean z12 = this.f57568p0;
            if (z12) {
                i11 = 0;
            } else {
                i11 = x10;
            }
            if (z12) {
                i12 = a0Var.p() - 1;
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
                    this.f57586y0 = cn.m0.u1(j11);
                }
                a0Var.n(i11, this.I);
                a0.c cVar2 = this.I;
                if (cVar2.f71769m == -9223372036854775807L) {
                    cn.a.g(this.f57568p0 ^ z11);
                    break;
                }
                int i13 = cVar2.f71770n;
                while (true) {
                    cVar = this.I;
                    if (i13 <= cVar.f71771o) {
                        a0Var.f(i13, this.H);
                        int c10 = this.H.c();
                        for (int o10 = this.H.o(); o10 < c10; o10++) {
                            long f10 = this.H.f(o10);
                            if (f10 == Long.MIN_VALUE) {
                                long j12 = this.H.f71743d;
                                if (j12 != -9223372036854775807L) {
                                    f10 = j12;
                                }
                            }
                            long n10 = f10 + this.H.n();
                            if (n10 >= 0) {
                                long[] jArr = this.f57578u0;
                                if (i10 == jArr.length) {
                                    if (jArr.length == 0) {
                                        length = 1;
                                    } else {
                                        length = jArr.length * 2;
                                    }
                                    this.f57578u0 = Arrays.copyOf(jArr, length);
                                    this.f57580v0 = Arrays.copyOf(this.f57580v0, length);
                                }
                                this.f57578u0[i10] = cn.m0.u1(j11 + n10);
                                this.f57580v0[i10] = this.H.p(o10);
                                i10++;
                            }
                        }
                        i13++;
                    }
                }
                j11 += cVar.f71769m;
                i11++;
                z11 = true;
            }
            j10 = j11;
        } else {
            if (wVar.g(16)) {
                long D = wVar.D();
                if (D != -9223372036854775807L) {
                    j10 = cn.m0.S0(D);
                    i10 = 0;
                }
            }
            j10 = 0;
            i10 = 0;
        }
        long u12 = cn.m0.u1(j10);
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(cn.m0.o0(this.F, this.G, u12));
        }
        j1 j1Var = this.E;
        if (j1Var != null) {
            j1Var.setDuration(u12);
            int length2 = this.f57582w0.length;
            int i14 = i10 + length2;
            long[] jArr2 = this.f57578u0;
            if (i14 > jArr2.length) {
                this.f57578u0 = Arrays.copyOf(jArr2, i14);
                this.f57580v0 = Arrays.copyOf(this.f57580v0, i14);
            }
            System.arraycopy(this.f57582w0, 0, this.f57578u0, i10, length2);
            System.arraycopy(this.f57584x0, 0, this.f57580v0, i10, length2);
            this.E.setAdGroupTimesMs(this.f57578u0, this.f57580v0, i14);
        }
        w0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        boolean z10;
        a0();
        if (this.f57551h.getItemCount() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        o0(z10, this.f57581w);
        z0();
    }

    private static boolean T(zm.w wVar, a0.c cVar) {
        zm.a0 currentTimeline;
        int p10;
        if (!wVar.g(17) || (p10 = (currentTimeline = wVar.getCurrentTimeline()).p()) <= 1 || p10 > 100) {
            return false;
        }
        for (int i10 = 0; i10 < p10; i10++) {
            if (currentTimeline.n(i10, cVar).f71769m == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(RecyclerView.Adapter<?> adapter, View view) {
        this.f57545e.setAdapter(adapter);
        A0();
        this.f57588z0 = false;
        this.f57557k.dismiss();
        this.f57588z0 = true;
        this.f57557k.showAsDropDown(view, (getWidth() - this.f57557k.getWidth()) - this.f57559l, (-this.f57557k.getHeight()) - this.f57559l);
    }

    private ImmutableList<k> W(zm.e0 e0Var, int i10) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList<e0.a> a10 = e0Var.a();
        for (int i11 = 0; i11 < a10.size(); i11++) {
            e0.a aVar2 = a10.get(i11);
            if (aVar2.c() == i10) {
                for (int i12 = 0; i12 < aVar2.f71923a; i12++) {
                    if (aVar2.h(i12)) {
                        io.bidmachine.media3.common.a b10 = aVar2.b(i12);
                        if ((b10.f55164e & 2) == 0) {
                            aVar.a(new k(e0Var, i11, i12, this.f57555j.a(b10)));
                        }
                    }
                }
            }
        }
        return aVar.k();
    }

    private static int X(TypedArray typedArray, int i10) {
        return typedArray.getInt(b1.U, i10);
    }

    private void a0() {
        this.f57551h.b();
        this.f57553i.b();
        zm.w wVar = this.f57556j0;
        if (wVar != null && wVar.g(30) && this.f57556j0.g(29)) {
            zm.e0 e10 = this.f57556j0.e();
            this.f57553i.j(W(e10, 1));
            if (this.f57537a.A(this.f57581w)) {
                this.f57551h.i(W(e10, 3));
            } else {
                this.f57551h.i(ImmutableList.A());
            }
        }
    }

    private static void b0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean d0(int i10) {
        if (i10 != 90 && i10 != 89 && i10 != 85 && i10 != 79 && i10 != 126 && i10 != 127 && i10 != 87 && i10 != 88) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(View view) {
        s0(!this.f57560l0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if ((i12 - i10 != i16 - i14 || i18 != i19) && this.f57557k.isShowing()) {
            A0();
            this.f57557k.update(view, (getWidth() - this.f57557k.getWidth()) - this.f57559l, (-this.f57557k.getHeight()) - this.f57559l, -1, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(int i10) {
        if (i10 == 0) {
            V(this.f57549g, (View) cn.a.e(this.f57587z));
        } else if (i10 == 1) {
            V(this.f57553i, (View) cn.a.e(this.f57587z));
        } else {
            this.f57557k.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(zm.w wVar, long j10) {
        if (this.f57568p0) {
            if (wVar.g(17) && wVar.g(10)) {
                zm.a0 currentTimeline = wVar.getCurrentTimeline();
                int p10 = currentTimeline.p();
                int i10 = 0;
                while (true) {
                    long d10 = currentTimeline.n(i10, this.I).d();
                    if (j10 < d10) {
                        break;
                    } else if (i10 == p10 - 1) {
                        j10 = d10;
                        break;
                    } else {
                        j10 -= d10;
                        i10++;
                    }
                }
                wVar.seekTo(i10, j10);
            }
        } else if (wVar.g(5)) {
            wVar.seekTo(j10);
        }
        w0();
    }

    private void o0(boolean z10, @Nullable View view) {
        float f10;
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        if (z10) {
            f10 = this.U;
        } else {
            f10 = this.V;
        }
        view.setAlpha(f10);
    }

    private void p0() {
        long j10;
        zm.w wVar = this.f57556j0;
        if (wVar != null) {
            j10 = wVar.j();
        } else {
            j10 = 15000;
        }
        int i10 = (int) (j10 / 1000);
        TextView textView = this.f57571r;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
        View view = this.f57567p;
        if (view != null) {
            view.setContentDescription(this.f57539b.getQuantityString(y0.f57913a, i10, Integer.valueOf(i10)));
        }
    }

    private void q0(@Nullable ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.f57548f0);
            imageView.setContentDescription(this.f57552h0);
            return;
        }
        imageView.setImageDrawable(this.f57550g0);
        imageView.setContentDescription(this.f57554i0);
    }

    private static void r0(@Nullable View view, boolean z10) {
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
    public void setPlaybackSpeed(float f10) {
        zm.w wVar = this.f57556j0;
        if (wVar != null && wVar.g(13)) {
            zm.w wVar2 = this.f57556j0;
            wVar2.b(wVar2.getPlaybackParameters().b(f10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        if (e0() && this.f57562m0) {
            zm.w wVar = this.f57556j0;
            if (wVar != null) {
                if (this.f57564n0 && T(wVar, this.I)) {
                    z10 = wVar.g(10);
                } else {
                    z10 = wVar.g(5);
                }
                z12 = wVar.g(7);
                z13 = wVar.g(11);
                z14 = wVar.g(12);
                z11 = wVar.g(9);
            } else {
                z10 = false;
                z11 = false;
                z12 = false;
                z13 = false;
                z14 = false;
            }
            if (z13) {
                y0();
            }
            if (z14) {
                p0();
            }
            o0(z12, this.f57561m);
            o0(z13, this.f57569q);
            o0(z14, this.f57567p);
            o0(z11, this.f57563n);
            j1 j1Var = this.E;
            if (j1Var != null) {
                j1Var.setEnabled(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        Drawable drawable;
        int i10;
        if (e0() && this.f57562m0 && this.f57565o != null) {
            boolean l12 = cn.m0.l1(this.f57556j0, this.f57566o0);
            if (l12) {
                drawable = this.K;
            } else {
                drawable = this.L;
            }
            if (l12) {
                i10 = z0.f57922g;
            } else {
                i10 = z0.f57921f;
            }
            this.f57565o.setImageDrawable(drawable);
            this.f57565o.setContentDescription(this.f57539b.getString(i10));
            o0(cn.m0.k1(this.f57556j0), this.f57565o);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0() {
        zm.w wVar = this.f57556j0;
        if (wVar == null) {
            return;
        }
        this.f57549g.f(wVar.getPlaybackParameters().f72208a);
        this.f57547f.d(0, this.f57549g.b());
        z0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w0() {
        long j10;
        long j11;
        int playbackState;
        long j12;
        if (e0() && this.f57562m0) {
            zm.w wVar = this.f57556j0;
            if (wVar != null && wVar.g(16)) {
                j10 = this.f57586y0 + wVar.getContentPosition();
                j11 = this.f57586y0 + wVar.l();
            } else {
                j10 = 0;
                j11 = 0;
            }
            TextView textView = this.D;
            if (textView != null && !this.f57570q0) {
                textView.setText(cn.m0.o0(this.F, this.G, j10));
            }
            j1 j1Var = this.E;
            if (j1Var != null) {
                j1Var.setPosition(j10);
                this.E.setBufferedPosition(j11);
            }
            removeCallbacks(this.J);
            if (wVar == null) {
                playbackState = 1;
            } else {
                playbackState = wVar.getPlaybackState();
            }
            long j13 = 1000;
            if (wVar != null && wVar.isPlaying()) {
                j1 j1Var2 = this.E;
                if (j1Var2 != null) {
                    j12 = j1Var2.getPreferredUpdateDelay();
                } else {
                    j12 = 1000;
                }
                long min = Math.min(j12, 1000 - (j10 % 1000));
                float f10 = wVar.getPlaybackParameters().f72208a;
                if (f10 > 0.0f) {
                    j13 = ((float) min) / f10;
                }
                postDelayed(this.J, cn.m0.q(j13, this.f57574s0, 1000L));
            } else if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.J, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        ImageView imageView;
        if (e0() && this.f57562m0 && (imageView = this.f57575t) != null) {
            if (this.f57576t0 == 0) {
                o0(false, imageView);
                return;
            }
            zm.w wVar = this.f57556j0;
            if (wVar != null && wVar.g(15)) {
                o0(true, this.f57575t);
                int repeatMode = wVar.getRepeatMode();
                if (repeatMode != 0) {
                    if (repeatMode != 1) {
                        if (repeatMode == 2) {
                            this.f57575t.setImageDrawable(this.O);
                            this.f57575t.setContentDescription(this.R);
                            return;
                        }
                        return;
                    }
                    this.f57575t.setImageDrawable(this.N);
                    this.f57575t.setContentDescription(this.Q);
                    return;
                }
                this.f57575t.setImageDrawable(this.M);
                this.f57575t.setContentDescription(this.P);
                return;
            }
            o0(false, this.f57575t);
            this.f57575t.setImageDrawable(this.M);
            this.f57575t.setContentDescription(this.P);
        }
    }

    private void y0() {
        long j10;
        zm.w wVar = this.f57556j0;
        if (wVar != null) {
            j10 = wVar.A();
        } else {
            j10 = 5000;
        }
        int i10 = (int) (j10 / 1000);
        TextView textView = this.f57573s;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
        View view = this.f57569q;
        if (view != null) {
            view.setContentDescription(this.f57539b.getQuantityString(y0.f57914b, i10, Integer.valueOf(i10)));
        }
    }

    private void z0() {
        o0(this.f57547f.a(), this.f57587z);
    }

    @Deprecated
    public void S(m mVar) {
        cn.a.e(mVar);
        this.f57543d.add(mVar);
    }

    public boolean U(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        zm.w wVar = this.f57556j0;
        if (wVar != null && d0(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (wVar.getPlaybackState() != 4 && wVar.g(12)) {
                        wVar.m();
                        return true;
                    }
                    return true;
                } else if (keyCode == 89 && wVar.g(11)) {
                    wVar.y();
                    return true;
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        cn.m0.v0(wVar);
                                        return true;
                                    }
                                    return true;
                                }
                                cn.m0.w0(wVar);
                                return true;
                            } else if (wVar.g(7)) {
                                wVar.o();
                                return true;
                            } else {
                                return true;
                            }
                        } else if (wVar.g(9)) {
                            wVar.t();
                            return true;
                        } else {
                            return true;
                        }
                    }
                    cn.m0.x0(wVar, this.f57566o0);
                    return true;
                } else {
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public void Y() {
        this.f57537a.C();
    }

    public void Z() {
        this.f57537a.F();
    }

    public boolean c0() {
        return this.f57537a.I();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!U(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    public boolean e0() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f0() {
        Iterator<m> it = this.f57543d.iterator();
        while (it.hasNext()) {
            it.next().i(getVisibility());
        }
    }

    @Nullable
    public zm.w getPlayer() {
        return this.f57556j0;
    }

    public int getRepeatToggleModes() {
        return this.f57576t0;
    }

    public boolean getShowShuffleButton() {
        return this.f57537a.A(this.f57577u);
    }

    public boolean getShowSubtitleButton() {
        return this.f57537a.A(this.f57581w);
    }

    public int getShowTimeoutMs() {
        return this.f57572r0;
    }

    public boolean getShowVrButton() {
        return this.f57537a.A(this.f57579v);
    }

    @Deprecated
    public void j0(m mVar) {
        this.f57543d.remove(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k0() {
        ImageView imageView = this.f57565o;
        if (imageView != null) {
            imageView.requestFocus();
        }
    }

    public void m0() {
        this.f57537a.b0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        u0();
        t0();
        x0();
        B0();
        D0();
        v0();
        C0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f57537a.O();
        this.f57562m0 = true;
        if (c0()) {
            this.f57537a.W();
        }
        n0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f57537a.P();
        this.f57562m0 = false;
        removeCallbacks(this.J);
        this.f57537a.V();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f57537a.Q(z10, i10, i11, i12, i13);
    }

    public void s0(boolean z10) {
        if (this.f57560l0 == z10) {
            return;
        }
        this.f57560l0 = z10;
        q0(this.f57583x, z10);
        q0(this.f57585y, z10);
        d dVar = this.f57558k0;
        if (dVar != null) {
            dVar.x(z10);
        }
    }

    public void setAnimationEnabled(boolean z10) {
        this.f57537a.X(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        boolean z10 = false;
        if (jArr == null) {
            this.f57582w0 = new long[0];
            this.f57584x0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) cn.a.e(zArr);
            if (jArr.length == zArr2.length) {
                z10 = true;
            }
            cn.a.a(z10);
            this.f57582w0 = jArr;
            this.f57584x0 = zArr2;
        }
        C0();
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        boolean z10;
        this.f57558k0 = dVar;
        ImageView imageView = this.f57583x;
        boolean z11 = false;
        if (dVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        r0(imageView, z10);
        ImageView imageView2 = this.f57585y;
        if (dVar != null) {
            z11 = true;
        }
        r0(imageView2, z11);
    }

    public void setPlayer(@Nullable zm.w wVar) {
        boolean z10;
        boolean z11 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (wVar == null || wVar.s() == Looper.getMainLooper()) {
            z11 = true;
        }
        cn.a.a(z11);
        zm.w wVar2 = this.f57556j0;
        if (wVar2 == wVar) {
            return;
        }
        if (wVar2 != null) {
            wVar2.B(this.f57541c);
        }
        this.f57556j0 = wVar;
        if (wVar != null) {
            wVar.C(this.f57541c);
        }
        n0();
    }

    public void setRepeatToggleModes(int i10) {
        this.f57576t0 = i10;
        zm.w wVar = this.f57556j0;
        boolean z10 = false;
        if (wVar != null && wVar.g(15)) {
            int repeatMode = this.f57556j0.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.f57556j0.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.f57556j0.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.f57556j0.setRepeatMode(2);
            }
        }
        d0 d0Var = this.f57537a;
        ImageView imageView = this.f57575t;
        if (i10 != 0) {
            z10 = true;
        }
        d0Var.Y(imageView, z10);
        x0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f57537a.Y(this.f57567p, z10);
        t0();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.f57564n0 = z10;
        C0();
    }

    public void setShowNextButton(boolean z10) {
        this.f57537a.Y(this.f57563n, z10);
        t0();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.f57566o0 = z10;
        u0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f57537a.Y(this.f57561m, z10);
        t0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f57537a.Y(this.f57569q, z10);
        t0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f57537a.Y(this.f57577u, z10);
        B0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f57537a.Y(this.f57581w, z10);
    }

    public void setShowTimeoutMs(int i10) {
        this.f57572r0 = i10;
        if (c0()) {
            this.f57537a.W();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f57537a.Y(this.f57579v, z10);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.f57574s0 = cn.m0.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        boolean z10;
        ImageView imageView = this.f57579v;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            if (onClickListener != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            o0(z10, this.f57579v);
        }
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        int i11;
        int i12;
        final PlayerControlView playerControlView;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        c cVar;
        final PlayerControlView playerControlView2;
        ImageView imageView;
        boolean z18;
        int i28;
        boolean z19;
        int i29;
        boolean z20;
        int i30;
        ImageView imageView2;
        boolean z21;
        int i31 = x0.f57907c;
        int i32 = t0.f57859l;
        int i33 = t0.f57858k;
        int i34 = t0.f57857j;
        int i35 = t0.f57866s;
        int i36 = t0.f57860m;
        int i37 = t0.f57867t;
        int i38 = t0.f57856i;
        int i39 = t0.f57855h;
        int i40 = t0.f57862o;
        int i41 = t0.f57863p;
        int i42 = t0.f57861n;
        int i43 = t0.f57865r;
        int i44 = t0.f57864q;
        int i45 = t0.f57870w;
        int i46 = t0.f57869v;
        int i47 = t0.f57871x;
        this.f57566o0 = true;
        this.f57572r0 = 5000;
        this.f57576t0 = 0;
        this.f57574s0 = 200;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, b1.H, i10, 0);
            try {
                int resourceId = obtainStyledAttributes.getResourceId(b1.J, i31);
                int resourceId2 = obtainStyledAttributes.getResourceId(b1.P, i32);
                int resourceId3 = obtainStyledAttributes.getResourceId(b1.O, i33);
                int resourceId4 = obtainStyledAttributes.getResourceId(b1.N, i34);
                i35 = obtainStyledAttributes.getResourceId(b1.K, i35);
                int resourceId5 = obtainStyledAttributes.getResourceId(b1.Q, i36);
                int resourceId6 = obtainStyledAttributes.getResourceId(b1.V, i37);
                int resourceId7 = obtainStyledAttributes.getResourceId(b1.M, i38);
                int resourceId8 = obtainStyledAttributes.getResourceId(b1.L, i39);
                int resourceId9 = obtainStyledAttributes.getResourceId(b1.S, i40);
                int resourceId10 = obtainStyledAttributes.getResourceId(b1.T, i41);
                int resourceId11 = obtainStyledAttributes.getResourceId(b1.R, i42);
                int resourceId12 = obtainStyledAttributes.getResourceId(b1.f57697f0, i43);
                int resourceId13 = obtainStyledAttributes.getResourceId(b1.f57695e0, i44);
                int resourceId14 = obtainStyledAttributes.getResourceId(b1.f57701h0, i45);
                int resourceId15 = obtainStyledAttributes.getResourceId(b1.f57699g0, i46);
                int resourceId16 = obtainStyledAttributes.getResourceId(b1.f57705j0, i47);
                playerControlView = this;
                try {
                    playerControlView.f57572r0 = obtainStyledAttributes.getInt(b1.f57691c0, playerControlView.f57572r0);
                    playerControlView.f57576t0 = X(obtainStyledAttributes, playerControlView.f57576t0);
                    boolean z22 = obtainStyledAttributes.getBoolean(b1.Z, true);
                    boolean z23 = obtainStyledAttributes.getBoolean(b1.W, true);
                    boolean z24 = obtainStyledAttributes.getBoolean(b1.Y, true);
                    boolean z25 = obtainStyledAttributes.getBoolean(b1.X, true);
                    boolean z26 = obtainStyledAttributes.getBoolean(b1.f57687a0, false);
                    boolean z27 = obtainStyledAttributes.getBoolean(b1.f57689b0, false);
                    boolean z28 = obtainStyledAttributes.getBoolean(b1.f57693d0, false);
                    playerControlView.setTimeBarMinUpdateInterval(obtainStyledAttributes.getInt(b1.f57703i0, playerControlView.f57574s0));
                    boolean z29 = obtainStyledAttributes.getBoolean(b1.I, true);
                    obtainStyledAttributes.recycle();
                    i26 = resourceId13;
                    i25 = resourceId;
                    z17 = z29;
                    i13 = resourceId6;
                    i14 = resourceId7;
                    i15 = resourceId8;
                    i16 = resourceId9;
                    i17 = resourceId10;
                    i18 = resourceId11;
                    i19 = resourceId12;
                    i20 = resourceId15;
                    i11 = resourceId16;
                    z10 = z22;
                    z11 = z23;
                    z12 = z24;
                    z13 = z25;
                    z14 = z26;
                    z15 = z27;
                    z16 = z28;
                    i21 = resourceId2;
                    i22 = resourceId3;
                    i23 = resourceId5;
                    i24 = resourceId14;
                    i12 = resourceId4;
                } catch (Throwable th2) {
                    th = th2;
                    obtainStyledAttributes.recycle();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            i11 = i47;
            i12 = i34;
            playerControlView = this;
            i13 = i37;
            i14 = i38;
            i15 = i39;
            i16 = i40;
            i17 = i41;
            i18 = i42;
            i19 = i43;
            i20 = i46;
            z10 = true;
            z11 = true;
            z12 = true;
            z13 = true;
            z14 = false;
            z15 = false;
            z16 = false;
            z17 = true;
            i21 = i32;
            i22 = i33;
            i23 = i36;
            i24 = i45;
            i25 = i31;
            i26 = i44;
        }
        LayoutInflater.from(context).inflate(i25, playerControlView);
        playerControlView.setDescendantFocusability(262144);
        c cVar2 = new c();
        playerControlView.f57541c = cVar2;
        playerControlView.f57543d = new CopyOnWriteArrayList<>();
        playerControlView.H = new a0.b();
        playerControlView.I = new a0.c();
        StringBuilder sb2 = new StringBuilder();
        playerControlView.F = sb2;
        int i48 = i23;
        playerControlView.G = new Formatter(sb2, Locale.getDefault());
        playerControlView.f57578u0 = new long[0];
        playerControlView.f57580v0 = new boolean[0];
        playerControlView.f57582w0 = new long[0];
        playerControlView.f57584x0 = new boolean[0];
        playerControlView.J = new Runnable() { // from class: io.bidmachine.media3.ui.i
            @Override // java.lang.Runnable
            public final void run() {
                PlayerControlView.this.w0();
            }
        };
        playerControlView.C = (TextView) playerControlView.findViewById(v0.f57887m);
        playerControlView.D = (TextView) playerControlView.findViewById(v0.G);
        ImageView imageView3 = (ImageView) playerControlView.findViewById(v0.R);
        playerControlView.f57581w = imageView3;
        if (imageView3 != null) {
            imageView3.setOnClickListener(cVar2);
        }
        ImageView imageView4 = (ImageView) playerControlView.findViewById(v0.f57893s);
        playerControlView.f57583x = imageView4;
        b0(imageView4, new View.OnClickListener() { // from class: io.bidmachine.media3.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerControlView.this.g0(view);
            }
        });
        ImageView imageView5 = (ImageView) playerControlView.findViewById(v0.f57898x);
        playerControlView.f57585y = imageView5;
        b0(imageView5, new View.OnClickListener() { // from class: io.bidmachine.media3.ui.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PlayerControlView.this.g0(view);
            }
        });
        View findViewById = playerControlView.findViewById(v0.N);
        playerControlView.f57587z = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(cVar2);
        }
        View findViewById2 = playerControlView.findViewById(v0.F);
        playerControlView.A = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(cVar2);
        }
        View findViewById3 = playerControlView.findViewById(v0.f57877c);
        playerControlView.B = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(cVar2);
        }
        j1 j1Var = (j1) playerControlView.findViewById(v0.I);
        View findViewById4 = playerControlView.findViewById(v0.J);
        if (j1Var != null) {
            playerControlView.E = j1Var;
            i27 = i13;
            cVar = cVar2;
            playerControlView2 = playerControlView;
            imageView = imageView3;
            z18 = z13;
            i28 = i48;
            z19 = z12;
            i29 = i12;
            z20 = z10;
            i30 = i35;
        } else if (findViewById4 != null) {
            i27 = i13;
            cVar = cVar2;
            z18 = z13;
            i28 = i48;
            imageView = imageView3;
            z19 = z12;
            i29 = i12;
            z20 = z10;
            i30 = i35;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, a1.f57684a);
            defaultTimeBar.setId(v0.I);
            defaultTimeBar.setLayoutParams(findViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById4.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById4);
            viewGroup.removeView(findViewById4);
            viewGroup.addView(defaultTimeBar, indexOfChild);
            playerControlView2 = this;
            playerControlView2.E = defaultTimeBar;
        } else {
            i27 = i13;
            cVar = cVar2;
            playerControlView2 = playerControlView;
            imageView = imageView3;
            z18 = z13;
            i28 = i48;
            z19 = z12;
            i29 = i12;
            z20 = z10;
            i30 = i35;
            playerControlView2.E = null;
        }
        j1 j1Var2 = playerControlView2.E;
        c cVar3 = cVar;
        if (j1Var2 != null) {
            j1Var2.a(cVar3);
        }
        Resources resources = context.getResources();
        playerControlView2.f57539b = resources;
        ImageView imageView6 = (ImageView) playerControlView2.findViewById(v0.E);
        playerControlView2.f57565o = imageView6;
        if (imageView6 != null) {
            imageView6.setOnClickListener(cVar3);
        }
        ImageView imageView7 = (ImageView) playerControlView2.findViewById(v0.H);
        playerControlView2.f57561m = imageView7;
        if (imageView7 != null) {
            imageView7.setImageDrawable(cn.m0.a0(context, resources, i28));
            imageView7.setOnClickListener(cVar3);
        }
        ImageView imageView8 = (ImageView) playerControlView2.findViewById(v0.f57899y);
        playerControlView2.f57563n = imageView8;
        if (imageView8 != null) {
            imageView8.setImageDrawable(cn.m0.a0(context, resources, i29));
            imageView8.setOnClickListener(cVar3);
        }
        Typeface font = ResourcesCompat.getFont(context, u0.f57873a);
        ImageView imageView9 = (ImageView) playerControlView2.findViewById(v0.L);
        TextView textView = (TextView) playerControlView2.findViewById(v0.M);
        if (imageView9 != null) {
            imageView2 = imageView7;
            imageView9.setImageDrawable(cn.m0.a0(context, resources, i27));
            playerControlView2.f57569q = imageView9;
            playerControlView2.f57573s = null;
        } else {
            imageView2 = imageView7;
            if (textView != null) {
                textView.setTypeface(font);
                playerControlView2.f57573s = textView;
                playerControlView2.f57569q = textView;
            } else {
                playerControlView2.f57573s = null;
                playerControlView2.f57569q = null;
            }
        }
        View view = playerControlView2.f57569q;
        if (view != null) {
            view.setOnClickListener(cVar3);
        }
        ImageView imageView10 = (ImageView) playerControlView2.findViewById(v0.f57891q);
        TextView textView2 = (TextView) playerControlView2.findViewById(v0.f57892r);
        if (imageView10 != null) {
            imageView10.setImageDrawable(cn.m0.a0(context, resources, i30));
            playerControlView2.f57567p = imageView10;
            playerControlView2.f57571r = null;
        } else if (textView2 != null) {
            textView2.setTypeface(font);
            playerControlView2.f57571r = textView2;
            playerControlView2.f57567p = textView2;
        } else {
            playerControlView2.f57571r = null;
            playerControlView2.f57567p = null;
        }
        View view2 = playerControlView2.f57567p;
        if (view2 != null) {
            view2.setOnClickListener(cVar3);
        }
        ImageView imageView11 = (ImageView) playerControlView2.findViewById(v0.K);
        playerControlView2.f57575t = imageView11;
        if (imageView11 != null) {
            imageView11.setOnClickListener(cVar3);
        }
        ImageView imageView12 = (ImageView) playerControlView2.findViewById(v0.O);
        playerControlView2.f57577u = imageView12;
        if (imageView12 != null) {
            imageView12.setOnClickListener(cVar3);
        }
        playerControlView2.U = resources.getInteger(w0.f57903b) / 100.0f;
        playerControlView2.V = resources.getInteger(w0.f57902a) / 100.0f;
        ImageView imageView13 = (ImageView) playerControlView2.findViewById(v0.V);
        playerControlView2.f57579v = imageView13;
        if (imageView13 != null) {
            imageView13.setImageDrawable(cn.m0.a0(context, resources, i11));
            playerControlView2.o0(false, imageView13);
        }
        d0 d0Var = new d0(playerControlView2);
        playerControlView2.f57537a = d0Var;
        d0Var.X(z17);
        h hVar = new h(new String[]{resources.getString(z0.f57923h), resources.getString(z0.f57940y)}, new Drawable[]{cn.m0.a0(context, resources, t0.f57868u), cn.m0.a0(context, resources, t0.f57854g)});
        playerControlView2.f57547f = hVar;
        playerControlView2.f57559l = resources.getDimensionPixelSize(s0.f57843a);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(x0.f57909e, (ViewGroup) null);
        playerControlView2.f57545e = recyclerView;
        recyclerView.setAdapter(hVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        playerControlView2.f57557k = popupWindow;
        if (cn.m0.f3614a < 23) {
            z21 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z21 = false;
        }
        popupWindow.setOnDismissListener(cVar3);
        playerControlView2.f57588z0 = true;
        playerControlView2.f57555j = new io.bidmachine.media3.ui.e(getResources());
        playerControlView2.f57540b0 = cn.m0.a0(context, resources, i24);
        playerControlView2.f57542c0 = cn.m0.a0(context, resources, i20);
        playerControlView2.f57544d0 = resources.getString(z0.f57917b);
        playerControlView2.f57546e0 = resources.getString(z0.f57916a);
        playerControlView2.f57551h = new j();
        playerControlView2.f57553i = new b();
        playerControlView2.f57549g = new e(resources.getStringArray(q0.f57839a), A0);
        playerControlView2.K = cn.m0.a0(context, resources, i21);
        playerControlView2.L = cn.m0.a0(context, resources, i22);
        playerControlView2.f57548f0 = cn.m0.a0(context, resources, i14);
        playerControlView2.f57550g0 = cn.m0.a0(context, resources, i15);
        playerControlView2.M = cn.m0.a0(context, resources, i16);
        playerControlView2.N = cn.m0.a0(context, resources, i17);
        playerControlView2.O = cn.m0.a0(context, resources, i18);
        playerControlView2.S = cn.m0.a0(context, resources, i19);
        playerControlView2.T = cn.m0.a0(context, resources, i26);
        playerControlView2.f57552h0 = resources.getString(z0.f57919d);
        playerControlView2.f57554i0 = resources.getString(z0.f57918c);
        playerControlView2.P = resources.getString(z0.f57925j);
        playerControlView2.Q = resources.getString(z0.f57926k);
        playerControlView2.R = resources.getString(z0.f57924i);
        playerControlView2.W = resources.getString(z0.f57929n);
        playerControlView2.f57538a0 = resources.getString(z0.f57928m);
        d0Var.Y((ViewGroup) playerControlView2.findViewById(v0.f57879e), true);
        d0Var.Y(playerControlView2.f57567p, z11);
        d0Var.Y(playerControlView2.f57569q, z20);
        d0Var.Y(imageView2, z19);
        d0Var.Y(imageView8, z18);
        d0Var.Y(imageView12, z14);
        d0Var.Y(imageView, z15);
        d0Var.Y(imageView13, z16);
        d0Var.Y(imageView11, playerControlView2.f57576t0 != 0 ? true : z21);
        playerControlView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: io.bidmachine.media3.ui.k
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view3, int i49, int i50, int i51, int i52, int i53, int i54, int i55, int i56) {
                PlayerControlView.this.h0(view3, i49, i50, i51, i52, i53, i54, i55, i56);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public final class j extends l {
        private j() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(View view) {
            if (PlayerControlView.this.f57556j0 != null && PlayerControlView.this.f57556j0.g(29)) {
                PlayerControlView.this.f57556j0.E(PlayerControlView.this.f57556j0.h().a().G(3).K(-3).M(null).O(0).F());
                PlayerControlView.this.f57557k.dismiss();
            }
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public void onBindViewHolder(i iVar, int i10) {
            int i11;
            super.onBindViewHolder(iVar, i10);
            if (i10 > 0) {
                View view = iVar.f57604d;
                if (this.f57609i.get(i10 - 1).a()) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                view.setVisibility(i11);
            }
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.l
        public void e(i iVar) {
            boolean z10;
            iVar.f57603c.setText(z0.f57939x);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                if (i11 < this.f57609i.size()) {
                    if (this.f57609i.get(i11).a()) {
                        z10 = false;
                        break;
                    }
                    i11++;
                } else {
                    z10 = true;
                    break;
                }
            }
            View view = iVar.f57604d;
            if (!z10) {
                i10 = 4;
            }
            view.setVisibility(i10);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.bidmachine.media3.ui.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PlayerControlView.j.this.j(view2);
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
            if (PlayerControlView.this.f57581w != null) {
                ImageView imageView = PlayerControlView.this.f57581w;
                PlayerControlView playerControlView = PlayerControlView.this;
                imageView.setImageDrawable(z10 ? playerControlView.f57540b0 : playerControlView.f57542c0);
                PlayerControlView.this.f57581w.setContentDescription(z10 ? PlayerControlView.this.f57544d0 : PlayerControlView.this.f57546e0);
            }
            this.f57609i = list;
        }

        @Override // io.bidmachine.media3.ui.PlayerControlView.l
        public void g(String str) {
        }
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }
}
