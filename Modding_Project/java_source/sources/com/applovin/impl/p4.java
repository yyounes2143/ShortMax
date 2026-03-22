package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import com.applovin.impl.o2;
import com.applovin.impl.p0;
/* loaded from: classes2.dex */
public class p4 extends o2 {

    /* renamed from: n  reason: collision with root package name */
    private final p0.a f9211n;

    /* renamed from: o  reason: collision with root package name */
    private final Context f9212o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f9213p;

    public p4(p0.a aVar, boolean z10, Context context) {
        super(o2.c.RIGHT_DETAIL);
        this.f9211n = aVar;
        this.f9212o = context;
        this.f9076c = new SpannedString(aVar.a());
        this.f9213p = z10;
    }

    @Override // com.applovin.impl.o2
    public SpannedString f() {
        return new SpannedString(this.f9211n.a(this.f9212o));
    }

    @Override // com.applovin.impl.o2
    public boolean o() {
        return false;
    }

    @Override // com.applovin.impl.o2
    public boolean p() {
        Boolean b10 = this.f9211n.b(this.f9212o);
        if (b10 != null) {
            return b10.equals(Boolean.valueOf(this.f9213p));
        }
        return false;
    }
}
