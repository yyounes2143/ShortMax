package io.bidmachine.media3.ui;

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
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zm.e0;
/* loaded from: classes8.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f57651a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f57652b;

    /* renamed from: c  reason: collision with root package name */
    private final CheckedTextView f57653c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckedTextView f57654d;

    /* renamed from: e  reason: collision with root package name */
    private final b f57655e;

    /* renamed from: f  reason: collision with root package name */
    private final List<e0.a> f57656f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<zm.b0, zm.c0> f57657g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f57658h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f57659i;

    /* renamed from: j  reason: collision with root package name */
    private k1 f57660j;

    /* renamed from: k  reason: collision with root package name */
    private CheckedTextView[][] f57661k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f57662l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Comparator<c> f57663m;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.c(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final e0.a f57665a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57666b;

        public c(e0.a aVar, int i10) {
            this.f57665a = aVar;
            this.f57666b = i10;
        }

        public io.bidmachine.media3.common.a a() {
            return this.f57665a.b(this.f57666b);
        }
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public static Map<zm.b0, zm.c0> b(Map<zm.b0, zm.c0> map, List<e0.a> list, boolean z10) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < list.size(); i10++) {
            zm.c0 c0Var = map.get(list.get(i10).a());
            if (c0Var != null && (z10 || hashMap.isEmpty())) {
                hashMap.put(c0Var.f71834a, c0Var);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        if (view == this.f57653c) {
            e();
        } else if (view == this.f57654d) {
            d();
        } else {
            f(view);
        }
        i();
    }

    private void d() {
        this.f57662l = false;
        this.f57657g.clear();
    }

    private void e() {
        this.f57662l = true;
        this.f57657g.clear();
    }

    private void f(View view) {
        boolean z10 = false;
        this.f57662l = false;
        c cVar = (c) cn.a.e(view.getTag());
        zm.b0 a10 = cVar.f57665a.a();
        int i10 = cVar.f57666b;
        zm.c0 c0Var = this.f57657g.get(a10);
        if (c0Var == null) {
            if (!this.f57659i && this.f57657g.size() > 0) {
                this.f57657g.clear();
            }
            this.f57657g.put(a10, new zm.c0(a10, ImmutableList.B(Integer.valueOf(i10))));
            return;
        }
        ArrayList arrayList = new ArrayList(c0Var.f71835b);
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean g10 = g(cVar.f57665a);
        z10 = (g10 || h()) ? true : true;
        if (isChecked && z10) {
            arrayList.remove(Integer.valueOf(i10));
            if (arrayList.isEmpty()) {
                this.f57657g.remove(a10);
            } else {
                this.f57657g.put(a10, new zm.c0(a10, arrayList));
            }
        } else if (!isChecked) {
            if (g10) {
                arrayList.add(Integer.valueOf(i10));
                this.f57657g.put(a10, new zm.c0(a10, arrayList));
                return;
            }
            this.f57657g.put(a10, new zm.c0(a10, ImmutableList.B(Integer.valueOf(i10))));
        }
    }

    private boolean g(e0.a aVar) {
        if (this.f57658h && aVar.d()) {
            return true;
        }
        return false;
    }

    private boolean h() {
        if (this.f57659i && this.f57656f.size() > 1) {
            return true;
        }
        return false;
    }

    private void i() {
        boolean z10;
        this.f57653c.setChecked(this.f57662l);
        CheckedTextView checkedTextView = this.f57654d;
        if (!this.f57662l && this.f57657g.size() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        checkedTextView.setChecked(z10);
        for (int i10 = 0; i10 < this.f57661k.length; i10++) {
            zm.c0 c0Var = this.f57657g.get(this.f57656f.get(i10).a());
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f57661k[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (c0Var != null) {
                        this.f57661k[i10][i11].setChecked(c0Var.f71835b.contains(Integer.valueOf(((c) cn.a.e(checkedTextViewArr[i11].getTag())).f57666b)));
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
        if (this.f57656f.isEmpty()) {
            this.f57653c.setEnabled(false);
            this.f57654d.setEnabled(false);
            return;
        }
        this.f57653c.setEnabled(true);
        this.f57654d.setEnabled(true);
        this.f57661k = new CheckedTextView[this.f57656f.size()];
        boolean h10 = h();
        for (int i11 = 0; i11 < this.f57656f.size(); i11++) {
            e0.a aVar = this.f57656f.get(i11);
            boolean g10 = g(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f57661k;
            int i12 = aVar.f71923a;
            checkedTextViewArr[i11] = new CheckedTextView[i12];
            c[] cVarArr = new c[i12];
            for (int i13 = 0; i13 < aVar.f71923a; i13++) {
                cVarArr[i13] = new c(aVar, i13);
            }
            Comparator<c> comparator = this.f57663m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i14 = 0; i14 < i12; i14++) {
                if (i14 == 0) {
                    addView(this.f57652b.inflate(x0.f57906b, (ViewGroup) this, false));
                }
                if (!g10 && !h10) {
                    i10 = 17367055;
                } else {
                    i10 = 17367056;
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f57652b.inflate(i10, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f57651a);
                checkedTextView.setText(this.f57660j.a(cVarArr[i14].a()));
                checkedTextView.setTag(cVarArr[i14]);
                if (aVar.h(i14)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f57655e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f57661k[i11][i14] = checkedTextView;
                addView(checkedTextView);
            }
        }
        i();
    }

    public boolean getIsDisabled() {
        return this.f57662l;
    }

    public Map<zm.b0, zm.c0> getOverrides() {
        return this.f57657g;
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f57658h != z10) {
            this.f57658h = z10;
            j();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f57659i != z10) {
            this.f57659i = z10;
            if (!z10 && this.f57657g.size() > 1) {
                Map<zm.b0, zm.c0> b10 = b(this.f57657g, this.f57656f, false);
                this.f57657g.clear();
                this.f57657g.putAll(b10);
            }
            j();
        }
    }

    public void setShowDisableOption(boolean z10) {
        int i10;
        CheckedTextView checkedTextView = this.f57653c;
        if (z10) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        checkedTextView.setVisibility(i10);
    }

    public void setTrackNameProvider(k1 k1Var) {
        this.f57660j = (k1) cn.a.e(k1Var);
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
        this.f57651a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f57652b = from;
        b bVar = new b();
        this.f57655e = bVar;
        this.f57660j = new e(getResources());
        this.f57656f = new ArrayList();
        this.f57657g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f57653c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(z0.f57939x);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(x0.f57906b, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f57654d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(z0.f57938w);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
