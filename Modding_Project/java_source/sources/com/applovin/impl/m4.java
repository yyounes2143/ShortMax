package com.applovin.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public class m4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8472a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8473b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8474c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(String str, String str2, Context context) {
        this.f8472a = str.replace("android.permission.", "");
        this.f8473b = str2;
        this.f8474c = o0.a(str, context);
    }

    public String a() {
        return this.f8473b;
    }

    public String b() {
        return this.f8472a;
    }

    public boolean c() {
        return this.f8474c;
    }
}
