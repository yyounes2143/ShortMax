package com.applovin.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class p2 extends BaseAdapter implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    protected Context f9196a;

    /* renamed from: b  reason: collision with root package name */
    private List f9197b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private Map f9198c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private a f9199d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(i2 i2Var, o2 o2Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public p2(Context context) {
        this.f9196a = context.getApplicationContext();
    }

    protected o2 a() {
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    protected abstract int b();

    @Override // android.widget.Adapter
    /* renamed from: b */
    public o2 getItem(int i10) {
        return (o2) this.f9197b.get(i10);
    }

    protected abstract List c(int i10);

    public void c() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.ad
            @Override // java.lang.Runnable
            public final void run() {
                p2.this.notifyDataSetChanged();
            }
        });
    }

    protected abstract int d(int i10);

    protected abstract o2 e(int i10);

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f9197b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i10) {
        return getItem(i10).m();
    }

    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        n2 n2Var;
        o2 item = getItem(i10);
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(item.j(), viewGroup, false);
            n2Var = new n2();
            n2Var.f9006a = (TextView) view.findViewById(16908308);
            n2Var.f9007b = (TextView) view.findViewById(16908309);
            n2Var.f9008c = (ImageView) view.findViewById(R.id.imageView);
            n2Var.f9009d = (ImageView) view.findViewById(R.id.detailImageView);
            view.setTag(n2Var);
            view.setOnClickListener(this);
            view.setBackground(a(view));
        } else {
            n2Var = (n2) view.getTag();
        }
        n2Var.a(i10);
        n2Var.a(item);
        view.setEnabled(item.o());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return o2.n();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i10) {
        return getItem(i10).o();
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        int i10;
        this.f9197b = new ArrayList();
        int b10 = b();
        this.f9198c = new HashMap(b10);
        o2 a10 = a();
        if (a10 != null) {
            this.f9197b.add(a10);
            i10 = 1;
        } else {
            i10 = 0;
        }
        for (int i11 = 0; i11 < b10; i11++) {
            int d10 = d(i11);
            if (d10 != 0) {
                this.f9197b.add(e(i11));
                this.f9197b.addAll(c(i11));
                this.f9198c.put(Integer.valueOf(i11), Integer.valueOf(i10));
                i10 += d10 + 1;
            }
        }
        this.f9197b.add(new t4(""));
        super.notifyDataSetChanged();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        n2 n2Var = (n2) view.getTag();
        o2 b10 = n2Var.b();
        i2 a10 = a(n2Var.a());
        a aVar = this.f9199d;
        if (aVar != null && a10 != null) {
            aVar.a(a10, b10);
        }
    }

    public void a(a aVar) {
        this.f9199d = aVar;
    }

    private i2 a(int i10) {
        for (int i11 = 0; i11 < b(); i11++) {
            Integer num = (Integer) this.f9198c.get(Integer.valueOf(i11));
            if (num != null) {
                if (i10 <= num.intValue() + d(i11)) {
                    return new i2(i11, i10 - (num.intValue() + 1));
                }
            }
        }
        return null;
    }

    private Drawable a(View view) {
        Drawable background = view.getBackground();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(m0.a(R.color.applovin_sdk_highlightListItemColor, this.f9196a));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable);
        stateListDrawable.addState(new int[0], background);
        return stateListDrawable;
    }
}
