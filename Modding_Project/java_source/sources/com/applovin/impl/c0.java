package com.applovin.impl;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class c0 implements Callable {

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.k f7620a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f7621b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.applovin.impl.sdk.o f7622c;

    /* renamed from: e  reason: collision with root package name */
    protected final AtomicBoolean f7624e = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final Context f7623d = com.applovin.impl.sdk.k.o();

    public c0(String str, com.applovin.impl.sdk.k kVar) {
        this.f7621b = str;
        this.f7620a = kVar;
        this.f7622c = kVar.O();
    }

    public Context a() {
        return this.f7623d;
    }

    public void a(boolean z10) {
        this.f7624e.set(z10);
    }
}
