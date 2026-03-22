package com.applovin.impl;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class n2 {

    /* renamed from: a  reason: collision with root package name */
    public TextView f9006a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f9007b;

    /* renamed from: c  reason: collision with root package name */
    public ImageView f9008c;

    /* renamed from: d  reason: collision with root package name */
    public ImageView f9009d;

    /* renamed from: e  reason: collision with root package name */
    private o2 f9010e;

    /* renamed from: f  reason: collision with root package name */
    private int f9011f;

    public void a(int i10) {
        this.f9011f = i10;
    }

    public o2 b() {
        return this.f9010e;
    }

    public int a() {
        return this.f9011f;
    }

    public void a(o2 o2Var) {
        this.f9010e = o2Var;
        this.f9006a.setText(o2Var.k());
        this.f9006a.setTextColor(o2Var.l());
        if (this.f9007b != null) {
            if (!TextUtils.isEmpty(o2Var.f())) {
                this.f9007b.setTypeface(null, 0);
                this.f9007b.setVisibility(0);
                this.f9007b.setText(o2Var.f());
                this.f9007b.setTextColor(o2Var.g());
                if (o2Var.p()) {
                    this.f9007b.setTypeface(null, 1);
                }
            } else {
                this.f9007b.setVisibility(8);
            }
        }
        if (this.f9008c != null) {
            if (o2Var.h() > 0) {
                this.f9008c.setImageResource(o2Var.h());
                this.f9008c.setColorFilter(o2Var.i());
                this.f9008c.setVisibility(0);
            } else {
                this.f9008c.setVisibility(8);
            }
        }
        if (this.f9009d != null) {
            if (o2Var.d() > 0) {
                this.f9009d.setImageResource(o2Var.d());
                this.f9009d.setColorFilter(o2Var.e());
                this.f9009d.setVisibility(0);
                return;
            }
            this.f9009d.setVisibility(8);
        }
    }
}
