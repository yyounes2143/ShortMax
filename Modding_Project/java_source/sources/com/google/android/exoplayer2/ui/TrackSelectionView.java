package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f18777a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f18778b;

    /* renamed from: c  reason: collision with root package name */
    private final CheckedTextView f18779c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckedTextView f18780d;

    /* renamed from: e  reason: collision with root package name */
    private final b f18781e;

    /* renamed from: f  reason: collision with root package name */
    private final List<v1.a> f18782f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<n6.u, z6.d0> f18783g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f18784h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f18785i;

    /* renamed from: j  reason: collision with root package name */
    private z0 f18786j;

    /* renamed from: k  reason: collision with root package name */
    private CheckedTextView[][] f18787k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f18788l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Comparator<c> f18789m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.c(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final v1.a f18791a;

        /* renamed from: b  reason: collision with root package name */
        public final int f18792b;

        public c(v1.a aVar, int i10) {
            this.f18791a = aVar;
            this.f18792b = i10;
        }

        public com.google.android.exoplayer2.v0 a() {
            return this.f18791a.c(this.f18792b);
        }
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public static Map<n6.u, z6.d0> b(Map<n6.u, z6.d0> map, List<v1.a> list, boolean z10) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < list.size(); i10++) {
            z6.d0 d0Var = map.get(list.get(i10).b());
            if (d0Var != null && (z10 || hashMap.isEmpty())) {
                hashMap.put(d0Var.f71363a, d0Var);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        if (view == this.f18779c) {
            e();
        } else if (view == this.f18780d) {
            d();
        } else {
            f(view);
        }
        i();
    }

    private void d() {
        this.f18788l = false;
        this.f18783g.clear();
    }

    private void e() {
        this.f18788l = true;
        this.f18783g.clear();
    }

    private void f(View view) {
        boolean z10 = false;
        this.f18788l = false;
        c cVar = (c) b7.a.e(view.getTag());
        n6.u b10 = cVar.f18791a.b();
        int i10 = cVar.f18792b;
        z6.d0 d0Var = this.f18783g.get(b10);
        if (d0Var == null) {
            if (!this.f18785i && this.f18783g.size() > 0) {
                this.f18783g.clear();
            }
            this.f18783g.put(b10, new z6.d0(b10, ImmutableList.B(Integer.valueOf(i10))));
            return;
        }
        ArrayList arrayList = new ArrayList(d0Var.f71364b);
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean g10 = g(cVar.f18791a);
        z10 = (g10 || h()) ? true : true;
        if (isChecked && z10) {
            arrayList.remove(Integer.valueOf(i10));
            if (arrayList.isEmpty()) {
                this.f18783g.remove(b10);
            } else {
                this.f18783g.put(b10, new z6.d0(b10, arrayList));
            }
        } else if (!isChecked) {
            if (g10) {
                arrayList.add(Integer.valueOf(i10));
                this.f18783g.put(b10, new z6.d0(b10, arrayList));
                return;
            }
            this.f18783g.put(b10, new z6.d0(b10, ImmutableList.B(Integer.valueOf(i10))));
        }
    }

    private boolean g(v1.a aVar) {
        if (this.f18784h && aVar.e()) {
            return true;
        }
        return false;
    }

    private boolean h() {
        if (this.f18785i && this.f18782f.size() > 1) {
            return true;
        }
        return false;
    }

    private void i() {
        boolean z10;
        this.f18779c.setChecked(this.f18788l);
        CheckedTextView checkedTextView = this.f18780d;
        if (!this.f18788l && this.f18783g.size() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        checkedTextView.setChecked(z10);
        for (int i10 = 0; i10 < this.f18787k.length; i10++) {
            z6.d0 d0Var = this.f18783g.get(this.f18782f.get(i10).b());
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f18787k[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (d0Var != null) {
                        this.f18787k[i10][i11].setChecked(d0Var.f71364b.contains(Integer.valueOf(((c) b7.a.e(checkedTextViewArr[i11].getTag())).f18792b)));
                    } else {
                        checkedTextViewArr[i11].setChecked(false);
                    }
                    i11++;
                }
            }
        }
    }

    private void j() {
        int i10;
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f18782f.isEmpty()) {
            this.f18779c.setEnabled(false);
            this.f18780d.setEnabled(false);
            return;
        }
        this.f18779c.setEnabled(true);
        this.f18780d.setEnabled(true);
        this.f18787k = new CheckedTextView[this.f18782f.size()];
        boolean h10 = h();
        for (int i11 = 0; i11 < this.f18782f.size(); i11++) {
            v1.a aVar = this.f18782f.get(i11);
            boolean g10 = g(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f18787k;
            int i12 = aVar.f19202a;
            checkedTextViewArr[i11] = new CheckedTextView[i12];
            c[] cVarArr = new c[i12];
            for (int i13 = 0; i13 < aVar.f19202a; i13++) {
                cVarArr[i13] = new c(aVar, i13);
            }
            Comparator<c> comparator = this.f18789m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i14 = 0; i14 < i12; i14++) {
                if (i14 == 0) {
                    addView(this.f18778b.inflate(q.f18890a, (ViewGroup) this, false));
                }
                if (!g10 && !h10) {
                    i10 = 17367055;
                } else {
                    i10 = 17367056;
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f18778b.inflate(i10, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f18777a);
                checkedTextView.setText(this.f18786j.a(cVarArr[i14].a()));
                checkedTextView.setTag(cVarArr[i14]);
                if (aVar.h(i14)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f18781e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f18787k[i11][i14] = checkedTextView;
                addView(checkedTextView);
            }
        }
        i();
    }

    public boolean getIsDisabled() {
        return this.f18788l;
    }

    public Map<n6.u, z6.d0> getOverrides() {
        return this.f18783g;
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f18784h != z10) {
            this.f18784h = z10;
            j();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f18785i != z10) {
            this.f18785i = z10;
            if (!z10 && this.f18783g.size() > 1) {
                Map<n6.u, z6.d0> b10 = b(this.f18783g, this.f18782f, false);
                this.f18783g.clear();
                this.f18783g.putAll(b10);
            }
            j();
        }
    }

    public void setShowDisableOption(boolean z10) {
        int i10;
        CheckedTextView checkedTextView = this.f18779c;
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        checkedTextView.setVisibility(i10);
    }

    public void setTrackNameProvider(z0 z0Var) {
        this.f18786j = (z0) b7.a.e(z0Var);
        j();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f18777a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f18778b = from;
        b bVar = new b();
        this.f18781e = bVar;
        this.f18786j = new f(getResources());
        this.f18782f = new ArrayList();
        this.f18783g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f18779c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(s.f18925x);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(q.f18890a, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f18780d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(s.f18924w);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
