package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
/* compiled from: SubstituteLoggerFactory.java */
/* loaded from: classes8.dex */
public class c implements ILoggerFactory {

    /* renamed from: a  reason: collision with root package name */
    boolean f64381a = false;

    /* renamed from: b  reason: collision with root package name */
    final Map<String, b> f64382b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    final LinkedBlockingQueue<eu.c> f64383c = new LinkedBlockingQueue<>();

    @Override // org.slf4j.ILoggerFactory
    public synchronized du.a a(String str) {
        b bVar;
        bVar = this.f64382b.get(str);
        if (bVar == null) {
            bVar = new b(str, this.f64383c, this.f64381a);
            this.f64382b.put(str, bVar);
        }
        return bVar;
    }

    public void b() {
        this.f64382b.clear();
        this.f64383c.clear();
    }

    public LinkedBlockingQueue<eu.c> c() {
        return this.f64383c;
    }

    public List<b> d() {
        return new ArrayList(this.f64382b.values());
    }

    public void e() {
        this.f64381a = true;
    }
}
