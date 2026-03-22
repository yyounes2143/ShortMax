package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.mediation.MaxAdFormat;
/* loaded from: classes2.dex */
public class q3 {

    /* renamed from: a  reason: collision with root package name */
    private a f9322a;

    /* renamed from: b  reason: collision with root package name */
    private String f9323b;

    /* loaded from: classes2.dex */
    public enum a {
        AD_UNIT_ID,
        AD_FORMAT,
        AD
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public q3(a aVar, String str) {
        this.f9322a = aVar;
        this.f9323b = str;
    }

    public a a() {
        return this.f9322a;
    }

    public String b() {
        return this.f9323b;
    }

    public static q3 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new q3(a.AD_UNIT_ID, str);
    }

    public static q3 a(MaxAdFormat maxAdFormat) {
        String label = maxAdFormat.getLabel();
        if (TextUtils.isEmpty(label)) {
            return null;
        }
        return new q3(a.AD_FORMAT, label);
    }

    public static q3 a(v2 v2Var) {
        String P = v2Var.P();
        MaxAdFormat format = v2Var.getFormat();
        if (TextUtils.isEmpty(P) || format == null) {
            return null;
        }
        return new n3(new g3(P, format));
    }
}
