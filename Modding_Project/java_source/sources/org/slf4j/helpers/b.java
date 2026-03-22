package org.slf4j.helpers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;
/* compiled from: SubstituteLogger.java */
/* loaded from: classes8.dex */
public class b implements du.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f64374a;

    /* renamed from: b  reason: collision with root package name */
    private volatile du.a f64375b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f64376c;

    /* renamed from: d  reason: collision with root package name */
    private Method f64377d;

    /* renamed from: e  reason: collision with root package name */
    private eu.a f64378e;

    /* renamed from: f  reason: collision with root package name */
    private Queue<eu.c> f64379f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f64380g;

    public b(String str, Queue<eu.c> queue, boolean z10) {
        this.f64374a = str;
        this.f64379f = queue;
        this.f64380g = z10;
    }

    private du.a c() {
        if (this.f64378e == null) {
            this.f64378e = new eu.a(this, this.f64379f);
        }
        return this.f64378e;
    }

    du.a a() {
        if (this.f64375b != null) {
            return this.f64375b;
        }
        if (this.f64380g) {
            return NOPLogger.f64372b;
        }
        return c();
    }

    @Override // du.a
    public void b(String str) {
        a().b(str);
    }

    @Override // du.a
    public void d(String str) {
        a().d(str);
    }

    public boolean e() {
        Boolean bool = this.f64376c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f64377d = this.f64375b.getClass().getMethod("log", eu.b.class);
            this.f64376c = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.f64376c = Boolean.FALSE;
        }
        return this.f64376c.booleanValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.f64374a.equals(((b) obj).f64374a)) {
            return true;
        }
        return false;
    }

    public boolean f() {
        return this.f64375b instanceof NOPLogger;
    }

    public boolean g() {
        if (this.f64375b == null) {
            return true;
        }
        return false;
    }

    @Override // du.a
    public String getName() {
        return this.f64374a;
    }

    public void h(eu.b bVar) {
        if (e()) {
            try {
                this.f64377d.invoke(this.f64375b, bVar);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public int hashCode() {
        return this.f64374a.hashCode();
    }

    public void i(du.a aVar) {
        this.f64375b = aVar;
    }
}
