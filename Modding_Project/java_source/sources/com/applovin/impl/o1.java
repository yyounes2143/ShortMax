package com.applovin.impl;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import com.applovin.impl.o2;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public class o1 extends o2 {

    /* renamed from: n  reason: collision with root package name */
    private final p1 f9072n;

    /* renamed from: o  reason: collision with root package name */
    private final Context f9073o;

    public o1(p1 p1Var, Context context) {
        super(o2.c.DETAIL);
        this.f9072n = p1Var;
        this.f9073o = context;
        this.f9076c = r();
        this.f9077d = q();
    }

    private SpannedString q() {
        return new SpannedString("Displayed " + k7.a(this.f9072n.b(), true));
    }

    private SpannedString r() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.f9072n.c());
        spannableStringBuilder.append((CharSequence) " - ");
        spannableStringBuilder.append((CharSequence) this.f9072n.d());
        return new SpannedString(spannableStringBuilder);
    }

    @Override // com.applovin.impl.o2
    public int d() {
        if (o()) {
            return R.drawable.applovin_ic_disclosure_arrow;
        }
        return super.h();
    }

    @Override // com.applovin.impl.o2
    public int e() {
        return m0.a(R.color.applovin_sdk_disclosureButtonColor, this.f9073o);
    }

    @Override // com.applovin.impl.o2
    public boolean o() {
        return true;
    }
}
