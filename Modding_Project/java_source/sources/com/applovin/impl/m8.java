package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class m8 {

    /* renamed from: f  reason: collision with root package name */
    public static final m8 f8481f = new m8();

    /* renamed from: a  reason: collision with root package name */
    private final m8 f8482a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8483b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f8484c;

    /* renamed from: d  reason: collision with root package name */
    protected String f8485d;

    /* renamed from: e  reason: collision with root package name */
    protected final List f8486e;

    public m8(String str, Map map, m8 m8Var) {
        this.f8482a = m8Var;
        this.f8483b = str;
        this.f8484c = Collections.unmodifiableMap(map);
        this.f8486e = new ArrayList();
    }

    public Map a() {
        return this.f8484c;
    }

    public List b() {
        return Collections.unmodifiableList(this.f8486e);
    }

    public String c() {
        return this.f8483b;
    }

    public String d() {
        return this.f8485d;
    }

    public String toString() {
        return "XmlNode{elementName='" + this.f8483b + "', text='" + this.f8485d + "', attributes=" + this.f8484c + '}';
    }

    public List a(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList(this.f8486e.size());
            for (m8 m8Var : this.f8486e) {
                if (str.equalsIgnoreCase(m8Var.c())) {
                    arrayList.add(m8Var);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public m8 b(String str) {
        if (str != null) {
            if (this.f8486e.size() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this);
                while (!arrayList.isEmpty()) {
                    m8 m8Var = (m8) arrayList.get(0);
                    arrayList.remove(0);
                    if (str.equalsIgnoreCase(m8Var.c())) {
                        return m8Var;
                    }
                    arrayList.addAll(m8Var.b());
                }
                return null;
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    public m8 c(String str) {
        if (str != null) {
            for (m8 m8Var : this.f8486e) {
                if (str.equalsIgnoreCase(m8Var.c())) {
                    return m8Var;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    private m8() {
        this.f8482a = null;
        this.f8483b = "";
        this.f8484c = Collections.emptyMap();
        this.f8485d = "";
        this.f8486e = Collections.emptyList();
    }
}
