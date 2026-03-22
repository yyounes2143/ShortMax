package com.mbridge.msdk.mbsignalcommon.mapping;
/* compiled from: Mapping.java */
/* loaded from: classes4.dex */
public class a extends Throwable {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f28197a;

    /* renamed from: b  reason: collision with root package name */
    private String f28198b;

    public a(String str) {
        super(str);
    }

    public void a(Class<?> cls) {
        this.f28197a = cls;
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (getCause() != null) {
            return getClass().getName() + ": " + getCause();
        }
        return super.toString();
    }

    public a(Exception exc) {
        super(exc);
    }

    public void a(String str) {
        this.f28198b = str;
    }
}
